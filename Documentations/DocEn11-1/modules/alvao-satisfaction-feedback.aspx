<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Satisfaction Feedback</h1>
    <p>This module contains a satisfaction questionnaire for service requesters to complete after or during the resolution of each of their requests.</p>

    <h2>Technical requirements</h2>
    <ul>
        <li>ALVAO Service Desk</li>
    </ul>

    <h2>Installing and activating the module</h2>

    <p>
        The module is part of the ALVAO Service Desk installation. The module must be activated with an activation key, which you can obtain from your Alvao system supplier. In the application <strong>. 
            ALVAO WebApp - Administration - License</strong> select the <strong>Insert Activation Key</strong> and enter the activation key.
    </p>

    <h2>Satisfaction Questionnaire</h2>

    <ol>
        <li>In <strong>ALVAO WebApp - Administration - Service Desk</strong>, navigate to the <strong>Services</strong> page.</li>
        <li>In the service tree, select the service on which you want to enable the questionnaire and use the <strong>Edit - Properties</strong> command.</li>
        <li>In the <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/extended">Extended</a>, enable the <strong>Use satisfaction survey</strong> option.</li>
    </ol>

    <p>This adds an element to the standard notifications to the requester to evaluate overall satisfaction. The questionnaire will also be accessible to requesters throughout the resolution of the request in the ALVAO WebApp in the command menu on the request page.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The values that the requester fills in the questionnaire are stored as normal request entries.
    </div>

    <h2>Satisfaction Survey Items</h2>
    <p>The standard satisfaction questionnaire contains the following items:</p>
    <ul>
        <li>Total satisfaction</li>
        <li>Speed of resolution</li>
        <li>Responsiveness</li>
        <li>Professionalism</li>
    </ul>

    <p>Response options for overall satisfaction:</p>

    <table>
        <thead>
            <tr>
                <th>Text value</th>
                <th>Numeric value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Satisfied</td>
                <td>1</td>
            </tr>
            <tr>
                <td>Dissatisfied</td>
                <td>4</td>
            </tr>
        </tbody>
    </table>

    <p>Other standard items have the following response options:</p>

    <table>
        <thead>
            <tr>
                <th>Text value</th>
                <th>Numeric value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Satisfied</td>
                <td>1</td>
            </tr>
            <tr>
                <td>Partially satisfied</td>
                <td>2</td>
            </tr>
            <tr>
                <td>Satisfied</td>
                <td>3</td>
            </tr>
            <tr>
                <td>Satisfied</td>
                <td>4</td>
            </tr>
        </tbody>
    </table>

    <p>The textual value is displayed in the requirements table. The numerical value is used in the satisfaction analysis.</p>

    <h2 id="special">Create your own questionnaire</h2>

    <p>Copy the <em>Custom/Templates/Feedback</em> folder to the <em>Custom/</em> folder. You can rename the included <em>Feedback.cshtml</em> and <em>Feedback.cs</em> files, but name both files (.cshtml and .cs) the same. You can also rename the folder name.</p>
    <ol>
        <li>In the .cs file, at the beginning of the file after the word <em>namespace</em>
            include the namespace naming Alvao.&#8203;ServiceDesk.&#8203;ServiceDeskWebApp.&#8203;Controllers.&#8203;&lt;the name of the satisfaction survey folder&gt;.</li>
        <li>In the .cs file at the beginning of the file at the keyword <em>class</em>
            change the name to <em>&lt;filename&gt;Controller</em> if you have renamed the file.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        All form names used must be unique.
    </div>

    <p>Enable anonymous access to the new questionnaire by adding the following section to the web.config file:</p>
    <div class="wide">
        <pre translate="no">
&lt;location path=&quot;Custom/&lt;folder name with satisfaction questionnaire&gt;/Feedback&quot;
    &lt;system.web&gt;
        &lt;authorization&gt; 
            &lt;allow users=&quot;*&gt; 
        &lt;/authorization&gt; 
    &lt;/system.web&gt;
&lt;/location&gt;
&lt;location path=&quot;Custom/&lt;folder name with satisfaction questionnaire&gt;/FeedbackAccepted&quot; 
    &lt;system.web&gt; 
        &lt;authorization&gt; 
            &lt;allow users=&quot;*&quot;/&gt; 
        &lt;/authorization&gt;
    &lt;/system.web&gt;
&lt;/location&gt;</pre>
    </div>

    <p>
        The word <em>Feedback</em>
        replace it with the name of your questionnaire.
    </p>

    <h3>Modifying the questionnaire</h3>

    <p>
        In a custom questionnaire in a .cshtml file (usually <em>Custom/Feedback/Feedback.cshtml</em>) find the HTML div tag with id <em>CustomFormContent</em>.<br />
        Here are the <em>ShowColumns</em> and <em>RequiredColumns</em> lists.
    </p>
    <ul>
        <li><em>ShowColumns</em> is the list of items that will be displayed.</li>
        <li><em>RequiredColumns</em> specifies the items that must be filled in to submit the form. These columns must also be in the <em>ShowColumns</em> attribute. </li>
    </ul>
    <p>
        The limitation of columns that can be displayed is given by the <a href="../modules/alvao-sd-custom-apps/columns-control">alvao:ColumnsControl</a>.
    </p>
    <p>
        You can add new columns and their values in <strong>ALVAO WebApp - Manage -
    Custom fields</strong>.
    </p>

    <p>
        Other modifications can be made, similar to creating <a href="../modules/alvao-sd-custom-apps/custom-form-template">custom forms to submit a new request</a>.
    </p>

    <p>To store values in custom fields that are not displayed and managed by the ColumnsControl control, use the following structure in the Process(...) method implemented in the .cs file of the custom questionnaire:</p>
    <div class="wide">
        <span class="console">
            <pre translate="no">
int ticketId = ((ColumnsControl)Model.ColumnsControl0).TicketId;
var customCols = tHdTicket.Get(ticketId).CustomColumns();
customCols.Values.Single(cc => cc.Column.sColumn == &quot;feedbackImprovement&quot;).Value = Model.NametKeImprovements.Value;
customCols.SaveTicketChanges();
customCols.UpdateValues();</pre>
        </span>
    </div>
    <p>After executing this code, the data will be saved to the custom field whose column in the database corresponds to the <em>feedbackImprovement</em> value. The value <em>NametKeImprovement</em> from the questionnaire model is taken for saving.</p>

    <h3>Setting the address of your own questionnaire</h3>

    <p>
        In <strong>ALVAO WebApp - Administration - Service Desk -
  Services</strong> - section <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/extended">Extended</a> - in <strong>Custom Questionnaire (URL)</strong> enter the address of the custom questionnaire, i.e. usually <em>Custom/Feedback/Feedback</em>.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the address starts with &quot;http&quot; or &quot;https&quot;, it is used as is. Otherwise, the path to the root of the ALVAO WebApp is automatically added to the beginning.
    </div>

    <h2>Custom Notifications</h2>

    <p>If you are using custom request resolution notifications, add an element to evaluate overall satisfaction using the [$FeedbackGeneralForm$] variable. Alternatively, prompt for a satisfaction survey by inserting the [$FeedbackURL$] variable.</p>
    <h2>Satisfaction Analysis</h2>
    <p>
        You can analyze applicant satisfaction in the MS Excel workbook <a href="../alvao-service-desk/evaluation-of-system-operation/data-analysis">Service Desk Analysis</a> on the <strong>Satisfaction Questionnaire</strong> worksheet.
    </p>

</asp:Content>

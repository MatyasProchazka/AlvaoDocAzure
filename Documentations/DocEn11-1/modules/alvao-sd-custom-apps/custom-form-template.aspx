<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom form for submitting a new request</h1>
    <p>
        The system form for submitting a new request to the ALVAO WebApp can be replaced by a custom form with specific content and behavior. The custom form can also accommodate multiple requests at the same time and thus can be used to support complex business processes such as onboarding a new employee.
    </p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Instead of custom forms, we recommend using a combination of <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">standard form</a> for submitting a new service request and <a href="../../modules/alvao-sd-custom-apps/javascript">custom javascript on the form for submitting a new request</a>.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The custom form can also be a generic ALVAO WebApp page that is not used to create requests. Creating such a page requires advanced programming knowledge.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        In a custom form, you can use the <a href="../../alvao-asset-management/implementation/customization/alvao-api">Alvao.API</a> to handle requests, however, using the API requires advanced programming knowledge.
    </div>


    <p>
        Templates for creating your own forms can be found in the <strong>\Custom\Templates\</strong>
        in the ALVAO WebApp installation folder.
    </p>

    <p>List of standard templates:</p>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>NewTicket</td>
                <td>Example of a form for creating multiple requests in conjunction with each other. It also shows how to use some of the controls and how to work with the element to report the time to the request being created.</td>
            </tr>
            <tr>
                <td>EmptyPage</td>
                <td>Blank template. Used for pages that are not intended for making requests. This type of page is only used for special purposes, such as the content of custom tabs on a request.</td>
            </tr>
        </tbody>
    </table>

    <p>The <strong>.cshtml</strong> file defines the appearance of the form, the <strong>.cs</strong> file, located in the <strong>\Code</strong> folder, describes the logic of sending data from the filled form.</p>


    <h2>Preparing a new form</h2>
    <p>In the <strong>\Custom</strong> folder, first create a folder for the functionality that the new custom form will cover, e.g. <em>HrProcessAutomation</em> (for HR process automation). Multiple forms can be placed in a single functionality folder.</p>
    <p>
        Then, in the <strong>\Custom\Templates</strong> folder, choose a form template that is as close to your intent as possible. Copy the contents of the template folder to the <strong>Custom&lt;name of functionality&gt;</strong> folder. Rename the .cshtml and .cs files appropriately. Give both files (.cshtml and .cs) the same name. We recommend starting the form name with the name of the functionality, then the name of the service it is for, and finally the operation, e.g. <em>HrProcessAutomation_Onboarding_NewTicket</em>, where <em>HrProcessAutomation</em> is the name of the functionality, <em>Onboarding</em>
        is the service name, and <em>NewTicket</em> is the operation name.
    </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The names of all forms used across all functionality must be unique.
    </div>


    <p>Now you also need to modify the inside of the form according to the new name:</p>
    <ul>
        <li>In the .cs file, at the beginning of the file after the word <strong>namespace</strong>, include the namespace name <em>Alvao.ServiceDesk.ServiceDeskWebApp.Custom.&lt;function_name&gt;</em>. For the name of the functionality, specify the name of the folder on disk where the form resides, e.g. <em>Alvao.ServiceDesk.ServiceDeskWebApp.Custom.HrProcessAutomation</em>.</li>
        <li>In the .cs file, at the beginning of the file for the <strong>class</strong> keyword, change the name of the class. The class name must be <em>&lt;the name of the cshtml page&gt;Controller</em>, e.g. in the form <em>HrProcessAutomation_Onboarding_NewTicket.cshtml</em> the class would be named <em>HrProcessAutomation_Onboarding_NewTicketController</em>.</li>
    </ul>
    <h2>Form layout definition</h2>
    <p>
        The .cshtml file contains a description of the form layout and specifies the elements to be displayed. When the user submits data, the data entered into the displayed elements is then converted to text, and this text can then be used further in the behavior definition.
    </p>
    <p>
        In the .cshtml file, edit only the part delimited between the line <strong>&lt;div id=&quot;CustomFormContent&quot; &gt; and &lt;/div&gt;</strong>, form elements are converted to text only in this part. Elements outside the CustomFormContent will not be converted to the request text, but will be displayed in the form.
    </p>

    <p>The following form elements are converted to request text:</p>

    <table>
        <thead>
            <tr>
                <th>Element name</th>
                <th>Conversion method</th>
                <th>Rowing</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>&lt;label&gt;</td>
                <td>The displayed text is inserted into the request text and followed by a colon.</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Editor &quot;StringField&quot;</td>
                <td>The text that the user types into the input line is inserted into the request text. If you add the value "UniquedId = Model.TicketBodyGuid" to the element parameter, it will be possible to enter formatted text (HTML).
  <div class="note">
      <div class="icon"></div>
      <div class="title">Note:</div>
      There can be no more than one HTML formatted element per form.
  </div>


                </td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;BoolField&quot;</td>
                <td>The displayed text is inserted into the request text and followed by Yes or No, as selected by the user.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;DateTimeField&quot;</td>
                <td>The date specified by the user is inserted into the request text.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;DropDownListField&quot;</td>
                <td>The selected item is inserted into the request text.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;RadioButtonList&quot;</td>
                <td>The selected item is inserted into the request text.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;CheckBoxList&quot;</td>
                <td>All selected items are inserted sequentially into the request text.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;DoubleField&quot;</td>
                <td>An integer or decimal number entered by the user is inserted into the request text.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td><a href="columns-control">Editor &quot;ColumnsControl&quot;</a> </td>
                <td>All displayed items are inserted sequentially into the request text. It also inserts the values directly into the properties of the based request.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Editor &quot;AttachmentField&quot;</td>
                <td>Attachments will be inserted to the request's creation message.</td>
                <td>No</td>
            </tr>
        </tbody>
        <tfoot>
        </tfoot>
    </table>



    <p>Elements not listed in the table are not inserted in the text. Examples of using all elements can be found in the NewTicket template.</p>
    <p>In the .cshtml file, adding the &quot;btn-command&quot; class to the button ensures that the button is copied as a command to the command bar. </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The format of the number in the DoubleField is checked when the form is submitted, and if it is not correct, it is highlighted in red and <em>enter the number in the correct format</em> is displayed.<br />
        The correct Czech format for writing a decimal number is with a decimal point.
    </div>

    <h2>Form Behavior Definitions</h2>
    <p>The description of the behavior is in the .cs file. In the first part of the code, a comment marks the area that is intended for editing. Do not interfere with other parts of the code!</p>
    <p>The most important thing here is creating requests. There is already an example of creating a request in the file, which you can use to make your own modifications.</p>
    <p>The basic structure of the request creation command is as follows:</p>
    <strong><span class="console" translate="no">CreateTicket(&quot;Service name&quot;, &quot;Request name&quot;,
&quot;Custom request text&quot; + TicketBody);</span></strong>

    <p>Where <em>TicketBody</em> is already prepared request text, which was created by converting form content to text. If necessary, text addition can be used in all items as shown. To insert line breaks into the actual text, use the \n tag.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the "StringField" element is used on the form, which can be used to enter text in HTML format, use the string "&lt;br&gt;&quot;
    </div>


    <p>The service name must be filled in exactly as the service name appears in Administration. Sub-services are separated by the / character, for example &quot;Internal/Personality/Employee Entry&quot;. You must enter the full path from the root service.</p>

    <p>A version of the request creation command is also available that is extended to create links:</p>
    <strong><span class="console" translate="no">CreateTicket(&quot;Service name&quot;, &quot;Request name&quot;,
&quot;Custom request text&quot; + TicketBody, MainTicketId, TicketRelationType. SystemTicketRelationType.IsChildOf);</span></strong>

    <p>
        Where <em>MainTicketId</em> is the number of the linked request. An example of getting the ID from the main request is also included in the template. The value 
        <em>TicketRelationType.SystemTicketRelationType.IsChildOf</em> defines the link type:
    </p>
    <table>
        <thead>
            <tr>
                <th>Value</th>
                <th>Link Type</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>RelatesTo</td>
                <td>Relates to</td>
            </tr>
            <tr>
                <td>IsParentOf</td>
                <td>IsParentOf</td>
            </tr>

            <tr>
                <td>IsChildOf</td>
                <td>Is a child of</td>
            </tr>

            <tr>
                <td>PrecedesBefore</td>
                <td>Precedes before</td>
            </tr>
            <tr>
                <td>FollowsAfter</td>
                <td>Follows After</td>
            </tr>
            <tr>
                <td>Blocks</td>
                <td>Blocks</td>
            </tr>
            <tr>
                <td>IsBlockedBy</td>
                <td>Is blocked</td>
            </tr>
            <tr>
                <td>IsDuplicatedBy</td>
                <td>Is duplicated</td>
            </tr>
            <tr>
                <td>Duplicates</td>
                <td>Duplicates</td>
            </tr>
        </tbody>
    </table>
    <p>
        For example, in the case of <em>TicketRelationType.SystemTicketRelationType.IsChildOf</em>, the currently created request will be the child and the request with the number passed in the MainTicketId will be the parent.
    </p>
    <p>To access the values of custom fields, use the following structure (example for the items &quot;NoveName&quot; and &quot;NoveNumber&quot;):</p>
    <strong><span class="console">string NoveName =
((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NoveJmeno&quot;).Value as string;<br />
        int NoveCislo =
(int)((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NoveCislo&quot;).Value;<span class="console">
</span>
    </span></strong>


    <h2>Connecting the form to the application</h2>
    <p>If you specify a form path in the service settings, this form will be displayed on the ALVAO WebApp instead of the normal form for submitting a new request. See also <a href="../../alvao-service-desk/implementation/services/service-tree">Service Desk service settings</a>.</p>
    <ol>
        <li>In <strong>WebApp - Administration - Service Desk - Services</strong>, select the service in which you want to display the custom form. </li>
        <li>In the <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">New Request Form</a> section of the command panel, switch the mode from System Form Design to <em>Custom Form (URL)</em>.</li>
        <li>Enter the path to the custom form in the form <strong>~/Custom/&lt;name of the functionality&gt;/&lt;name of the form without the .cshtml&gt;</strong> extension.</li>
    </ol>
    <h2>Dynamic form language switching</h2>
    <p>When editing .cs and .cshtml files, you can use .resx files that contain localized strings for each language. Each user is then shown these strings read from the file according to their preferred language. If a .resx file is not created for a language, the .resx file for English is used.</p>
    <h3>Creating a .resx file for a language</h3>
    <p>
        First, create a .resx file for English. From the <b>Custom\Templates\Resources</b>, copy the <b>SampleController.resx</b> file
to the <b>Custom&lt;functionality&gt;\Resources</b> folder and rename it to <b>&lt;cshtml page name&gt;Controller.resx</b>.
    </p>
    <p>
        Open this file in a text editor. After the line <em>&quot;&lt;!-- Insert --!&gt;&quot;</em>
        insert the lines:
    </p>
    <p>
        <em>&lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;
            <br />
            &lt;value&gt;name&lt;/value&gt;<br />
            &lt;/data&gt;</em>
    </p>
    <p>The result should be as follows:</p>
    <p>
        <em>.
&lt;!-- Insert --!&gt;<br />
            &lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;<br />
            &lt;value&gt;name&lt;/value&gt;<br />
            &lt;/data&gt;<br />
            &lt;!-- Do not change --!&gt;<br />
            &lt;/root&gt;</em>
    </p>
    <p>Lines:</p>
    <p>
        <em>.
&lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;<br />
            &lt;value&gt;name&lt;/value&gt;<br />
            &lt;/data&gt;</em>
    </p>
    <p>can be copied and modified again to create multiple localized strings. Each &quot;&lt;data name=&quot;<b>name</b>&quot; value must be unique within the file.</p>
    <p>&lt;data name=&quot;<b>name</b>&quot; specifies the name used as a parameter in the <b>GetResources()</b> function described in <b>Using a .resx file in .cs and .cshtml files</b>. The &lt;value&gt;<b>Name</b>&lt;/value&gt; specifies the value this function returns.</p>
    <p>
        Let's now create a .resx file for the Czech language. Copy the modified <b>&lt;cshtml page name&gt;Controller.resx</b>. to the same folder and name it <b>&lt;cshtml page name&gt;Controller.cs.resx</b>. Edit the <em>&lt;value&gt;Name&lt;/value&gt;</em> so that the following text is in this file:
    </p>
    <p>
        <em>&lt;!-- Insert --!&gt;<br />
            &lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;<br />
            &lt;value&gt;name&lt;/value&gt;<br />
            &lt;/data&gt;<br />
            &lt;!-- Do not change --!&gt;<br />
            &lt;/root&gt;</em>
    </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Do not change any other parts of the resx files.
    </div>

    <p>
        In the same way that the <b>&lt;cshtml page name&gt;Controller.cs.resx</b> file is copied and edited, the files for other languages that can be set as the user's preferred languages can be copied and edited. These files are always named <b>&lt;cshtml page name&gt;Controller.&lt;language abbreviation&gt;.resx</b> (for example <b>&lt;cshtml page name&gt;Controller.de.resx</b>).
The language abbreviations that can be used are defined at:
    </p>
    <p>
        <a href="http://msdn.microsoft.com/en-us/goglobal/bb896001">http://msdn.microsoft.com/en-us/goglobal/bb896001</a>
    </p>
    <h3>Using a .resx file in .cs and .cshtml files</h3>
    <p>Some items created in .resx files can be used in both .cs and .cshtml files.</p>
    <p>
        In the .cshtml file, use the string <b>label = &quot;Name&quot;</b> instead of the string <b>label = Model.GetResource(&quot;name&quot;)</b>. A user who has set English as the preferred language will see the label of the <b>Name</b> field. Other users will see <b>Name</b>.
    </p>
    <p>
        When used in a .cs file, the same functionality would be achieved by using the <b>GetResource(&quot;name&quot;)</b>, instead of a string.
    </p>
</asp:Content>



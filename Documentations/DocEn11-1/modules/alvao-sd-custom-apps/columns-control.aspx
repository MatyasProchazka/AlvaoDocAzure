<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ColumnsControl elementl</h1>

    <p>The ColumnsControl control displays the input field on the form for entering values directly into the request items.</p>

    <p>
        ColumnsControl generates the entire form input field with description. For basic functionality, you need to set the displayed items (e.g. ShowColumns = &quot;tHdTicket.mHdTicketNotice&quot;),
or required items (e.g. RequiredColumns=&quot;tHdTicket.mHdTicketNotice&quot;).
Items are displayed in the order specified from top to bottom.
    </p>
    <p>
        Each ColumnControl element needs to be initialized. In the <strong>.cs</strong> file in the ConfigControls() function, use the following line for each ColumnsControl element used on the form:<br />
        <em translate="no">((DynamicModel)Model).GetControl</em><columnscontrol><em translate="no">&lt;ColumnsControl&gt;(&quot;ColumnsControl0&quot;);<br />
        </em>Use the name of your element instead of <em translate="no">ColumnsControl0</em>.
    </p>
    <p>If you insert this control into the form between &lt;div id=&quot;CustomFormContent&quot; and &lt;/div&gt;, the values will be automatically saved when the CreateTicket function is called. The control can be used multiple times on the same page. See below for possible additional settings and an example.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        We recommend that you configure <em translate="no">ColumnsControl</em> using the attributes on the page (<strong>.cshml</strong>). <em translate="no">ColumnsControl</em> can also be configured in code (<strong>.cs</strong>).
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        To keep these items from being added to the request text, you need to place it outside of <strong>&lt;div id=&quot;CustomFormContent&quot;</strong> and <strong>&lt;/div&gt;</strong>,
	but then you need to manually save the filled values by calling the <strong>UpdateColumns(...)</strong> function for each <em translate="no">ColumnsControl</em>
        and each request created.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When the page is displayed, the <em translate="no">ColumnsControl</em> tries to get the <em translate="no">SectionId</em>
        automatically from the specified web address. If the web address contains the address parameter <strong>iHdSectionId=cislo</strong>, the <em translate="no">&quot;cislo&quot;</em> is used as the ID of the selected service unless set otherwise. (E.g. <em translate="no">http://www.servicedesk.cz/Custom/ALVAO/NewTicket_Template/?iHdSectionId=11</em>
        contains service ID #11. This will automatically be set as <em translate="no">SectionId</em>.)<br />
        This functionality can be disabled by setting <em translate="no">SectionId=&quot;0&quot;</em> or by setting a specific service.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <p><em translate="no">ColumnsControl</em> performs a basic rights check:</p>
        <ul>
            <!-- Cancelled: <li>If <em translate="no">SectionId</em> or <em translate="no">SectionName</em> is set, the logged in user must have at least one SLA on that service, otherwise the user is redirected to an error page.</li> -->
            <li>If <em translate="no">TicketId</em> is set, the logged-in user needs to be able to view this request, otherwise the user is redirected to an error page.</li>
        </ul>
    </div>

    <h2>Parameter format</h2>
    <p>The following parameter formats are used in attribute and function descriptions:</p>
    <ul>
        <li><strong translate="no">columns</strong>- a list of columns in the format &quot;<strong translate="no">table1.column1, table1.column2, ...</strong>&quot;. In this way, one or more columns can be defined for the current <em translate="no">ColumnsControl</em>.<br />
 <strong>Allowed columns:</strong>
            <div class="wide" style="width: 624px">
                <table>
                    <thead>
                        <tr>
                            <th>table.column</th>
                            <th>Request item</th>
                            <th>Notes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td translate="no">tHdTicket.mHdTicketNotice</td>
                            <td>Notes</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.sHdTicketGroup</td>
                            <td>Group</td>
                            <td>Allows values other than the predefined values.</td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.sHdTicketDeviceCode</td>
                            <td>Device number</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.FeedbackSolveSpeed</td>
                            <td>Solution Speed</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.FeedbackProfessionality</td>
                            <td>Professionalism</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.FeedbackExpertise</td>
                            <td>Excellence</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.FeedbackComment</td>
                            <td>Comments and Notes</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicket.RelatedAccountId</td>
                            <td>Related Organization</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td translate="no">tHdTicketCust.*</td>
                            <td>custom fields</td>
                            <td>The individual columns in the tHdTicketCust table that represent custom fields. Instead of an asterisk, specify the name of the specific column.</td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </li>
        <li><strong translate="no">sectionId</strong> - service id</li>
        <li><strong translate="no">sectionName</strong> - the full name of the service, including the path (e.g. <em translate="no">&quot;Helpdesk/Problems&quot;</em>)</li>
        <li><strong translate="no">mode</strong> - one of <strong>Edit</strong>(default) and <strong>View</strong></li>
        <li><strong translate="no">msg</strong> - string containing the text displayed for the unfilled requested item</li>
        <li><strong translate="no">ticketId</strong> - the request number to view/save</li>
        .
    </ul>

    <h2>Attributes in cshtml</h2>
    <ul>
        <li><strong translate="no">ShowColumns</strong> = <em translate="no">columns</em> - columns to be generated per form and stored in db. The columns are displayed in the specified order from top to bottom.</li>
        <li><strong translate="no">RequiredColumns</strong> = <em translate="no">columns</em> - columns that must be filled to enable saving. These columns must also be in the <em translate="no">ShowColumns</em> attribute. The order does not matter.</li>
        <li><strong translate="no">SectionId</strong> = <em translate="no">sectionId</em> - sets the ID and name of the service. This influences the values to select for the code list items (if values are defined for a specific service).</li>
        <li><strong translate="no">SectionName</strong> = <em translate="no">sectionName</em> - sets the ID and name of the service. This affects the values to select for the codebook items (if values are defined for a specific service).</li>
        <li><strong translate="no">Mode</strong> = <em translate="no">mode</em> - sets the display mode.</li>
        <li><strong translate="no">TicketId</strong> = <em translate="no">ticketId</em> - sets the request ID to edit/display/save.</li>
        <li><strong translate="no">CssClass</strong> - css style class.</li>
        <li><strong translate="no">IgnoreColumns </strong> = <em translate="no">columns</em> - columns that will not be displayed.</li>
        <li><strong translate="no">IncludeServiceColumns</strong> - flag whether to display columns according to the service process specified in the SectionId</li>
        <li><strong translate="no">IncludeRequiredColumns</strong> - flag if required columns should be displayed according to the service process specified in SectionId.</li>
    </ul>

    <h2>Functions</h2>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        It is not necessary to use these functions for the basic functionality of the <em translate="no">ColumnsControl</em> element.
    </div>
    <ul>
        <li><strong translate="no">UpdateColumns()</strong> - stores the filled values in the db in the request whose id is set by the <em translate="no">TicketId</em> attribute.</li>
        <li><strong translate="no">UpdateColumns(int ticketId)</strong> - stores the filled values in db to request number <em translate="no">ticketId</em>.</li>
    </ul>

    <h2>Example of use</h2>
    <p>Example of displaying the Group (<em translate="no">tHdTicket.sHdTicketGroup</em>) and Notes (<em translate="no">tHdTicket.mHdTicketNotes</em>) items. The Group item is mandatory:</p>
    <ul>
        <li>.cshml + autosave (using the <em translate="no">CreateTicket</em> function call)
 <p>
     <span class="console" translate="no">.... Your form content....<br />
         <br />
         <strong>@Html.EditorFor(m=&gt; m[&quot;ColumnsControl0&quot;], &quot;ColumnsControl&quot;,
 new { ShowColumns=&quot;tHdTicket.sHdTicketGroup,tHdTicket.mHdTicketNotice&quot;,RequiredColumns=&quot;tHdTicket.sHdTicketGroup&quot; })</strong><br />
         .... Rest of form....<br />
     </span>
        </li>
    </ul>
    <p>
        Another example usage can be found at <strong translate="no">&quot;~/Custom/Templates/NewTicket_Template.cshtml&quot;</strong>
        and those derived from it.
    </p>

</asp:Content>

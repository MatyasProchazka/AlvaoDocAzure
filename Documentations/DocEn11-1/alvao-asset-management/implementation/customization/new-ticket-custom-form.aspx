<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Custom request form from AM Console</h1>

    <p>If you want to use the <a href="../../../alvao-service-desk/request-object-links">New request</a> command over the bulk object selection in AM Console to use a custom form from SD, use the following settings.</p>
    <ol>
        <li>Create a custom form according to the <a href="../../../modules/alvao-sd-custom-apps/custom-form-template">procedure in the SD book</a>.
            <ul>
                <li>Use a custom model when implementing a custom form.</li>
                <li>The form must support displaying the page using the HTTP GET method.</li>
                <li>Expect a list of selected objects in the <em>Objects</em> parameter, which contains the comma-separated IDs of all selected objects in the AM Console.<br />
                    Ex: <em>Objects=54,134,1987,658</em>
                </li>
            </ul>
        </li>
        <li>Set the path to your custom form by running an SQL query over your Alvao database:<br />
            <span class="console">exec dbo.spUpdateInsertProperty 'AM.NewTicketFromObjects.CustomFormUrl', '~/Custom/&lt;function name&gt;/&lt;form name without .cshtml extension&gt;', NULL, NULL</span><br />
            Set the correct path to the custom form in the query.</li>
    </ol>

    <h2>Disable the use of custom form</h2>
    <p>
        To disable the use of custom forms, run the following SQL query over your Alvao database:<br />
        <span class="console">delete tProperty where sProperty = 'AM.NewTicketFromObjects.CustomFormUrl'</span>
    </p>

</asp:Content>

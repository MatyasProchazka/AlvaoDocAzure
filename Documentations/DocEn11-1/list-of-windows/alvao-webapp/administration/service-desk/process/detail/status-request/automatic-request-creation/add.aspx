<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>New rule</h1>
    <p>Use this form to create a new rule that automatically creates a new linked request when the source request transitions to a certain status.</p>
    <p>Options:</p>
    <ul>
        <li><b>Automatically create a request when the source request transfers to status</b> - or change the status if you want to add the rule to a different process status.</li>
        <li><b>Request template</b> - select the request template to create the new request.
        <ul>
            <li><a href="../../../../../../ticket-templates/edit-template">Edit Template</a> - edit the selected request template.</li>
            <li><a href="../../../../../../ticket-templates/new-template">New template</a> - create a new request template.</li>
        </ul>
        </li>
        <li><b>Link type</b> - select the type of link to create between the new and source request. For example, if you want to create a child request, select the <em>Is a child of</em> type.</li>
        <li><b>Request name template</b> - if applicable, specify a template to build the name of the new request. You can use static text in the template and also variables representing the values of the request items. You can use the same variables in the template as in <a href="../../../../service/message-template">message templates</a>.
        <ul>
            <li><b>Insert variable</b> - in the request name template, place the cursor where you want to insert the variable, and then select the variable from this menu.</li>
        </ul>
        </li>
        <li><strong>Requester</strong>
        <ul>
            <li><b>Source request field</b> - choose whether the <em>Requester</em> or <em>Solver</em> of the source request will become the requester of the new request. Request <a href="../../../../../custom-items">custom fields</a> of type <em>User </em>are also available in the drop-down menu.<br />
                If you choose the <em>Solver</em> option and the source request does not have a solver, the <em>Requester</em> option will be applied.</li>
            <li><b>Change requester to</b> - select a specific person to be the requester of the request.</li>
        </ul></li>
        <li><b>Copy item values from source request</b> - list the source request items whose values will be copied to the new request.
        <ul>
            <li><a href="edit/items-copying">Edit</a> - edit the list of copied items.</li>
        </ul>
        </li>
        <li><b>Condition</b> - specify the <a href="https://docs.microsoft.com/en-us/sql/t-sql/queries/search-condition-transact-sql?view=sql-server-ver15">SQL condition</a> that the source request must meet in order for the linked request to be created. You can use the values of all request items in the condition.
        <ul>
            <li><b>Insert variable</b> - in the condition, place the cursor where you want to insert the variable, and then select the variable from this menu.</li>
            <li>Examples:
            <ul>
                <li>tHdTicketCust.BusinessCards = 1 AND tHdTicketCust.WorkPosition != N'Programmer'</li>
                <li>tHdTicketCust.ComputerType = N'Desktop' OR tHdTicketCust.ComputerType = N'Notebook'</li>
                <li>tHdTicketCust.WorkHoursPerWeek >= 20</li>
                <li>tHdTicketCust.Mentor = (SELECT iPersonId FROM tPerson WHERE sPerson=N&#39;John Smith&#39;)</li>
            </ul>
            </li>
        </ul>
        </li>
    </ul>
</asp:Content>

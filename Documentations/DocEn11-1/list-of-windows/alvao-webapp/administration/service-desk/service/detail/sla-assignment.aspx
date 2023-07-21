<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>SLA assignment</h1>
    <p>
        In this form, assign a certain <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a> to a user or group for the service being modified.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>SLA</strong> - select SLA from the menu.</li>
        <li><strong>Select person or group</strong> - enter at least part of the user or group name and select the user or group from the drop-down menu. This will add the selected user or group to the list below the input field. You can then select several users and groups in turn, or use the [...] button to select several items from the table at once (you can <a href="../../../../../../alvao-asset-management/working-with-tables">customize</a> the contents of the table).</li>
        <li><strong>Default SLA</strong> - check this option to make this SLA the default for the users, groups, and the service. When a new request is submitted through the <a href="../../../../requests/new-request">New request</a> form, the form is populated with the default SLA for the given requester and service. In case there are multiple default SLAs the one with the highest <a href="../../sla/create-sla">Quality index</a> is chosen.</li>
    </ul>

</asp:Content>

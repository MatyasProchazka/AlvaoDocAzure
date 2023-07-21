<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Assigning a request to a solver</h1>

    <p>
        Newly created requests will appear to the main solvers on the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> page in the <strong>Unassigned</strong>. It is the role of the Main solvers to assign individual requests to specific investigators or groups for resolution.
    </p>
    <p>
        Each service solver can assign a request to another solver or a solver group using the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> - <strong>Assign</strong>,
  or take it over for resolution by itself with the <strong>Take over for resolution</strong> command, even if the request is already assigned to another solver or another solver group. The new solver will receive an email notification and the request will appear in the <strong>To Solve</strong> view.
  If the request is assigned only to the solution group and not to a specific solver in the group, the notification is sent to all members of the group and all members also see the request in the <em>To Solution</em> view.
    </p>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Knowledge Base</h1>
    <p>A knowledge base is a collection of <strong>knowledge</strong>, i.e. articles in which applicants and solvers can find guides to common situations, problems or other useful information. To view the knowledge base, use the command in the <strong>main menu</strong>- <a href="../list-of-windows/alvao-webapp/knowledge-base">Knowledge Base</a>.</p>
    <p>Each knowledge can be assigned to one or even multiple <a href="implementation/services">services</a> simultaneously. It is then displayed to users in the application in the context of those services, e.g., to requesters in the <a href="../list-of-windows/alvao-webapp/service-catalog">service catalog</a>, in the <a href="../list-of-windows/alvao-webapp/requests/new-request">New request</a> form, and also on the <a href="../list-of-windows/alvao-webapp/requests/request">Requrest</a> - <em>Solving process</em> tab. Knowledge that is not assigned to any service only appears on the <a href="../list-of-windows/alvao-webapp/knowledge-base">Knowledge base</a> page, or users can search for it.</p>

    <h2>Knowledge permissions</h2>
    <p>
        Applicants can search and view only selected knowledge (see the <a href="../list-of-windows/alvao-webapp/knowledge-base/manage/new-knowledge">Show to applicants</a> option),
	that are assigned to their services. They can't create or modify any knowledge, nor can they see the knowledge of services in which they are not requesters.
    </p>
    <p>
        <a href="implementation/services/service-roles">Solution team members</a> and exceptional service solvers can view, <a href="../list-of-windows/alvao-webapp/knowledge-base/manage">create and edit</a> all knowledge in their service. Additionally, if they are members of the <a href="implementation/users/groups">knowledge base root group</a>,
	they can also edit knowledge that is not assigned to any service.
    </p>
    <p><a href="implementation/services/service-roles">Service readers</a> cannot edit knowledge, but they can view all knowledge in a given service that is visible to members of the solution team.</p>

    <h2>Knowledge Utilisation Statistics</h2>

    <p>See <a href="../alvao-asset-management/implementation/statistics">Analysis of ALVAO WebApp traffic</a>.</p>

</asp:Content>

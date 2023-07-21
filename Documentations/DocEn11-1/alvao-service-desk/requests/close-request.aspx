<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request Closure</h1>
    <p>
        After the request is resolved, the solver marks the request as closed by changing the status to <em>Closed</em>. This step is not necessary if the status is <em>Solved</em>.
	is set to automatically close the request, where resolving the request will also change the status to <em>Closed</em>.<br />
    </p>
    <p>&nbsp;The request cannot be closed in the following cases:</p>
    <ul>

        <li>Request does not have mandatory fields filled in for the <em>em>status</em>
            Closed</em>.</li>
        <li>Solution progress does not allow transition from the current request status to the <em>Closed</em> status. For more information about workflow settings, see <a href="../implementation/services/processes">Processes</a>.</li>
        <li>The request has its own workflow.</li>
    </ul>

</asp:Content>

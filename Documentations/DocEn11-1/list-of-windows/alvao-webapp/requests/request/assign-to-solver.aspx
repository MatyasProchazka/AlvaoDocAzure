<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Assign</h1>
    <p>This form allows you to assign selected requests to a specific solver or to the whole group of solvers for solution.</p>
    <p>Options:</p>
    <ul>
        <li><strong>Solver group</strong> - enter at least part of the name of the <a href="../../../../alvao-service-desk/implementation/services/service-roles">solver group</a> and then select the group from the drop-down menu.</li>
        <li><strong>Add to the queue of requests without solver</strong> - select this option if you want to return the request to the <a href="../../../../alvao-service-desk/implementation/services/service-roles">main solvers</a> of the service (if the request is assigned to the <em>Main</em> solver group) or to all solvers of another solver group (if the request is assign to a different solver group than <em>Main</em>).</li>
        <li><strong>Assign to solver</strong> - select this option if you want to assign the request to a specific solver. Then type at least part of the solver's name and select the solver from the drop-down menu.</li>
        <li><strong>Change the request status to</strong> - if you want to switch the request to a different status before passing it to the solver, select that status from the drop-down menu.</li>
        <li><strong>Message for solver</strong> - if applicable, write a message for solver that will be sent in the email notification of the request being forwarded for resolution. If you have changed the status of the request, the message is pre-populated with instructions for the solver according to the <em>Solution Progress</em>.</li>
        <li><strong>Attachments</strong> - a list of attachments to the solver message<ul>
            <li><strong>Add attachment</strong> - select the file to attach as an attachment.</li>
        </ul>
        </li>
        <li><strong>Cost report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">list the work time</a> spent resolving the request.</li>

    </ul>

</asp:Content>

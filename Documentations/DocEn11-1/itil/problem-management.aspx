<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Problem Management</h1>
    <p>Problem Management deals with the investigation and systemic correction of the root causes of incidents. The Problem Manager is typically the Infrastructure Team Leader (2nd and 3rd line support).</p>
    <h2>Default Process Pattern</h2>
    <p class="MsoNormal">This is a default process template that can be further customized by the customer.</p>

    <table>
        <thead>
            <tr>
                <th>status</th>
                <th>Description</th>
                <th>Instructions for solvers</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <b>New</b></td>
                <td>Problem classification is in progress. </td>
                <td>Check that this is a Problem. If not, use the &quot;Move to another service&quot; command to move the request to the correct service.
                    <br />
                    Determine the priority of the solution.
                    <br />
                    Then use the &quot;Assign&quot; command to assign the request to a specific solver to diagnose the problem.</td>
            </tr>
            <tr>
                <td>
                    <b>Diagnostics</b></td>
                <td>The problem is being diagnosed.</td>
                <td>Find out the cause of the problem. Analyze related Incidents.
                    <br />
                    Suggest necessary measures and alternative solutions and record these. Alternatively, establish a related change request.
                    <br />
                    Finally, change the status of the record to &quot;Known Error&quot;</td>
                .
            </tr>
            <tr>
                <td>
                    <b>Known error</b></td>
                <td>The problem has a described cause and an alternative solution.</td>
                <td>Connect other emerging Incidents to the problem.
                    <br />
                    After the problem is resolved, close the log with the command &quot;Close&quot;.</td>
            </tr>
            <tr>
                <td>
                    <b>Closed</b></td>
                <td>The request has been closed. The request is closed. </td>
                <td></td>
            </tr>
        </tbody>

    </table>

</asp:Content>

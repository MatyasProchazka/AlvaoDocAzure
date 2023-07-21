<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Request Fulfilment</h1>
    <p>Request Fulfilment deals with frequently recurring requests made to the Service Desk that are low enough risk that they do not need to go through the more formalised ITIL Change Management process. Typical requests that Request Fulfilment deals with include a request to change a password, a request to install standard software on a specific workstation, or a request for a consultation.</p>

    <h2>Approval</h2>
    <p>Urgent requests, however minimal the risk to the organisation's business (request for standard HW, installation of approved software, etc.), must be approved, e.g. for financial reasons.</p>
    <p>
        Approvals can be done in two ways in Alvao Service Desk: by emailing the approver and a more formal option - the Let me approve function. Using the approval agenda, we can predefine different <a href="../alvao-service-desk/implementation/services/processes/request-approval">approval schemes</a> for different services. The approval schema is activated at the beginning of the process, and until the request is approved, it is not started and the solution team does not see it in the "Requests to be resolved". Of course, at any time during the resolution of a request, approval can be triggered on any approval schema if new circumstances are discovered.
    </p>
    <h2>Default Process Pattern</h2>
    <p>This is the default process template, which can be further modified by the customer according to their needs.</p>
    <table>
        <thead>
            <tr>
                <th>Status</th>
                <th>Description</th>
                <th>Instructions for solvers</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">
                    <p>Approval</p>
                </td>
                <td valign="top">
                    <p>Request approval is in progress.</p>
                </td>
                <td valign="top">
                    <p>
                        Check that this is a &quot;Service Request&quot;. If not, use the &quot;Move to another service&quot; command to move the request to the correct service.
                        <br />
                        Check that the request has been approved. If it has been rejected, close it with the &quot;Close&quot; command.
                        <br />
                        Determine the priority of the solution.
                        <br />
                        Then use the &quot;Assign&quot; command to assign the request to a specific solver.
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Realization</p>
                </td>
                <td>
                    <p>Request execution is in progress.</p>
                </td>
                <td>
                    <p>
                        Execute the request.
                        <br />
                        Record all changes in the configuration database.
                        <br />
                        Finally, close the request with the command &quot;Close&quot;.
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Closed</p>
                </td>
                <td>
                    <p>The request has been closed. The request is closed.</p>
                </td>
                <td></td>
            </tr>
        </tbody>
    </table>

</asp:Content>

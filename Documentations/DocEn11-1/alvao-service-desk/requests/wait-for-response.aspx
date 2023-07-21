<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Waiting for requester</h1>

    <p>For each request, the system can track the amount of time that the resolution team has waited for a response from the requester in resolving the request. The waiting time is reported through entries in the request log.</p>

    <h3>Example:</h3>

    <table>
        <thead>
            <tr>
                <th>Time</th>
                <th>Journal entry</th>
                <th>Claimant waiting time</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>9:25</td>
                <td>E-mail from requester to service desk - request submission</td>
                <td>-</td>
                <td>The Requester has assigned a request.</td>
            </tr>
            <tr>
                <td>9:30</td>
                <td>E-mail from service desk to applicant - request for additional information</td>
                <td><strong>Closed</strong></td>
                <td>The main solver found that the specification of the request was incomplete and therefore sent a message to the requester requesting completion of the information. The solution team cannot address the request until the requester responds. Therefore, the time until the response is received should be reported as &quot;waiting for the requester&quot;. Therefore, the lead solver, when sending a message in the <a href="../../list-of-windows/alvao-webapp/requests/request/message">Message</a> form
 enabled the <em>Wait for reply</em>
                option.
            </tr>
            <tr>
                <td>9:40</td>
                <td>Telephone call from requester</td>
                <td><strong>Closed</strong></td>
                <td>The applicant telephones the main solver and together they clarify the missing information. Since the applicant does not know all the information needed, the applicant and the main solver agree to find out the missing information and email it to the applicant. The principal investigator enters a record of the phone call into the request log and turns on the <em>Waiting for Requester</em>
                option,
 because it is still waiting for a response.
            </tr>
            <tr>
                <td>9:50</td>
                <td>Note</td>
                <td>-</td>
                <td>The main solver realizes that learned important information during the phone call that did not write down. He enters a note in the request log and leaves the <em>Waiting for Requester</em> option inactive. This does not change the waiting status from the previous log entry.</td>
            </tr>
            <tr>
                <td>10:30</td>
                <td>E-mail from requester</td>
                <td><strong>Off</strong></td>
                <td>The applicant sends an email with the necessary information. The message is automatically loaded into the log with the <em>Wait for reply</em> option turned off.</td>
            </tr>
        </tbody>
    </table>

    <p>
        The time between 9:30 and 10:30 a.m. will be counted toward the &quot;wait time for the applicant&quot; and will be listed in the <strong>column</strong> in the requests table.
  Waiting time for applicant (hours)</strong> the value 1 will appear.
    </p>

    <p>In the <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">requests table</a>, you can track the wait time for requesters in the following columns:</p>
    <ul>
        <li>Requester wait time (hours)</li>
        <li>Claimant Wait Time (hours)</li>
        <li>Open time (hours)</li>
    </ul>

    <p>In the request log, the following columns are related to waiting for a requester:</p>

    <table>
        <thead>
            <tr>
                <th>Column</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Claimant waiting time (hours)</td>
                <td>For records that end the wait (i.e., the <strong>Waiting for applicant</strong> is set to off), this column indicates the amount of time in hours that this record has been waiting. For other records the column is empty. </td>
            </tr>
            <tr>
                <td>Claimant Wait</td>
                <td>
                    <table>
                        <thead>
                            <tr>
                                <th>Value</th>
                                <th>Meaning</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Yes</td>
                                <td>Start of wait</td>
                            </tr>
                            <tr>
                                <td>No</td>
                                <td>End of wait</td>
                            </tr>
                            <tr>
                                <td>-</td>
                                <td>The record does not affect the status of the wait (e.g. work notes of the research team).</td>
                            </tr>
                        </tbody>
                    </table>
                    The value in this column corresponds to the value of the <strong>switch
 Waiting for requester</strong> in the window for editing journal entries with the <strong>Edit</strong> command.</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        The wait time and the open time of a request are calculated in the <a href="../implementation/services/operating-hours">operating hours</a> that corresponds to the request, i.e. the operating hours that are set for the <a href="../implementation/services/sla">SLA</a> within which the request is resolved. 
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        The time the requester waited may not be counted towards the time it took to resolve the request. The request resolution deadline defined by the corresponding <a href="../implementation/services/sla">SLA</a> is delayed by the waiting time. This can be configured on the Administration - Service Desk -&nbsp; settings page of a specific <strong>SLA</strong> - Edit - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/sla/create-sla">Properties</a> - option <strong>Suspend SLA while waiting for Requester</strong>.


    </div>

</asp:Content>
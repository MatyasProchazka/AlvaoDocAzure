<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Links between requests</h1>

    <p>
        Request links to other requests are shown on the <a href="../../list-of-windows/alvao-webapp/requests/request">Request</a> page -
 <strong>Links</strong> tab. You can also view the links directly in the <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">requests table</a>.
    </p>

    <h2>Types of links</h2>

    <table>
        <thead>
            <tr>
                <th>Link type</th>
                <th>Link meaning</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Relates to<br />

                    <img src="related.png" /></td>
                <td>
                    <p>For example, two change requests are for the same device (CI). These requests are <em>related</em>.</p>
                    <p>This is a general type of link. There is no functionality tied to this link type.</p>
                </td>
            </tr>
            <tr>
                <td>It is parent over / It is child under<br />

                    <img src="superior_subordinated.png" /></td>
                <td>
                    <p>
                        For example, a <em>supervised</em> task consists of sub <em>subordinate</em> tasks (decomposition).
                    </p>
                    <p>
                        A parent request cannot be closed while it has open child requests.
                    </p>
                    <p>
                        A notification is automatically sent to the solver of the parent request when each child request is resolved.
                    </p>

                </td>
            </tr>
            <tr>
                <td>Precedes before / Follows after<br />

                    <img src="previous_following.png" /></td>
                <td>
                    <p>For example:</p>
                    <ol>
                        <li><em>Previous</em> tasks must be completed chronologically before <em>next</em> tasks.</li>
                        <li>The following <em>request</em> was created based on the <em>preceding</em> request.</li>
                    </ol>
                    <p>
                        Used to document the solution sequence or origin of the request.
                    </p>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Blocking/Is Blocked<br />

                    <img src="duplicated_duplicate_complex.png" /></td>
                <td>
                    <p>
                        For example, a <em>blocked</em> request can only be started or completed after the <em>blocking</em> request is complete.<br />
                        Note: The application does not restrict the resolution or closure of a blocked request in any way.
                    </p>
                    <p>A notification is automatically sent to the solver of the blocked request when each blocking request is resolved.</p>
                </td>
            </tr>
            <tr>
                <td>Is Duplicated / Duplicating<br />

                    <img src="duplicated_duplicate.png" /></td>
                <td>

                    <p>For example, two users have reported incidents regarding the same issue. The first incident will be Duplicated, the second will be Duplicate to it.</p>

                </td>
            </tr>
        </tbody>
    </table>

    <h2>ITIL</h2>

    <p>For links between records of individual ITIL processes, we recommend using the following types of links:</p>

    <img src="itil.png" /><p>For "simple" ITIL, we recommend recording all links as "related".</p>

    <p>If you want to implement ITIL more consistently, we recommend using the following types of links:</p>

    <table>
        <thead>
            <tr>
                <th>ITIL</th>
                <th>Link type</th>
                <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Incident - similar Incident (parent - child)</td>
                <td>Is Duplicated - Duplicates</td>
                <td>The first incident is marked as "Is Duplicated". All other incidents related to the same fault duplicate the first incident.</td>
            </tr>
            <tr>
                <td>Incident - Problem/Known Error</td>
                <td>Related to</td>
                <td>An incident may occur to an existing problem. A problem can arise from an existing incident. Therefore, it is not appropriate to use "Precedes Before - Follows After".</td>
            </tr>
            <tr>
                <td>Incident - Service Request</td>
                <td>Precedes Before - Follows After</td>
                <td>Service Request is created based on an incident (SR handles the incident).</td>
            </tr>
            <tr>
                <td>Incident - RFC (N:N) - RFC is triggered by an incident</td>
                <td>Precedes before - Follows after</td>
                <td>The RFC resolves the incident.</td>
            </tr>
            <tr>
                <td>RFC - Incident (caused by)</td>
                <td>Precedes Before - Follows After</td>
                <td>Incident caused by a poorly implemented change.</td>
            </tr>
            <tr>
                <td>Problem - RFC</td>
                <td>Precedes before - Follows after</td>
                <td>Problem is resolved via RFC.</td>
            </tr>
        </tbody>
    </table>

    <h2>Custom link types</h2>

    <p>The Alvao administrator can create custom link types in the database in the <a href="../../alvao-asset-management/implementation/customization/database#U_dbo.TicketRelationType">TicketRelationType</a> table. Changes to system link types are not supported.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        When creating new link types, choose the start and end of the link so that the link is mostly created from the initial request. When creating a link, the end names of all types are offered first, then the start name.
    </div>

</asp:Content>


<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>New script</h1>
    <p>Use this form to create a new script in the application.</p>

    <p>Options:</p>
    <ul>
        <li><strong>Template</strong> - select a suitable script template:<table>
            <thead>
                <tr>
                    <th>Template Name</th>
                    <th>Description</th>
                    <th>Included in <span translate="no">Custom Apps</span> modules</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Empty</td>
                    <td>Empty script</td>
                    <td translate="no">Asset Management, Service Desk</td>
                </tr>
                <tr>
                    <td>Class Library</td>
                    <td>A library of helper classes that can be used in other scripts. Defined classes cannot be used in another library.</td>
                    <td translate="no">Asset Management, Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/i-entity-command" translate="no">IEntityCommand</a></td>
                    <td>Custom entity command</td>
                    <td translate="no">Asset Management, Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/custom-commands/general-custom-commands" translate="no">IGeneralCommand</a></td>
                    <td>Custom command in the main menu</td>
                    <td translate="no">Asset Management, Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events" translate="no">ITicketAutoAction</a></td>
                    <td>Auto action on request event</td>
                    <td translate="no">Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events" translate="no">IActAutoAction</a></td>
                    <td>Auto action on an event in a request log entry</td>
                    <td translate="no">Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events" translate="no">ITicketApprovalAutoAction</a></td>
                    <td>Automatic request approval action</td>
                    <td translate="no">Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events" translate="no">IMailMessageAutoAction</a></td>
                    <td>Automatic action on message retrieval</td>
                    <td translate="no">Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/object-custom-actions-by-property-change" translate="no">IObjectPropertyAutoAction</a></td>
                    <td>Automatic action when changing the value of an object property</td>
                    <td translate="no">Asset Management</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/object-custom-actions-by-object-move" translate="no">IObjectMoveAutoAction</a></td>
                    <td>Auto action when moving an object</td>
                    <td translate="no">Asset Management</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a></td>
                    <td>Periodic Action</td>
                    <td translate="no">Asset Management, Service Desk</td>
                </tr>
                <tr>
                    <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/i-entity-tab" translate="no">IEntityTab</a></td>
                    <td>Custom tab on entity page</td>
                    <td translate="no">Asset Management, Service Desk</td>
                </tr>
            </tbody>
        </table>
            <p>Each script represents a particular UI element or other type of program extension that is an implementation of a particular interface in C#. The templates are named the same as the interface.</p>
        </li>
        <li><strong translate="no">Name</strong> - enter a name for the script. We recommend naming scripts with the name of the class they implement. For example, the <em>Open document</em> custom command class that implements the <em>IEntityCommand</em> interface could be named <em>OpenDocumentCommand</em> and the script name would be the same. By selecting the template, the appropriate ending will be automatically filled in the script name.</li>
    </ul>

</asp:Content>

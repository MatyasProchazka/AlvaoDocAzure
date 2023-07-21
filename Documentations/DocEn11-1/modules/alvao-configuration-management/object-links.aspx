<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Links between objects</h1>
    <p>
        You can create links between objects in ALVAO Asset Management that describe various relationships between objects (configuration items).
  For example, links can define which elements of the IT infrastructure are involved in the delivery of a particular IT service. You can then use the resulting graph to assess the impact (impact analysis) of incidents, problems and changes in the IT infrastructure.
    </p>
    <p>
        For an overview of the links between an object and other objects, see the graphical diagram on the page <b>WebApp – Objects – Object – </b><a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">Link Diagram</a>, or <b>AM Console – Object – Link Diagram</b>.
    </p>
    <p>You can create and edit links directly in the <a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">diagram</a> and also in the main <b>AM Console</b> window on the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/links">Links</a>, or automated via the REST API included in the <a href="../../modules/alvao-am-enterprise-api">ALVAO Asset Management Enterprise API</a> module.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When an object is moved to the <em>Recycle bin</em> or the <em>Discarded assets</em> folder all its links are automatically removed.
    </div>

    <h2>Types of links</h2>
    <p>The link type specifies the nature of the relationship between two linked objects. The following system link types are available:</p>
    <table>
        <thead>
            <tr>
                <th>Link Type</th>
                <th>Description</th>
                <th>Categories (system cannot be removed)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Related to - Related to</td>
                <td>General link - object A <i>is related to</i> object B.</td>
                <td>system</td>
            </tr>
            <tr>
                <td>Is used - Uses</td>
                <td>For example, UPS "UPS1" <i>is used</i> by server "SERVER1". Looking from the other side: the server <i>is</i> using the UPS. Thus, the correct functionality of the server depends on the functionality of the UPS.
                    <br />
                    Use this type of link to define chains of dependencies between infrastructure elements going from the basic elements to complex end IT services. This type of links is recommended for analyzing the impact of outages and changes in IT infrastructure.</td>
                <td>system</td>
            </tr>
            <tr>
                <td>It is superior to - It is inferior to</td>
                <td>Links of this type are determined by the object's position in the object tree and do not appear on the <i>Links</i> tab.</td>
                <td>system</td>
            </tr>
            <tr>
                <td>Hosted - Is hosted</td>
                <td>For example, the physical server "SERVER1" <i>hosts</i> the virtual server "VM1". The virtual server "VM1" <i>is hosted</i> by the physical server "SERVER1".</td>
                <td>ownloaded</td>
                .
            </tr>
            <tr>
                <td>It is backed up - Backups</td>
                <td>For example, the backup copy "Db1.bak" <i>backs up</i> the "Db1" database. Looking from the other side: Database "Db1" <i>is backed up</i> by backup copy "Db1.bak".</td>
                <td>ownloaded</td>
            </tr>
        </tbody>
    </table>
    <p>
        If the above types are not enough, create your own link types in <b>WebApp - Administration - Asset Management</b> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/link-types">Object Link Types</a>, or <b>AM Console - Tools - Lists</b> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/link-types">Object Link Types</a>.
    </p>

    <h2>User permissions</h2>
    <p>Only authorized users can work with Links according to the following table:</p>
    <table>
        <thead>
            <tr>
                <th>Role</th>
                <th>View the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/links">links</a> tab and <a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">diagram of links</a> </th>
                <th>Adding, editing and removing links</th>
                <th>Manage link types</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Asset Management administrators</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Links managers</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Links readers</td>
                <td>Yes</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Asset Management readers</td>
                <td>No</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Asset managers</td>
                <td>No</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Software licences managers</td>
                <td>No</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Software and hardware detections managers</td>
                <td>No</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Accountant</td>
                <td>No</td>
                <td>No</td>
                <td>No</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The right to <i>View Links</i> and <i>Links Diagram</i> tabs means that the user can see the <i>Links</i> and <i>Links Diagram</i> tabs, respectively, of the selected object, and all its links (even links to objects to which has no rights) on it.
    </div>


</asp:Content>

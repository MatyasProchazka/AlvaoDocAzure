<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1 translate="no">Service Asset and Configuration Management</h1>

    <p>The object tree in ALVAO Asset Management can be structured in different ways.</p>
    <ul>
        <li>Organizationally<ul>
            <li>E.g. Company -&gt; Division -&gt; Department -&gt; Center</li>

        </ul>
        </li>
        <li>Locally<ul>
            <li>E.g. Company -&gt; City -&gt; Building -&gt; Floor -&gt; Room</li>
        </ul>
        </li>
    </ul>

    Both approaches have their advantages and disadvantages. The correct choice of tree structure is mainly influenced by the following factors:<ol>
        <li>Tree clarity<ul>
            <li>The solution team should quickly deduce what the object is and what the context is from its position in the tree</li>
            <li>This will often also show them what the impact is (whether it is just a local printer or a shared one)</li>
        </ul>
        </li>

        <li>Rights within the tree<ul>
            <li>Organizational breakdown allows setting data visibility permissions on the WebApp for managers by Department, Division, etc.</li>
            <li>Local segmentation helps the solution team in cases where managed devices are spread across multiple sites and different technicians need to be given different rights across those sites.</li>
        </ul>
        </li>

        <li>Inheritance within the tree<ul>
            <li>A properly designed tree makes filling in information easier</li>
            <li>Information such as department numbers, employee names, then do not need to be filled in and this information is propagated within the tree automatically</li>
        </ul>
        </li>

    </ol>

    <p>Practice shows that the two approaches can be blended according to needs. The entire tree can start from the Organizational breakdown and then seamlessly transition to the Local breakdown as needed. Changing the organization tree in the future is possible and does not mean that you have to re-enter the information.</p>




    <img src="sacm/object_tree.png" />

    <h2>Life Cycle</h2>
    <p>The life cycle of each object (CI) is historically recorded in each object's log. It can be recorded in two ways:</p>
    <ol>
        <li>Position in the tree (recommended)</li>
        <li>The "Status" property</li>
    </ol>

    <h3>Lifecycle management using tree positioning</h3>
    System folders are ready in the system immediately after installation: warehouse, discarded assets, recycle bin. These folders can be further extended with additional folders as required: assets to be scrapped, Complaints (this can be further subdivided by supplier),
Installation, etc. The position in the tree then simply shows where the object is currently located, which also represents its status. The user can then change the status by simple drag&amp;drop operations within the tree.<br />
    <br />
    Example of using position in the tree:<br />
    <br />
    <img src="sacm/object_tree_lifecycle.png" />
    &nbsp;<h3>Manage the lifecycle using the "State" property</h3>
    The "State" property is manually modified during the object lifecycle (more administratively intensive). However, this method can be well used for objects representing important servers or key applications over which consistent Release Management is performed.<p>
        Example of using the &quot;Status&quot; property:<br />
        <img src="sacm/status_lifecycle.png" />
    </p>

    <h2>Inventory</h2>
    <p>
        See ALVAO Asset Management -
        <a href="../modules/alvao-inventory-audits/stocktaking">Asset Inventory</a>.
    </p>

    <h2>Example of an internal directive</h2>
    An internal directive on this issue should include the following information:<ol>
        <li>Computers and other IT equipment entrusted to users for use are recorded in the ALVAO Asset Management system.</li>
        <li>Each user can view a list of the devices registered with them at https://server/asset.</li>
        <li>If an employee finds a discrepancy in the records, will immediately report it to the Service Desk.</li>
    </ol>
</asp:Content>

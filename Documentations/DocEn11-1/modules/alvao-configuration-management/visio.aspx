<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Draw links in MS Visio</h1>
    <p>In addition to drawing <a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">links diagram</a> directly in <span translate="no">WebApp</span>, you can also draw links diagram in MS Visio:</p>
    <ol>
        <li>In the <b translate="no">ALVAO Asset Management Console</b>, in the object tree, select the object whose links you want to visualize.</li>
        <li>From the main menu, select <b>Object - Draw links in MS Visio</b>.</li>
        <li>A new MS Visio document with the drawn links will be displayed.<br />
            The generated document contains the entire dependency tree of the selected object.</li>
    </ol>

    <h2>Utility <span translate="no">GenerateNodeRelationshipDiagram</span></h2>
    <p>Use this utility to start drawing a link diagram from the command line.</p>

    <h4>Functions</h4>
    <p>
        Generates object dependency diagram in MS Visio (relative to the object that is given by ID number).<br />
        This utility works only if MS Visio is installed. 
    </p>

    <h4>Syntax command lines</h4>

    <p translate="no">
        <b>GenerateNodeRelationshipDiagram.exe /conn</b> <i>&quot;connection string&quot;</i> <b>/nodeId</b> &lt;object id&gt;[<b>/mode</b> &lt;mode&gt;]
    </p>

    <h5>Parameter structure</h5>

    <table>
        <thead>
            <tr>
                <th>Switch</th>
                <th>Description</th>
                <th>Mandatory</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">/conn &lt;string&gt;</td>
                <td>Setting up a connection to&nbsp;DB.</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td translate="no">/nodeId &lt;objectId&gt;</td>
                <td>ID of the initial object from which the links will start rendering (intNodeId).<br />
                    Note: You can find out the object ID e.g. in the AM Console on the Child Objects tab by displaying the "NodeId" column.
                </td>
                <td>Yes</td>
            </tr>
            <tr>
                <td translate="no">/mode &lt;mode&gt;</td>
                <td>Rendering mode:
                    <ul>
                        <li>ImpactDiagram (default) - impact diagram; Renders the initial object (see nodeId) and all objects that use this object or that use this object (link type uses - is used) recursively.   It also plots objects that are directly related to the initial object (link type related to, direct links only).</li>
                        <li>ContextDiagram - renders the initial object (see nodeId) and all objects that are directly related to it (all link types, including parent-child link in the object tree). It then displays all the links between these objects.</li>
                    </ul>
                </td>
                <td>No</td>
            </tr>
        </tbody>
    </table>

</asp:Content>

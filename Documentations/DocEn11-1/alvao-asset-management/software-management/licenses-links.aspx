<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Links between licenses</h1>
    <p>Links can be created between licenses in ALVAO Asset Management to define the relationships between licenses. </p>

    <h2>Links tab</h2>
    <p>
        You can manage your links in the main window of the <strong>ALVAO Asset Management Console</strong>
        in the <strong>Edit License</strong> window on the <strong>links</strong> tab.
There are both direct and indirect (transitive) links.
    </p>
    <h3>Views</h3>
    <p>By default, the following views are displayed on the "links" tab:</p>
    <ul>
        <li><strong>Direct</strong> - displays only direct links, i.e. links whose starting or ending license is the directly selected license.</li>
        <li><strong>Follows</strong> - displays a list of licenses that the selected license follows.</li>
        <li><strong>Precedes</strong> - displays a list of licenses that the selected license precedes.</li>
    </ul>

    <h3>Columns</h3>
    <table>
        <thead>
            <th>Name</th>
            <th>Description</th>
        </thead>
        <tbody>
            <tr>
                <td>Path</td>
                <td>Path to the linked object.</td>
            </tr>
            <tr>
                <td>Object kind</td>
                <td>Type of linked object.</td>
            </tr>
            <tr>
                <td>Object name</td>
                <td>Name of the linked object.</td>
            </tr>
            <tr>
                <td>Direct</td>
                <td>Yes - this is a direct link to the object that is selected in the tree.<br />
                    No - this is an indirect link to the object that is selected in the tree (link via another object).</td>
            </tr>
            <tr>
                <td>Link type</td>
                <td>The type of link from the perspective of the currently selected object in the tree.</td>
            </tr>
            <tr>
                <td>Modified</td>
                <td>Date and time when the link was last modified.</td>
            </tr>
            <tr>
                <td>Edit</td>
                <td>The person who last modified the link.</td>
            </tr>
            <tr>
                <td>From object (path)</td>
                <td>The path to the object on which the link is defined. For direct links, this is the selected object in the tree.</td>
            </tr>
            <tr>
                <td>From object (type)</td>
                <td>The type of object on which the link is defined.</td>
            </tr>
            <tr>
                <td>From object (name)</td>
                <td>The name of the object on which the link is defined.</td>
            </tr>
            <tr>
                <td>From object (link type)</td>
                <td>The type of link from the view of the object on which the link is defined.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="link-type">Link Types</h2>
    <p>The following link types can be defined between objects:</p>
    <table>
        <thead>
            <th>Link type</th>
            <th>Description</th>
        </thead>
        <tbody>
            <tr>
                <td>Related to - Related to</td>
                <td>License A is related to License B.</td>
            </tr>
            <tr>
                <td>Precedes before - Follows after</td>
                <td>License A precedes License B. For example: the MS Office 2003 license precedes the MS Office 2010 license.</td>
            </tr>
        </tbody>
    </table>

    <h2>Direct and indirect links</h2>
    <p>
        For example, the following links exist between licences A to E:<br />
        A -&gt; B -&gt; <strong>C</strong> -&gt; D -&gt; E
    </p>
    <p>If the selected licencet is C, then the links B-&gt;C and C-&gt;D are <strong>direct</strong>, because they directly follow from or point to licencet C.</p>
    <p>
        Links A-&gt; C and C-&gt; E are <strong>indirect</strong>,
  because licence A is indirectly linked to C via licence B. Similarly, license E is indirectly linked to C via license D.
    </p>
    <h2>Adding a new link</h2>
    <ol>
        <li>In the <strong>AM Console</strong>, display the <strong>Edit License</strong> window for the license you want to add a link to.</li>
        <li>From the local menu on the <strong>Links</strong> tab, select the <strong>Links</strong> command.
	Add</strong>.</li>
        <li>The <strong>Add link</strong> window will open. The license at the top of the window is pre-populated according to the license that is being edited. This selection cannot be changed.</li>
        <li>In the <strong>link Type</strong> drop-down menu, select the desired link type, for example "License (top)<strong> Follows</strong>
            License<strong>
            </strong>(bottom)."</li>
        <li>Type part of the license name and select the object from the drop-down menu.</li>
        <li>After filling in the details, click the <strong>OK</strong> button.</li>
    </ol>
    <h2>Edit an existing link</h2>
    <ol>
        <li>On the <strong>links</strong> tab of the <strong>Edit License</strong> window, select the link you want to edit and select <strong>Edit</strong> from the local menu.</li>
        <li>In the <strong>Edit link</strong>&nbsp;window, edit the link type and end licenses as needed and click <strong>OK</strong>.</li>
    </ol>
    <h2>Removing a link</h2>
    <ol>
        <li>On the <strong>links</strong> tab</strong>&nbsp;in the <strong>Edit License</strong> window.
	locate the link you want to remove and select <strong>Remove</strong>.</li>
        <li>Confirm the removal of the link.</li>
    </ol>

    <h2>Example: License links When Upgrading a Software License</h2>
    <p>
        Perform an upgrade
        <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />
        Purchase 10 Windows 98 licenses to
        <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />
        purchasing 10 licenses of Windows XP Professional.
        <br />
        The license list will have the following entries after the upgrade:
        <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />
        Purchase 10 Windows 98 licenses,
        <img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />
        cancelling 10 Windows 98 licenses and
        <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />purchasing 10 Windows XP Pro licenses.
        <br />
        In the list of links
        <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />of purchasing a Windows98 license, the following will appear:
        <img src="../../list-of-windows/alvao-asset-management-console/LicRelRight.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />
        Windows 98 and
        <img src="../../list-of-windows/alvao-asset-management-console/LicRelRight.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />
        Windows XP Pro.
        <br />
        In the list of links
        <img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />of the Windows 98 license cancellation, the following appears:
        <img src="../../list-of-windows/alvao-asset-management-console/LicRelLeft.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />
        Windows 98 and
        <img src="../../list-of-windows/alvao-asset-management-console/LicRelRight.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />
        Windows XP Pro.
        <br />
        In the links list
        <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />of a Windows XP Pro license purchase, the following will appear:
        <img src="../../list-of-windows/alvao-asset-management-console/LicRelLeft.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />
        Windows 98 and
        <img src="../../list-of-windows/alvao-asset-management-console/LicRelLeft.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />
        Windows 98.
    </p>

</asp:Content>


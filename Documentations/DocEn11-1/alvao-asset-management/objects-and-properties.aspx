<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Objects and properties</h1>
    <p>Each registered asset is represented in ALVAO Asset Management by a specific <strong>object</strong>. The individual objects are organized into an <strong>object tree</strong>, which can be found in the <a href="../list-of-windows/alvao-asset-management-console">main window of the AM Console</a>, or in the <strong>WebApp</strong>- <a href="../list-of-windows/alvao-webapp/objects">Objects</a>.</p>
    <p>
        Each object is defined by a type, a name, and an icon can be set for it. In the object tree, only the icon and name of the object are visible. The type of object determines what real-world object the object represents (e.g. computer, monitor, printer, ...) Press the right mouse button on the object to open the local menu. The <strong>Edit</strong> command
opens a window on the screen <a href="../list-of-windows/alvao-asset-management-console/edit/object/general">Object</a> where you can change its basic information.
    </p>
    <p>
        Each object can be further described by one or more properties. For example, a <em>User</em> object is described by the <em>Personal Number</em> and <em>User</em> properties 
(i.e. the user's first and last name), etc. In the <strong>AM Console</strong> on the <a href="../list-of-windows/alvao-asset-management-console/tab-view/properties">Properties</a> tab, or in the <strong>WebApp - Objects</strong> - <a href="../list-of-windows/alvao-webapp/objects/object/properties">Properties</a> tab, you will find a list of properties of the object that is currently selected in the tree. Below the list of properties are additional tabs that filter the list by various aspects, detailed on the <a href="../list-of-windows/alvao-asset-management-console">AM Console main window</a>. The list can also display properties that an object inherits from a parent object in the tree, as detailed in <a href="implementation/tree-design#inheritance">Inheritance</a>.
    </p>

</asp:Content>

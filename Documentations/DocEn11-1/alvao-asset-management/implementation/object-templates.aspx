<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object templates</h1>

    <p>
        Object templates are object definitions that are used to create objects in the asset tree (or <a href="object-models">Object templates</a>).
 A template specifies what properties, icon, etc. an object should have. You can edit templates, add and remove properties from existing templates, create new templates, or delete existing templates.
    </p>


    <p>To edit the Object Templates, you need to select <strong>Tools - Settings</strong> from the main menu and on the <strong>Display</strong> tab turn on <strong>Show hidden objects</strong>. In the root of the tree, the Object Templates object appears, which contains templates for creating organizational structure and assets in the tree.</p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        <p>
            We do not recommend making major changes to the templates, especially in
  the computer template and the computer assembly. Some objects and properties are closely tied to the entire system, prepared queries, and print reports, so modifications could lead to their non-functionality. Creating new objects and adding properties to existing objects can be considered safe editing.
        </p>
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        <p>It is possible that future system upgrades will load new versions of the templates into the databases. For this reason, it is a good idea to keep template modifications under control so that you are able to replicate them later. It is advisable to put the new objects in one common folder called <em>Custom Objects</em>, for example. When you upgrade, you can then simply move the entire folder to the new templates.</p>
    </div>

    <h2>Modify object template</h2>
    You can add and remove object properties and edit their attributes only in the template of the object type. Changes to the template are automatically reflected in all objects of that type in the entire inventory.If you have objects of a type in the inventory that do not have a template, it is advisable to create a template for them:<ol>
        <li><a href="../objects-and-properties/copying-object">Copy</a> one of the existing objects in the inventory to the clipboard (<span class="key">Ctrl</span>+<span class="key">C</span>).</li>
        <li>Paste an object from the clipboard into the object templates in the appropriate subfolder (<span class="key">Ctrl</span>+<span class="key">V</span>).</li>
        <li>Add/remove properties or set attributes - see the following sections.</li>
    </ol>

    <h2>Adding and removing properties</h2>
    <p>
        To add a new property to the list, right-click anywhere in the list and select <strong>New Property</strong> from the menu.
The screen will open a <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/properties-definition">Properties menu</a>, in which locate the property you want to add to the object and double-click it. Then enter a value for the property.
    </p>
    <p>
        Properties are removed again in the usual way. Right-click on the property you want to remove and select <strong>Delete</strong>.
    </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The add property operation is not recorded in the object history, unlike the remove and edit operations.
    </div>

    <h2>Changing property attributes</h2>
    <ol>
        <li>Select a property and right-click on it.</li>
        <li>Select <strong>Edit</strong> from the menu. The window will open<a href="../../list-of-windows/alvao-asset-management-console/tab-view/properties/property-edit">
Property</a> with details for the selected property.<div class="note">
    <div class="icon"></div>
    <div class="title">Note:</div>
    You can also use the <span class="key">Alt</span>+<span class="key">Enter</span> keys to display the window.
            </div>
        </li>
        <li>Edit the attributes (property specifies the object name, inherit property) as needed and confirm the change with <strong>OK</strong>.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Attributes can only be changed by a user with the <i>Asset Management administrators</i> role.
            </div>
        </li>
    </ol>

    <h2>Mandatory features</h2>
    If you want some properties to be mandatory (i.e. they must have a value filled in),
  enable mandatory properties in <strong>AM Console - Tools - Lists - Property Definitions - Edit -</strong>
  <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/value-check">Value-check</a>.

</asp:Content>

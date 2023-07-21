<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom object selection functions</h1>
    <p>The <em>Objects</em> field is used to add <a href="../../alvao-asset-management/objects-and-properties">objects</a> from ALVAO Asset Management to the <strong>Objects</strong> tab on the <a href="../../list-of-windows/alvao-webapp/requests/request"></a>page. This is an input field with a drop-down menu.</p>

    <h2>System Behaviour</h2>
    <p>In the input field, the icon of the selected object and its name are displayed.</p>
    <p>
        If the user does not enter any text in the input field, the drop-down menu offers the objects that are entrusted to the current requester for use (located below it in the object tree) and the assets for which <a href="../../alvao-asset-management/implementation/tree-design">is responsible for</a>. If the user enters part of the object name, path in the tree, inventory, serial or registration number in the input field, the menu will display objects matching the entered text. The user can also specify the type of object, e.g., if the user enters &quot;monitor: dell&quot;, it searches for all objects of type <em>Monitor</em>, whose name starts with the string <em>dell</em>.
    </p>
    <p>
        Only objects that the user has the right to see in the object tree are displayed in the menu. Computer components and objects of type <em>Assembly</em> are not displayed.
 The offered objects are sorted by path in the tree, then by object kind and object name.
    </p>

    <h2>Custom functions</h2>
    <p>If you want to change the system behavior of the array, e.g. search objects by values of other properties, create a new function <strong>ftDeviceSearch-Custom2</strong> in the database that will return the contents of the drop-down menu according to the specified parameters. The function must have the same parameters and the same output format as the system function <a href="../../alvao-asset-management/implementation/customization/database#TF-dbo.ftDeviceSearch">dbo.ftDeviceSearch</a>.</p>


</asp:Content>

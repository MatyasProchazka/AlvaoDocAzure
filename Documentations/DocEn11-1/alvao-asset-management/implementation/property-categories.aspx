<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Property Categories</h1>
    <p>
        In the main window, there is a <strong>Properties</strong> tab at the top right,
which displays the properties of the object currently selected in the tree. There are also a number of other views that are used to filter properties by the appropriate category. On the far left are the two default views <strong>All</strong> and <strong>Custom</strong>. Next are the default views:
    </p>
    <ul>
        <li>Basic</li>
        <li>Technical</li>
        <li>Accounting</li>
        <li>Location</li>
    </ul>
    <p>On each view, only properties with the selected focus are maintained by default.</p>
    <p>
        Custom views are defined in the <em>Property Categories</em> folder, which you can view in the tree by selecting <strong>Tools - Settings</strong> from the main menu.
and on the <strong>Display</strong> tab, turn on the <strong>Show hidden objects</strong> option. After you create or delete a category in the tree, you must manually create or delete the corresponding view on the Properties tab.
    </p>

    <p>Each child object of the <em>Property Category</em> object represents one view. The list of properties of the child object determines what properties will be listed in the corresponding view. Only the <em>__order</em> property has a specific meaning - it determines the order of the view in the window. The values of the other properties have no meaning.</p>
    <div class="tooltip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Before you start editing property categories, switch to the view
        <strong>All</strong>.
    </div>
    <div class="tooltip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Changes are reflected on the tabs by pressing <span class="key">F5</span>.
    </div>

</asp:Content>

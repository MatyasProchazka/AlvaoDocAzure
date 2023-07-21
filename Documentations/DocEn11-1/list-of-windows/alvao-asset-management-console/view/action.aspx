<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Action</h1>
    <p>
        The Actions menu is used to display the objects that have been selected in the <a href="../../../alvao-asset-management/searching/list-of-objects">Lists of objects</a>, in the <a href="../../alvao-asset-management-console">main AM Console window</a>.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Select in tree</strong> - select the currently selected object in the object tree.</li>
        <li><strong>Mark in tree</strong> - mark the currently selected object in the object tree.</li>
        <li>
            <a href="../object/choose-object">Move</a> - move the selected object under another object. If you select an object of type computer, you will be asked if you want to move only computers or computers including reports, see the <a href="../objects/move_options">Move Options</a>.
        </li>
    </ul>
</asp:Content>

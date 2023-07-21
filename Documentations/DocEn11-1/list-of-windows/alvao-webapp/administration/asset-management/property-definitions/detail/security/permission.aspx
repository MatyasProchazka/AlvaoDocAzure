<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Permission</h1>

    <p>Options:</p>
    <ul>
        <li><strong>Select person or group</strong> - select the person or group that will have a specific permission.</li>
        <li><strong>Objects of the kind</strong> - select a specific object type. The permissions for the property will then only apply to the specific object type.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                It is possible to choose the option "&lt;all object types&gt;", in this case the permission for the property will be valid on all object types."
            </div>
        </li>
        <li><strong>Permissions</strong> - see <a href="../../../../../../../alvao-asset-management/objects-and-properties/property-security">Property security</a>.</li>
    </ul>
  

</asp:Content>

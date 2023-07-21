<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Security</h1>

    <p>This page displays the permissions set for the property definition.</p>
    <p>Options:</p>
    <ul>
        <li>Commands:
            <ul>
                <li><a href="../../../../../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/security/permission">Add</a></li>
                <li><a href="../../../../../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/security/permission">Edit</a></li>
                <li>Delete</li>
            </ul>
        </li>
        <li>Table - shows values of <em>Group</em>, <em>Objects kind</em>, <em>Read</em> and <em>Change</em>.</li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
         Only one permission can be edited at a time.
    </div>
  

</asp:Content>

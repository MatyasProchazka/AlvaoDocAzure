<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Document Folder - permissions</h1>
  <p>In this window, you can add or edit the permissions of a user or group to the selected document folder.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Document Folder</strong> - the name of the document folder to which the permission applies. The value cannot be changed.</li>
  <li><strong>Select a person or group</strong> - type part of the person's name or group name and then select the person or group you want to set permissions for from the menu.</li>
  <li><strong>Permissions</strong>
  <ul>
  <li><strong>Read</strong> - turn on if the selected person or group should see all documents in the selected document folder.</li>
  <li><strong>Change</strong> - turn on if you want the selected person or group to be able to edit all documents in the selected document folder.</li>
  <li><strong>Delete</strong> - turn on if you want the selected person or group to be able to delete documents in the selected document folder.</li>
  </ul>
  </li>
  </ul>
</asp:Content>

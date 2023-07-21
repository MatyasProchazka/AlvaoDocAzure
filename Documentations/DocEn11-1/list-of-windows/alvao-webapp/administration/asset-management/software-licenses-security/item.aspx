<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Securing Software Licenses - Permissions</h1>
  <p>In this window, you can add or modify selected permissions of a person or group to an organization's software licenses. One user (or group) can have multiple of these permissions.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Select a person or group</strong> - type part of the person's name or group name and select the person or group you want to set permissions for from the menu.</li>
  <li><strong>Software licenses belonging to an organization</strong> - select an object of type <em>Organization</em> to whose licenses the permissions will apply. If you do not select any organization, the permission applies to licenses that are not assigned to any organization.</li>
  <li><strong>Permissions</strong>
  <ul>
  <li><strong>Read</strong> - enable if you want the selected person or group to see all licenses of the selected organization.</li>
  <li><strong>Change</strong> - turn on if you want the selected person or group to be able to edit and perform other operations on the licenses of the selected organization.</li>
  </ul>
  </li>
  </ul>
</asp:Content>

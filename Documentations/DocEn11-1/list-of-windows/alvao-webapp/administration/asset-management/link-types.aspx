<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Types of links between objects</h1>
<p>On this page you can manage <a href="../../../../modules/alvao-configuration-management/object-links">links between objects</a>.
  This page is only available if the <a href="../../../../modules/alvao-configuration-management">ALVAO Configuration Management</a> module is enabled.
</p>
<p>Features:</p>
<ul>
  <li><b>Command Panel</b>
  <ul>
  <li><a href="link-types/new">New link type</a> - create a new custom link type.</li>
  <li><b>Edit</b> - edit the selected link type.</li>
  <li><b>Delete</b> - delete the selected link type. This command is only available for custom link types.</li>
  </ul>
  </li>
  <li><b>Table of links types</b> - contains all link types and their attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
</ul>

</asp:Content>

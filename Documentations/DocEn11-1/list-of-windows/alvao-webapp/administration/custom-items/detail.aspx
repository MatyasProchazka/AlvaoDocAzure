<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Custom field</h1>
<p>On this page, or panel, you can see information about the selected <a href="../../../../alvao-service-desk/implementation/custom-items">custom field</a>. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>

<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../custom-items">Custom fields</a> page.
  </li>
  <li>Block <ul>
  <li><strong>Name, Type, ...</strong> - basic information about the custom field</li>
  <li>Using <ul>
  <li><strong>Process</strong> - list of <a href="../../administration/service-desk/process">processes</a> in which this custom field is used.</li>
  <li><strong>New Request Form</strong> - a list of services in which <a href="../../administration/service-desk/service/catalog">New Request Form</a> this field is used.</li>
  </ul></li>
  </ul>
  </li>
</ul>

</asp:Content>

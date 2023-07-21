<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Integrated authentication</h1>
<p>Use this page to specify the IP address ranges of the computers on which users should be authenticated in an integrated manner when logging into the ALVAO WebApp. The ranges entered will only be used in <a href="../../../../alvao-asset-management/implementation/installation/installation-server-manual">
	Integrated Windows authentication and using forms (simultaneously)</a>.</p>

<p>Options:</p>
	<ul>
 <li><strong>Command Panel</strong><ul>
  <li><strong>Add</strong> - <a href="new-IP-range">add</a> a new range of IP addresses or a single address.</li>
  <li><strong>Edit</strong> - <a href="new-IP-range">edit</a> the selected range.</li>
  <li><strong>Delete</strong> - delete the selected range.</li>
  </ul>
  </li>
  <li><strong>IP Address Ranges Table</strong> - displays the IP address ranges for integrated user authentication.</li>
	</ul>

</asp:Content>

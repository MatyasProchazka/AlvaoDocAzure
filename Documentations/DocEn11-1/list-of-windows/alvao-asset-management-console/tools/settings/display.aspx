<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>View</h1>
<p>This tab allows you to set the display in <a href="../../../../alvao-asset-management/console">
Asset Management Console</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Main Window</strong>
  <ul>
 <li><strong>Minimize to icon in Windows Taskbar (next to the clock)</strong> - enable if the program should only appear as an icon in the Windows Taskbar when minimized.</li>
 <li><strong>Minimize window after launch</strong> -
 turn on if the program is to run minimized in the taskbar.</li>
  </ul>
 </li>
 <li><strong>Software tab</strong>
  <ul>
 <li><strong>Display unrecognized registry entries</strong>
 - turn on if you want the Software tab in <a href="../../../alvao-asset-management-console">
 main window</a> AM Console to also display <a href="../../../../alvao-asset-management/software-management/software-detection">
 detected registry entries</a>
 computers that were not <a href="../../../../alvao-asset-management/software-management/custom-swlib">
 software product libraries</a>
 assigned to any product. These entries serve as information that the software product library needs to be updated.</li>
  </ul>
 </li>
 <li><strong>Object Tree</strong>
  <ul>
 <li><strong>Show hidden objects</strong> - enable to show hidden objects in <a href="../../object-tree">
 object tree</a>. The option can also be turned on/off with the main menu command <a href="../../view">Show</a> - Hidden Objects. If the Use permissions option in the object tree (WebApp - Administration - Asset Management - <a href="../../../alvao-webapp/administration/asset-management/settings/general">Settings</a>) is disabled, the Show hidden objects option is only displayed to members of the <a href="../../../../alvao-asset-management/implementation/users/groups">Asset Management administrators</a> group.</li>
  </ul>
 </li>

	</ul>
</asp:Content>

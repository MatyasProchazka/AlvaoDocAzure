<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Backup settings</h1>
<p>On this page you can create a backup of your personal settings and restore your settings from the backup. Personal settings include settings for <a href="../../../alvao-asset-management/working-with-tables">tables</a> (views, displayed columns, filters, record sorting, ...) and other options in applications. Personal settings are always backed up and restored as a whole for all Alvao applications at once.</p>
<p>Options:</p>
	<ul>
 <li><strong>Create Settings Backup</strong> - create a backup of your personal settings. You can only have one backup, i.e. creating a new backup will overwrite the previous one.</li>
 <li><strong>Restore settings from backup</strong> - restore your personal settings from a saved backup.</li>
 <li><strong>Restore Default Settings</strong> - restores your personal settings to the default as when you first used the apps.</li>
	</ul>


</asp:Content>

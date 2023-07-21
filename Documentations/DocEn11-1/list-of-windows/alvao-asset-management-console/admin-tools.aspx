<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Administrator Tools</h1>
<p>This menu contains commands for computer administrators. This page describes only the default tools that are available in the AM Console once installed. Use <strong>.
Command Management</strong>, the Asset Management administrator can create additional commands and specify the location in the local menu from which they will be available.</p>
<p>Options:</p>
	<ul>
 <li><strong>NetMeeting client</strong>- connect to the selected computer using <a href="https://en.wikipedia.org/wiki/Microsoft_NetMeeting">
 NetMeeting</a>.</li>
 <li><strong>Remote Desktop Connection</strong> - connect to the selected computer via remote desktop.</li>
 <li><strong>VNC client</strong> - connect to the selected computer using <a href="https://en.wikipedia.org/wiki/Virtual_Network_Computing">
 Virtual Network Computing</a>.</li>
 <li><strong>Internet Explorer</strong> - open the root address of the selected server (in Internet Explorer). If the selected computer is not a server, the address is treated as unavailable.</li>
 <li><strong>Manage your computer</strong> - manage your computer using <a href="http://windows.microsoft.com/en-us/windows-vista/what-is-the-microsoft-management-console-mmc">
 Microsoft Management Console</a>.</li>
 <li><a href="tools/lists/commands">Command manager</a>
   - edit or create a new admin tool.</li>
	</ul>

	
</asp:Content>

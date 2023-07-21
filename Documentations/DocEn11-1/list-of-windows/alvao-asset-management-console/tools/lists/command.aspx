<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Command</h1>
<p>Options:</p>
	<ul>
 <li><strong>Name</strong> - enter the name under which the command will appear in the menu.</li>
 <li><strong>Group</strong> - enter the name of the group to which the command belongs. In the menu, commands are sorted by <strong></strong>
 Groups</strong> and in the group alphabetically by <strong>
 Name</strong>.</li>
 <li><strong>Command</strong> - type <a href="../../../../alvao-asset-management/implementation/commands">
 command</a> to be executed.</li>
 <li><strong>Insert Variable</strong> - if applicable, insert a variable or object property value into the command. For a more detailed description of variables, see <a href="../../../../alvao-asset-management/implementation/commands">
 Commands</a>.</li>
 <li><strong>Run in directory</strong> - specify the directory in which the command will run. You can use operating system variables in the directory. For example, <span class="console">%ProgramFiles%</span>.</li>
	</ul>
</asp:Content>

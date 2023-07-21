<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>IP address range</h1>
<p>Use this window to create or edit a range of IP addresses of computers for which integrated user authentication will be enabled when logging into the ALVAO WebApp.</p>
<p>Options:</p>
	<ul>
 <li><strong>From</strong> - enter the first (starting) address of the range.</li>
 <li><strong>To</strong> - enter the last (end) address of the range.</li>
 <li><strong>One IP address</strong> - enable if you do not want to specify a range, but only one specific IP address. This will display the <strong>IP address</strong> field instead of the <em>From</em> and <em>To</em> fields.</li>
	</ul>
</asp:Content>

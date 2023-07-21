<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>IP address range</h1>
<p>This window is used to set the IP address range in which new computers on the network will be searched.</p>
<p>Options:</p>
	<ul>
 <li><strong>IP from</strong> - enter the starting address of the range.</li>
 <li><strong>IP to</strong> - enter the end address of the range.</li>
 <li><strong>One IP address</strong> - select if you do not want to specify a range, but only one specific IP address.</li>
 <li><strong>Collector Name</strong> - select the name of the server that will scan this range.</li>
 <li><strong>Scan every __ h</strong> - specify the amount of time, in hours, after which the server should start scanning this range again.</li>
	</ul>
</asp:Content>


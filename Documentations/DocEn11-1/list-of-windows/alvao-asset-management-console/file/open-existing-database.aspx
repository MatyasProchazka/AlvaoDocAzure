<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Open existing database</h1>

<p>Options:</p>
	<ul>
 <li><strong>WebService</strong> - enter the URL to the ALVAO Asset Management WebService. This is the recommended method of connection.</li>
 <li><strong>SQL Server</strong> - the following step displays a connection wizard in which you select the provider <a href="https://docs.microsoft.com/en-us/sql/connect/oledb/download-oledb-driver-for-sql-server">Microsoft OLE DB Driver</a>.</li>
 <li><strong>UDL file</strong> - displays a window for selecting a UDL (Microsoft Data Link) file.</li>
	</ul>
</asp:Content>

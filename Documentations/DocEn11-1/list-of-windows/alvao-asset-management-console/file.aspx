<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>File</h1>
<p>The File menu is used to work with the database, analytical excel and <a href="../../alvao-asset-management">ALVAO Asset Management</a>.</p>
<p>Features:</p>
	<ul>
 <li><a href="file/db-manager">
 Database</a> - open or create a new database.</li>
 <li><strong>Save As</strong> - save information about objects selected in the table (available formats are csv and html).</li>
 <li><strong>Analyze in MS Excel</strong> - display information about objects selected in the table in the analytical Excel.</li>
 <li><strong>Print</strong> - display information about the selected object in the print preview. Select the one that suits you best from the offered <a href="../alvao-webapp/administration/asset-management/print-report-templates">templates</a>. For some, you will need <a href="file/query-parameters">
 Specify query parameters</a>.<br/>
 If you select a report for the <strong>Transfer Protocol</strong>, the appropriate window will open to fill in the necessary handover information:<ul>
 <li><a href="../alvao-webapp/objects/object/print">Transfer Protocol External</a></li>
 <li><a href="../alvao-webapp/objects/object/print">Internal handover protocol</a></li>
 </ul></li>
 <li><strong>Exit</strong> - termination of the ALVAO Asset Management application.</li>


	</ul>


</asp:Content>

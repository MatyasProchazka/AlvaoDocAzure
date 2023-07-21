<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Data analysis</h1>

  <p>This form is used to set up a connection to the <a href="../../../../alvao-asset-management/implementation/analytic-database">analytic database</a>.</p>

  <p>Options:</p>
	<ul>
 <li><strong>Use analytical database</strong> - enable this option if you wish to use an analytical database for data analysis. Each newly created analytic workbook (see <em>AM Console - </em><a href="../../../alvao-asset-management-console/tools">Tools</a><em> - Data Analysis</em>) will be connected to this analytic database. If this option is disabled, data analysis will be performed on top of the production database, which can slow down the response of Alvao applications in normal operation.</li>
	  <li><strong>Server</strong> - Enter the name of the SQL Server on which the analytics database resides.</li>
  <li><strong>Database</strong> - enter the name of the analytics database.</li>
	</ul>

</asp:Content>

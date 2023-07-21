<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query Wizard - Step 4</h1>
<p>In the fourth step of creating a <a href="../../../alvao-asset-management/searching/query">
database query</a>, define the ordering of the rows of the resulting print report.</p>
<p>Options:</p>

	<ul>
 <li><strong>Group by</strong> - select from the list the column by which the rows of the resulting print report should be grouped.</li>
 <li><strong>Sort By</strong> - select the columns from the list by whose values the rows of the resulting print report should be sorted. For each selected column, specify the sort direction. Primarily, the rows are sorted according to the column that is selected above. <ul>
  <li><strong>In ascending order</strong> - select to sort from the lowest value to the highest value.</li>
 <li><strong>Descending</strong> - select to sort from highest value to lowest.</li>
 </ul></li>
	</ul>
</asp:Content>

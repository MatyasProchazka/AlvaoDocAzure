<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query Wizard - Step 1</h1>
<p>In the first step of creating a <a href="../../../alvao-asset-management/searching/query">
database query</a> select the management object in the tree, i.e. the object whose data you want to monitor.</p>
<p><strong>Example: Management Objects</strong></p>
	<table>
 <thead>
  <tr>
 <th>Request</th>
 <th>Control Object</th>
 <th>Note</th>
  </tr>
 </thead>
 <tbody>
  <tr>
 <td>List of all monitors</td>
 <td>monitor</td>
 <td></td>
  </tr>
  <tr>
 <td>List of all computer assemblies with hard disk size</td>
 <td>computer assembly</td>
 <td>Hard drives will be tracked using a subquery within each computer assembly.</td>
  </tr>
 </tbody>
	</table>
</asp:Content>

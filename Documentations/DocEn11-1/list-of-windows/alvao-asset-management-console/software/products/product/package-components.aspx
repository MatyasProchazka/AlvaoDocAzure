<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Package components</h1>
<p>The table shows the individual programs of the software package. If the selected product does not contain multiple programs, the table is empty.</p>
<p>Options:</p>
	<ul>
 <li><strong>Add</strong> - add another product.</li>
 <li><strong>Delete</strong> - remove the selected product.</li>
	</ul>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 It is not possible to edit items for products from the standard software library. Only user products can be edited - filter by &quot;&quot; (empty string) in the <strong>Certified</strong> column.
	</div>

</asp:Content>

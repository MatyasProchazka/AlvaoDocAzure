<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New installation - products</h1>

<p>The left table (<strong>Product menu</strong>) shows all available products in the inventory. In the right table (<strong>Selected computers</strong>), move those products whose installation record you wish to write to the <a href="../record-installation">selected computers in the previous step</a>.</p>
<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	Tables can be <a href="../../../../../alvao-asset-management/working-with-tables">
	customize</a>.
</div>

<p>Options:</p>
	<ul>
 <li><strong>&gt;</strong> - move products (selected in the left table) to the right table.</li>
 <li><strong>&lt;&lt;</strong> - remove selected products from the right table (move back to the left table).</li>
	</ul>

</asp:Content>

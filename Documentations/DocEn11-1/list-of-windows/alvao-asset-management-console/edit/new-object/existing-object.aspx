<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Existing objects</h1>
<p>The table shows a list of existing objects. In the list, you can select the object you want to create. If you select a computer assembly, it will be created including direct descendants. The list does not display computer components.</p>
	<ul>
 <li>Confirm your selection with <b>OK</b>. Alternatively, select <b>Cancel</b> to cancel your selection.</li>
	</ul>
<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	The objects in the table are sorted by creation date, but like the rest of the table, this sorting can be <a href="../../../../alvao-asset-management/working-with-tables">
	customized</a>.</div>
<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	If there are more than 250 items in the list, a button appears in the bottom right corner that, when clicked, displays all items.</div>


</asp:Content>

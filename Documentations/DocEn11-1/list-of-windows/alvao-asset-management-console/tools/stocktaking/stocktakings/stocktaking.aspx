<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Asset check</h1>
<p>In this window you can edit the data of the selected <a href="../../../../../modules/alvao-inventory-audits/stocktaking">
inventory</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Creation Date</strong> - enter the date the asset check was created.</li>
 <li><strong>Close Date</strong> - enter the date the asset check was closed. Once the asset check is closed, it will not be possible to edit the list of inventoried assets.</li>
 <li><strong>Asset List Locked</strong> - turn on if you no longer want to allow users to add additional assets to the asset check.</li>
 <li><strong>Description</strong> - add arbitrary notes to the asset check if necessary.</li>
	</ul>
</asp:Content>

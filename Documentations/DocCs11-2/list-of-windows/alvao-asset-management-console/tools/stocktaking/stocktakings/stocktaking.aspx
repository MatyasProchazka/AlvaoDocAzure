<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Inventura majetku</h1>
<p>V tomto okně můžete upravovat údaje vybraného <a href="../../../../../modules/alvao-inventory-audits/stocktaking">inventáře</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Datum vytvoření</strong> - zadejte datum vytvoření kontroly majetku.</li>
 <li><strong>Datum uzavření</strong> - zadejte datum uzavření kontroly majetku. Po uzavření kontroly majetku nebude možné seznam inventarizovaného majetku upravovat.</li>
 <li><strong>Seznam majetku uzamčen</strong> - zapněte, pokud již nechcete uživatelům povolit přidávat do kontroly majetku další majetek.</li>
 <li><strong>Popis</strong> - v případě potřeby přidejte ke kontrole majetku libovolné poznámky.</li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Parametry dotazu</h1>
<p>V tomto okně můžete zadat parametry pro tisk. Zobrazuje se pouze u některých šablon.</p>
	<ul>
 <li><strong>Hledat v</strong><ul>
 <li><strong>Vybraný objekt</strong> - zvolte, chcete-li prohledávat pouze objekt, který je aktuálně vybrán ve stromu objektů, a všechny jeho podřazené objekty.</li>
 <li><strong>Všechny objekty (celá databáze</strong> ) - vyberte, pokud chcete prohledávat celý strom, tj. celou databázi.</li>
  </ul>
 </li>
 <li><strong>Hledat včetně</strong><ul>
 <li><b>Speciální objekty</b> - zapněte, pokud chcete prohledávat také koš, šablony objektů, vyřazené prostředky atd.</li>
  </ul>
 </li>
	</ul>
</asp:Content>

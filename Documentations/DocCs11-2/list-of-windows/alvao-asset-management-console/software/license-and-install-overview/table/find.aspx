<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Najít</h1>
<p>V tomto okně můžete vyhledávat v aktuálně zobrazené tabulce produktů, požadavků atd. (nebo v aktuálně otevřeném dokumentu).</p>
<p>Možnosti: V nabídce je možné vyhledávat:</p>

	<ul>
 <li><strong>Najít</strong> - zadejte hledaný text.</li>
 <li><strong>Směr hledání</strong><ul>
 <li><strong>Najít</strong> - hledání výrazu až od zvýrazněného dotazu.</li>
 <li><strong>Směrem dolů</strong> - vyhledávání termínu směrem dolů od označeného požadavku.</li>
  </ul>
 </li>
 <li><strong>Pouze celá slova</strong> - zapnutím ignorujete, pokud je hledaný text součástí jiného slova.</li>
 <li><strong>Rozlišování velkých a malých písmen</strong> - zapněte, pokud chcete, aby vyhledávání rozlišovalo velká a malá písmena.</li>
	</ul>

</asp:Content>

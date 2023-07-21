<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h2>Požadované položky</h2>
<p>Toto okno slouží k výběru povinných položek pro přesun do konkrétního stavu požadavku.</p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Seznam povinných položek</strong> - pro položky, které musí být vyplněny před přechodem požadavku do upraveného stavu, povolte tuto možnost. Chcete-li povolit povinnost pro položku, která není v seznamu, přidejte ji nejprve do procesu, viz <em>ALVAO WebApp - Administration - Service Desk - Processes -</em> <a href="../request-items">Request Items</a>.</li>
  </ul>

<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	V situacích, kdy nelze vynutit vyplnění povinných položek, ale je požadován přechod do jiného stavu, jsou povinné položky ignorovány. Jedná se například o případy, kdy je požadavek znovu otevřen na základě e-mailu od žadatele, uplynula lhůta pro schválení apod.</div>

</asp:Content>

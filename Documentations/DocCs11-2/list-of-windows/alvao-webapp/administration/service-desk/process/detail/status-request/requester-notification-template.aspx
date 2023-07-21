<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Šablona oznámení žadateli o změně statusu</h1>
<p>Toto okno umožňuje definovat šablonu pro oznámení žadateli při změně stavu požadavku.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Použít výchozí šablonu</strong> - vyberte, zda chcete použít výchozí šablonu oznámení.</li>
 <li><strong>Použít vlastní šablonu</strong> - vyberte, pokud chcete definovat vlastní šablonu oznámení. <ul>
 <li><strong>Obnovit výchozí</strong> - text šablony nahradí výchozí šablonu oznámení.</li>
 <li><strong>Vložit proměnnou</strong> - z rozevírací nabídky vyberte proměnnou, kterou chcete vložit do šablony oznámení na aktuální pozici kurzoru. Seznam proměnných naleznete v části <a href="../../../service/message-template">Vlastní šablona oznámení (sloupec Šablona oznámení o změně stavu žadatele</a>)</li>
 </ul>
  </li>
	</ul>
	
<div class="note">
<div class="icon"></div>
<div class="title">Poznámka:</div>
Oznámení zasílaná žadatelům jsou formátována podle nastavených <a href="../../../settings/notification-style">stylů oznámení</a>.</div>

<div class="tip">
<div class="icon"></div>
<div class="title">Tip:</div>
Pokud chcete, aby se některý text ve zprávě zobrazil tučně, vložte jej mezi značky "&lt;b&gt;" a "&lt;/b&gt;".</div>


</asp:Content>

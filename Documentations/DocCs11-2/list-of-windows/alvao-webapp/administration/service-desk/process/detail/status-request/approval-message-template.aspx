<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Šablona zprávy pro schvalovatele</h1>
<p>Toto okno umožňuje definovat šablonu zprávy pro schvalovatele pro stav schválení upravované požadavky. Zpráva pro schvalovatele je odeslána schvalovatelům jako oznámení o zahájení schvalování. Zobrazuje se také na formuláři pro schválení nebo zamítnutí žádosti a v protokolu žádosti v událostech zahájení schvalování.</p>
<p>Možnosti: V případě, že se jedná o schválení, je možné použít následující volby:</p>
	<ul>
 <li><strong>Použít výchozí šablonu</strong> - použije výchozí šablonu zprávy, která je společná pro všechny procesy a stavy požadavku.<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	  Pokud vám výchozí šablona systému nevyhovuje, můžete ji v databázi upravit pomocí <a href="../../../../../../../alvao-service-desk/requests/update_default_message_for_approver.sql">skriptu SQL</a>.</div>

  </li>
 <li><strong>Použít vlastní šablonu</strong> - použijte vlastní šablonu, která je definována pouze pro upravovaný stav požadavku. Upravte šablonu zprávy v textovém poli. Výsledná zpráva by měla schvalovateli sdělit, co konkrétně má být schváleno, tj. co konkrétně má v požadavku schválit nebo zamítnout (např. původní požadavek žadatele, navrhované řešení, konečný způsob implementace atd.)<div class="tooltip">
<div class="icon"></div>
<div class="title">Tip:</div>
  V šabloně ohraničte text, který chcete ve zprávě zobrazit tučně, značkami <span class="console">&lt;b&gt;</span> a <span class="console">&lt;/b&gt;</span>, např. <span class="console">&lt;b&gt;Důležité:&lt;/b&gt;.</span> Jiné značky HTML nejsou podporovány.</div>

<ul>
 <li><strong>Obnovit výchozí</strong> - přepíše aktuální obsah textového pole výchozí šablonou.</li>
 <li><strong>Vložit proměnnou</strong> - pomocí rozevírací nabídky vyberte proměnnou, kterou chcete vložit do šablony na aktuální pozici kurzoru. Seznam proměnných naleznete v části <a href="../../../service/message-template">Vlastní šablona oznámení (sloupec Šablona zprávy pro schvalovatele</a>)</li>
 </ul>
  </li>
	</ul>

<div class="note">
<div class="icon"></div>
<div class="title">Poznámka:</div>
Oznámení zasílaná schvalovatelům jsou formátována podle nastaveného <a href="../../../settings/notification-style">stylu oznámení</a>.</div>


</asp:Content>

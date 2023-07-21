<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Požadavky</h1>
  <p>Na této stránce si můžete prohlédnout <a href="../../alvao-service-desk/requests">požadavky</a> v ALVAO Service Desk. Je to výchozí stránka pro členy týmů pro řešení servisních problémů.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Panel příkazů</b>- Panel zobrazuje příkazy pro práci s požadavky v závislosti na stavu a počtu vybraných požadavků. Tyto příkazy najdete také v místní nabídce pod pravým tlačítkem myši. <ul>
  <li><a href="requests/new-request">Nový požadavek</a> - vytvoření nového požadavku, obvykle na základě výzvy od žadatele.</li>
  <li><a href="requests/request/message">Odpovědět zadavateli požadavku</a> - <a href="../../alvao-service-desk/requests/send-message">odeslání zprávy</a> zadavateli požadavku. Aby bylo zachováno jediné vlákno konverzace s žadatelem, je zpráva odeslána jako odpověď na poslední zprávu od žadatele nebo žadateli (tj. žadatel je jedním z příjemců odeslané nebo přijaté zprávy) v rámci vybraného požadavku.<ul>
  <li><a href="requests/request/message">Odeslat zprávu</a> - odeslání obecné e-mailové zprávy.</li>
  </ul>
  </li>
  <li><a href="requests/request/note">Poznámka</a><strong> </strong>- zapíše novou poznámku do protokolu vybraného požadavku. V rozevírací nabídce tohoto příkazu můžete vybrat další typy událostí:<ul>
  <li><strong>Telefonní hovor</strong> - zaznamená obsah telefonního hovoru s žadatelem, dodavatelem, kolegou apod.</li>
  <li><strong>Osobní schůzka</strong> - zápis z osobní schůzky.</li>
  <li><strong>Ostatní</strong> - zápis z jiných způsobů komunikace.</li>
  </ul>
  </li>
  <li><a href="requests/request/resolve">Vyřešit</a> - <a href="../../alvao-service-desk/requests/resolve-request">vyřešení</a> vybraných požadavků.</li>
  <li><a href="requests/request/deadline">Termín</a> - změna termínu vyřešení vybraných požadavků</li>
  <li><a href="requests/request/approve-or-reject">Schválit nebo zamítnout</a> - schválení nebo zamítnutí požadavku. Tento příkaz se zobrazí pouze aktuálním schvalovatelům vybraného požadavku.</li>
  <li><a href="requests/request/have-approved">Zahájit schvalování</a> - zahájení <a href="../../alvao-service-desk/implementation/services/processes/request-approval">schvalování</a> vybraného požadavku. Tento příkaz se zobrazuje pouze ve stavech schválení vybraného požadavku.</li>
  <li><a href="requests/request/edit">Upravit</a> - editace položek vybraného požadavku.</li>
  <li><a href="requests/request/transit-to-state">Přejít do stavu</a><strong> </strong>- přechod vybraného požadavku do dalšího stavu v procesu řešení. Další stavy, do kterých lze přejít, najdete v rozbalovací nabídce tohoto příkazu. </li>
  <li><a href="requests/request/assign-to-solver">Přiřadit</a><strong> </strong> - přiřadí vybrané požadavky konkrétnímu řešiteli nebo celé skupině řešitelů.</li>
  <li><strong>Přiřadit mi</strong> - rychlé přijetí vybraných požadavků k řešení. Příkaz má stejný účinek jako výběr sebe sama v příkazu <em>Přiřadit</em>.</li>
  <li><a href="requests/request/assign-to-solver">Vrátit hlavnímu řešiteli</a> - vrátí vybrané požadavky hlavním řešitelům služby.</li>
  <li><a href="requests/request/move-to-another-service">Přesunout do jiné služby</a><strong> </strong>- <a href="../../alvao-service-desk/requests/move-to-another-service">přesun</a> vybraných požadavků do jiné služby.</li>
  <li><a href="requests/new-request-relations">Nový propojený požadavek</a><strong> </strong>- vytvoří nový požadavek, který bude <a href="../../alvao-service-desk/requests/relations">propojen</a> s vybraným požadavkem.</li>
  <li><a href="requests/request/reopen">Znovu otevřít</a> - <a href="../../alvao-service-desk/requests/reopen-for-further-resolution">znovu otevře</a> vyřešený požadavek. Tento příkaz uvede požadavek do systémového stavu <em>Znovu otevřeno</em>.</li>
  <li><strong>Označit</strong> - z nabídky vyberte barevnou značku, kterou chcete označit vybrané požadavky, viz sloupec Požadavky - <a href="requests/table-of-requests">Značka</a>.</li>
  <li><strong>...</strong><ul>
  <li><strong>Více na</strong><ul>
  <li><a href="requests/request/message">Přeposlat požadavek</a><strong> </strong>- přepošle podrobný protokol vybraného požadavku e-mailem. Zpráva je sestavena v prostém textu bez formátování a jsou v ní zahrnuty všechny přílohy ze všech záznamů protokolu.</li>
  <li><a href="requests/request/merge-request">Sloučit požadavky</a><strong> </strong>- sloučí vybrané <a href="../../alvao-service-desk/requests/duplicate-requests">duplicitní požadavky</a> do jednoho.</li>
  <li><strong>Odstranit</strong> - odstranění vybraných požadavků. Odstraněné požadavky přejdou do stavu <em>Odstraněno</em>, </em>nebudou se zobrazovat v seznamu požadavků, ale budou stále uloženy v databázi. V seznamu žádostí je můžete zobrazit pomocí příkazu v nabídce zobrazení - <em>Možnosti zobrazení</em> - <em>Zobrazit odstraněné</em> a v případě potřeby jejich odstranění opět zrušit pomocí příkazu <em>Obnovit odstraněné</em>.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>
<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Další příkazy definované správcem systému mohou být zobrazeny na příkazovém řádku, viz <a href="../../modules/alvao-sd-custom-apps/applications/custom-commands">vlastní příkazy</a></div>
  </li>
  <li><a href="requests/table-of-requests">Seznam požadavků</a> - zobrazuje všechny požadavky, které máte právo číst.</li>
  <li><b>Vybraný požadavek</b> - po výběru požadavku v seznamu se v pravé nebo dolní části stránky zobrazí panel s touto <a href="requests/request">žádostí</a>. Umístění panelu můžete zvolit v <em>Uživatelské nabídce - Nastavení - </em> <a href="../../list-of-windows/alvao-webapp/settings/view">Zobrazení</a><em> - Požadavky - Vybraná požadavek k zobrazení</em></li>
  </ul>


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


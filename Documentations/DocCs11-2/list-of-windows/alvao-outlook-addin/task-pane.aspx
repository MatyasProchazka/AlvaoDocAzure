<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Podokno úloh ALVAO</h1>
	<ul>
 <li><img alt="Icon: Refresh" src="refresh.png" />
 <strong>Obnovit</strong> - obnoví obsah panelu načtením stránky požadavku souvisejícího s aktuálně vybranou položkou v aplikaci MS Outlook. Tím se panel přepne do režimu náhledu.<br/></li>
 <li>
 <img alt="Icon: New item from request" src="new-item.png" />
 <strong>Nová položka z požadavku</strong> - vytvoří novou položku podle vašeho výběru (e-mailovou zprávu, událost, schůzku, úkol), která souvisí s vybranou zprávou požadavku v aplikaci MS Outlook<br/></li>
 <li><img alt="Icon: Open in separate window" src="new-window.png" />
 <strong>Otevřít v novém okně</strong> - otevře stránku, která je aktuálně zobrazena na hlavním panelu, v samostatném okně webového prohlížeče. Stránka se otevře v prohlížeči podle aktuální adresy URL, takže změny, které jste provedli při práci se stránkou, například vyplněné položky formuláře, se na stránku nemusí přenést<br/></li>
 <li><img alt="icon: search requests" src="find-icon.png" />
 <strong>Hledání v žádostech</strong> - do vstupního pole zadejte číslo hledaného požadavku nebo část jejího názvu a stiskněte toto tlačítko. Na hlavním panelu se zobrazí tabulka nalezených žádostí<br/></li>
 <li><img alt="icon: Menu" src="menu.png" />
 <strong>Menu</strong> - otevře hlavní a uživatelské menu aplikace ALVAO WebApp na aktuální stránce aplikace ALVAO WebApp.</li>
 <li><strong>Oblast podokna úloh</strong> - v oblasti podokna se zobrazí požadavek z ALVAO Service Desk související s aktuálně vybranou položkou v aplikaci Outlook, tj. zpráva (e-mail), událost, schůzka nebo úkol. Položka musí obsahovat značku předmětu existujícího požadavku (např. T123ALVAO) <ul>
 <li>Pokud neexistuje žádný požadavek odpovídající aktuálně vybrané položce, zobrazí se na panelu přehled naposledy zobrazených požadavků a poslední komunikace odesílatele, pokud je jeho e-mailová adresa zadána v <strong>Service Desku</strong>. <br />
 </li>
 </ul>
 Ve výchozím nastavení je panel v <strong>režimu náhledu</strong>, kdy se jeho obsah automaticky aktualizuje podle vybrané položky v aplikaci MS Outlook. Pokud začnete s požadavkem na panelu pracovat (např. začnete psát poznámku do jeho deníku), panel se přepne do <strong>režimu úprav</strong>, kdy se jeho obsah neaktualizuje při výběru jiné položky v aplikaci MS Outlook. Panel můžete přepnout zpět do režimu náhledu klepnutím na tlačítko <strong>Obnovit</strong>.</li>
	</ul>
</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>


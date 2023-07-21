<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
<p>Tato záložka umožňuje upravovat základní <a href="../../../../alvao-asset-management/objects-and-properties">objekt</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Název objektu</strong> - zadejte název objektu. Pokud se název objektu skládá z vlastností, zobrazí se v poli Název postupně jednotlivé vlastnosti. </li>
 <li><a href="choose-icon">Změnit ikonu</a>- změna ikony objektu. Ikonu objektu lze změnit pouze v příslušné šabloně objektu.</li> <li><strong>Druh objektu</strong> - vyberte <a href="../../../../alvao-asset-management/implementation/node-class"> z nabídky druh objektu</a>. <ul><li><strong>..</strong></li></ul>. <ul><li>- nebo vyberte druh objektu v samostatném okně.</li></ul> <ul><li><strong>Zobrazit všechny druhy objektů</strong> - zapněte, pokud chcete vybrat druh objektu, který není typem počítače</li></ul> </li><div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
 Po změně druhu objektu se objekt automaticky sjednotí podle příslušné šablony (pokud existuje).<br/>Při změně druhu objektu z "počítače" na jiný druh se automaticky zruší licence objektu a odstraní se instalace, detekce a požadavky na detekci.<br/>Druh objektu může změnit pouze uživatel s rolí <i>Asset Management administors</i> nebo <i>Asset managers</i>. Správce aktiv může změnit druh objektu pouze u počítačů a pouze u jiného typu počítače </div>
 
	
 <li><strong>GUID objektu v Active Directory</strong> - Zobrazuje hodnotu, která váže objekt k Active Directory. Pokud zde není uvedena žádná hodnota, pak objekt není propojen se službou AD. 
</li> <li> <div class="note"> <div class="icon"></div></div>
 <div class="note"> <div class="title">Poznámky:</div><br/>Hodnota se zobrazuje pouze v případě, že byl objekt importován z AD.<br/>Pole nelze upravovat: lze jej buď <strong>smazat</strong>, nebo jeho hodnotu zkopírovat.<br/>Smazáním se přeruší vazba mezi objektem a AD, pak je možné upravovat hodnoty vlastností importovaných z AD.</div></li> <li> Příznaky  <ul>
 <li><strong>Automaticky aktualizovat podle detekce</strong>- Povolit, pokud má být objekt automaticky aktualizován údaji z detekce hardware.</li>
 <li><strong>Ignorovat nesrovnalosti s detekcí</strong> - zapněte, pokud hardwarová (nebo softwarová) detekce nemá hlásit chybu, pokud je zjištěn rozdíl proti detekci.</li>
 <li><strong>Nepohyblivý</strong> - zapněte, pokud chcete, aby objekt nebylo možné přesunout na jiné místo ve stromu.  <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Tuto hodnotu může změnit pouze správce.</div></li>
 <li><strong>Skrytý objekt</strong> - zapněte, pokud má být objekt skrytý.  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Skryté objekty se ve stromu objektů zobrazí pouze tehdy, je-li jejich zobrazení povoleno v nastavení programu<strong>(Zobrazit</strong>- <strong>Skryté objekty</strong>). </div>
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Tuto hodnotu může změnit pouze správce.</div></li></ul>
	</ul>
</asp:Content>

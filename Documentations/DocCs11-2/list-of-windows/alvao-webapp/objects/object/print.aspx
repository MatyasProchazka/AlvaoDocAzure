<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Tisk</h1>

  <p>V tomto formuláři vyberte šablonu tiskové sestavy, kterou chcete vytisknout, a v případě předávacích protokolů vyplňte další informace.</p>

  <p>
  Volby: V případě, že se jedná o předání předávacího protokolu, můžete zadat následující možnosti:</p>
  <ul>
  <li><b>Výběr šablony tiskové sestavy</b> - zadejte alespoň část názvu šablony tiskové sestavy, kterou chcete použít, a poté v rozevírací nabídce vyberte požadovanou šablonu.  <ul>
  <li><b>...</b> - nebo vyberte šablonu v tabulce.</li>
  </ul>
  <div class="note">
  <div class="icon"></div>
   <div class="title">Poznámka:</div>
	  Správci Alvao mohou nabídku tiskových sestav upravit v nabídce <b>WebApp - Administration - Asset Management</b> - <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a></div>
  </li>
  <li><b>Generovat nový dokument</b> - povolte, pokud chcete vytvořený interní předávací protokol ve formátu PDF uložit do <a href="../../../../alvao-asset-management/documents">úložiště dokumentů</a> jako nový dokument.  <ul>
  <li><b>Složka dokumentu</b> - vyberte <a href="../../../../alvao-asset-management/documents">složku</a>, adresář, kam chcete vytvořený dokument uložit. Tato možnost je k dispozici pouze v případě, že máte oprávnění k více složkám dokumentů <a href="../../../../alvao-webapp/administration/asset-management/document-folders"></a>.</li>
  </ul>
  </li>
  <li><b>Číslo dokumentu</b> - zadejte identifikační číslo dokumentu. Tato položka je k dispozici pouze pro <a href="../../../../alvao-asset-management/documents/transfer-protocols">předávací protokoly,</a> jejichž číslo není automaticky generováno číselnou řadou.</li>

  <li><b>Způsob podepisování</b> - z nabídky vyberte způsob podepisování interního předávacího protokolu. Volba je součástí modulu <a href="../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a>.</li>
  <li><strong>Datum předání</strong> - zadejte datum, kdy byl majetek skutečně předán.</li>

  <li><strong>Datum vystavení</strong> - zadejte datum vystavení předávacího protokolu.</li>
  <li><strong>Text</strong> - v případě potřeby zadejte doprovodný text, který bude uveden na předávacím protokolu.</li>
  <li><strong>Předávající osoba</strong> - vyplňte údaje o osobě nebo organizaci, která předává protokol.  <ul>
  <li><b>Interní předávací protokol</b> - zobrazte údaje o osobě, která byla odpovědná za převáděný majetek před jeho posledním převodem (viz vlastnost <a href="../../../../alvao-asset-management/implementation/tree-design">Odpovědná osoba za majetek</a> ). Pokud takovou osobu nelze dohledat, vyplní se zde vaše údaje. Povel <strong>Upravit</strong> otevře okno, ve kterém můžete vybrat další osobu: <ul>
  <li>
 <strong>Jméno a příjmení</strong> - zadejte alespoň část jména nebo příjmení a poté vyberte hledanou osobu z rozbalovací nabídky.   Tím se automaticky vyplní hodnoty vlastností <em>Personal Number (Osobní číslo)</em> a <em>Location (Umístění)</em> příslušného objektu typu <em>User (Uživatel)</em> v následujících položkách  </li>
  <li><strong>Osobní číslo</strong></li>
  <li><strong>Umístění</strong></li>
  </ul>
  </li>
  <li>
 <b>Předávací protokol Externí</b> - zobrazí adresu organizace, kde se objekt nacházel před posledním přesunem.  Příkaz <strong>upravit</strong> otevře okno, ve kterém můžete adresu změnit: <ul>
  <li><strong>Organizace</strong> - zadejte alespoň část názvu organizace a poté vyberte hledanou organizaci z rozbalovací nabídky.   V následujícím poli se automaticky vyplní hodnota vlastnosti <em>Adresa</em> objektu typu <em>Organizace</em>.</li>
  <li>
 <strong>Adresa</strong> - pokud chcete adresu upravit ručně, vymažte nejprve obsah výše uvedeného pole <em>Organizace</em>. </li>
  </ul>
  </li>
  </ul>
  </li>
  <li><strong>Příjemce</strong> - vyplňte údaje o přebírající osobě nebo organizaci.  <ul>
  <li><b>Interní předávací protokol</b> - zobrazte údaje o osobě, která je aktuálně odpovědná za převáděný objekt (viz vlastnost <a href="../../../../alvao-asset-management/implementation/tree-design">Odpovědný za majetek</a>). Pokud takovou osobu nelze dohledat, vyplní se zde vaše údaje. Pomocí příkazu k <strong>úpravě</strong> můžete vybrat jinou osobu, viz <em>Prodejce</em>.</li>
  <li><b>Předávací protokol Externí</b> - zobrazuje adresu organizace, kde se přesouvaný objekt aktuálně nachází. Adresu můžete změnit pomocí příkazu k <strong>úpravě</strong>, viz <em>Předávající</em>.</li>
  </ul>
  </li>
  </ul>

</asp:Content>

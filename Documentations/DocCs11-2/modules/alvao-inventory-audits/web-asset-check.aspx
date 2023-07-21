<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Webová inventura</h1>

    <p>
        Webová inventura slouží k inventarizaci majetku, za který zodpovídají jednotliví uživatelé, přímo těmito uživateli. Uživatelé během inventury v ALVAO WebApp ve formuláři se seznamem majetku, za který zodpovídají, postupně označí položky, které při inventuře našli a které ne.
    </p>

    <p>V porovnání s tradičními postupy inventarizace, ať už pomocí tištěných inventárních seznamů nebo snímačů čárových kódů, je tento způsob výrazně rychlejší a efektivnější.</p>

    <h2>Základní nastavení</h2>
    <ol>
        <li>V <b>aplikaci ALVAO WebApp - Správa - Nastavení</b><ol>
      <li>Na stránce <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">Odesílání zpráv</a> nastavte server SMTP a odesílatele zpráv.</li>
      <li>Na stránce <a href="../../list-of-windows/alvao-webapp/administration/settings/webapp">WebApp</a> zadejte adresu URL aplikace ALVAO WebApp do pole WebApp (URL).</li>
  </ol>
        </li>
        <li>V <b>aplikaci</b> ALVAO <b>WebApp - Administration - Asset Management - Settings</b> na stránce <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/web-asset-check">Web asset check</a> in text nastavte v textu oznámení správnou adresu URL odkazu na stránku <i>Asset check</i> (https://&lt;WebApp&gt;/Alvao/AssetCheck domain). Upravte text oznámení podle potřeby</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud vám nevyhovuje výchozí nastavení sloupců na formuláři 
        webové inventury v aplikaci ALVAO, nastavte požadované zobrazení na libovolném uživateli a profilem tohoto uživatele poté přepiště profil <i>Výchozí nastavení - Webová inventura - uživatelé zodpovědní pouze za svůj přidělený majetek</i>, případně <i>Výchozí nastavení - Webová inventura - uživatelé zodpovědní za majetek v oddělení</i>. (tj. zodpovídají i za majetek, který není ve stromu umístěn pod nimi, viz vlastnost <i>Za majetek zodpovídá</i>).    </div>

    <h2>Inventura majetku</h2>
    <p>
       <a href="stocktaking">Zahajte inventuru</a> a vytvořte soubor čtečky se zapnutou volbou <b>Webová inventura</b>. Webovou inventuru lze provést pouze u majetku, za který někdo zodpovídá, tj. má vyplněnou (nebo zděděnou) vlastnost <a href="../../alvao-asset-management/implementation/tree-design">Za majetek zodpovídá</a>.    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        V rámci jedné inventury můžete vytvořit další soubory čteček pro <a href="physical-asset-check">fyzickou inventuru</a> a obě metody inventurizace takto kombinovat. Jeden majetek může být uveden v souboru pro skutečnou čtečku i v souboru pro webovou inventuru. Pokud je majetek inventarizován čtečkou dříve než přes web, zobrazí se uživateli ve formuláři jako již potvrzený. 
    </div>

    <h2>Odesílání oznámení</h2>
    <p>Uživatelům, kteří budou provádět webovou inventuru, můžete zasílat oznámení s informacemi o inventuře:</p>
    <ol>
        <li>V hlavní nabídce AM Console příkazem <b>Tools - Asset Inventory (Nástroje - Inventura majetku</b>) otevřete okno inventury.</li>
        <li>Použijte příkaz <b>Webová inventura - Odeslat oznámení</b>.</li>
        <li>Před odesláním se otevře okno webového prohlížeče s náhledem zprávy. Je důležité, aby oznámení obsahovalo správný odkaz na stránku <i>Asset check (Inventura majetku)</i>, prostřednictvím které uživatelé potvrdí svůj svěřený majetek.</li>
        <li>Zkontrolujte text oznámení a poté stiskněte tlačítko <b>Odeslat</b>. Oznámení bude odesláno všem uživatelům, kteří jsou odpovědní za majetek v souboru čtečky.</li>
    </ol>

    <p>
        Během procesu inventarizace můžete uživatelům po určité době oznámení odeslat znovu. Oznámení bude odesláno pouze uživatelům, kteří ještě neoznačili všechen majetek, za který jsou zodpovědní, ve svém formuláři ve WebApp.</p>

    <h2>Potvrzení majetku uživateli</h2>
    <p>
        Uživatelé obdrží oznámení o probíhající inventuře a přes odkaz, který je na něm uveden, si zobrazí formulář <i>Inventura majetku</i>. Na formuláři zkontrolují údaje o majetku a potvrdí, zda majetek odpovídá zadaným údajům. Pokud mají k majetku další připomínky, mohou napsat zprávu správci majetku. 
    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Uživatelé mohou formulář pro <i>Inventuru majetku</i> zobrazit také pomocí příkazu ALVAO WebApp - User Menu (nabídka uživatele) - <i>Asset check (Inventura majetku)</i>. Příkaz se v nabídce zobrazí pouze v případě, že probíhá inventura majetku, tj. inventura je otevřená. 
    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Text na formuláři lze změnit na <b>stránce ALVAO WebApp - Správa - Asset Management - Nastavení </b> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/web-asset-check">Webová inventura.</a>   </div>

    <h2>Zpracování výsledků</h2>
    <p>
        Jakmile jednotliví uživatelé začnou potvrzovat svůj majetek, začnou se v okně <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">Inventura majetku</a> průběžně zobrazovat výsledky v horní tabulce ve sloupcích <i>Datum inventury,</i> <i>Stav</i> a <i>Vzkaz pro správce majetku</i>. Výsledky můžete průběžně zpracovávat, viz <a href="stocktaking">Inventura majetku</a>. Případně můžete uživatelům po určité době znovu zaslat oznámení. Oznámení budou odeslána pouze uživatelům, kteří ještě nepotvrdili všechen svůj majetek. 
    </p>

</asp:Content>

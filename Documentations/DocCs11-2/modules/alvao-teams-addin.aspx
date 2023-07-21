<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO for Teams</h1>
    <p>
        ALVAO for Teams je doplněk pro Microsoft Teams, který umožňuje    </p>
    <ul>
        <li>vytvořit nový požadavek v aplikaci Alvao ze zprávy,</li>
        <li>pohodlně vyhledávat požadavky a další užitečné informace,</li>
        <li>vkládat vazby na požadavky do odesílaných zpráv,</li>
        <li>přijímat oznámení ze služby Alvao.</li>
    </ul>

    <h2>Technické požadavky</h2>
    <ul>
        <li>Služba ALVAO Service Desk (poskytovaná jako služba SaaS)</li>
        <li>Ověřování uživatelů pomocí služby <a href="../alvao-asset-management/implementation/users/authentication/aad">Azure Active Directory</a></li>
    </ul>

    <h2>První spuštění</h2>
    <p>
        Při prvním spuštění doplňku zadejte adresu rozhraní ALVAO REST API, kterou vám poskytl správce služby Alvao.<br />
        Poté se přihlaste pomocí svého účtu Microsoft (Azure Active Directory)    </p>
    <h2>ALVAO Bot</h2>
    <p>Chatujte s <em>ALVAO Botem</em> v nabídce <strong>Teams - Chat - ALVAO Bot</strong> a zjistěte užitečné informace nebo sami vyřešte své problémy. Zadáním <strong>nápovědy</strong> získáte přehled dostupných možností včetně seznamu tlačítek představujících dlaždice pod vyhledávacím polem na <a href="../list-of-windows/alvao-webapp/main">hlavní stránce</a> webové aplikace, jako je například <em>Odeslat nový požadavek</em>, <em>Můj prostředek</em> atd.</p>
    <p>Zadejte frázi, kterou chcete v systému Alvao vyhledat, a bot vám odpoví seznamem nalezených aktuálních novinek, znalostních článků, vašich stávajících požadavků a služeb pro zadávání nových požadavků. Vyhledávání funguje podobně jako vyhledávání na <a href="../list-of-windows/alvao-webapp/main">hlavní stránce</a> webové aplikace.</p>
    <p>Zapnutím možnosti <em>WA - uživatelské menu (vpravo nahoře) - Nastavení - Zobrazení</em> - <a href="../list-of-windows/alvao-webapp/settings/view">Odesílání oznámení pomocí doplňku MS Teams</a> vás bude bot upozorňovat na důležité události v Alvao přímo v chatu.</p>
    <p>Bot navíc rozumí následujícím klíčovým slovům:</p>
    <ul>
        <li>config - konfigurace doplňku</li>
        <li>login - přihlášení uživatele do Alvao</li>
        <li>logout - odhlášení uživatele z Alvao</li>
    </ul>

    <h2>Vytvoření požadavku z chatu</h2>
    <ol>
        <li>V chatu MS Teams nebo v týmovém kanálu najeďte kurzorem myši na zprávu pro zobrazení příkazů, klikněte na tlačítko se třemi tečkami a vyberte možnost <strong>Další akce - Vytvořit požadavek v Alvao</strong>.</li>
        <li>Do formuláře vyplňte další informace.</li>
        <li>Dialogové okno odešlete a požadavek bude vytvořen v systému Alvao. Do oblasti pro sestavení zprávy se vloží nová záložka s podrobnostmi o požadavku, abyste jej mohli ihned odeslat do chatu.</li>
    </ol>

    <h2>Vložení dlaždice požadavku do chatu</h2>
    <ol>
        <li>V aplikaci MS Teams vyberte aplikaci <em>Alvao</em> na příkazovém řádku pod polem pro zadávání zpráv.</li>
        <li>Doplněk vám automaticky nabídne 5 požadavků, se kterými jste v aplikaci Alvao naposledy pracovali.</li>
        <li>Pokud chcete vyhledat další požadavek, zadejte do vstupního řádku alespoň část názvu požadavku, číslo požadavku, část názvu služby, jméno žadatele nebo jméno řešitele. Doplněk vám nabídne požadavky odpovídající zadanému textu.</li>
        <li>Z nabídky vyberte hledaný požadavek. Tím se do chatu nebo týmového kanálu vloží dlaždice představující požadavek. Příjemci zprávy mohou přejít na stránku požadavku v systému Alvao kliknutím na tlačítko <em>Zobrazit požadavek</em> ve spodní části dlaždice.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        <br />
        Dlaždici požadavku můžete do textu zprávy vložit také vložením url adresy stránky požadavku do <em>webové aplikace Alvao</em>. Adresa url se automaticky změní na dlaždici    </div>

    <h2>Vyhledávání požadavků</h2>
    <ol>
        <li>V aplikaci MS Teams zadejte do vyhledávacího řádku v záhlaví okna <strong>@alvao</strong>.</li>
        <li>Do vstupního řádku doplňku zadejte alespoň část názvu požadavku, číslo požadavku nebo jiné informace. Doplněk vám nabídne požadavky odpovídající zadanému textu.</li>
        <li>V nabídce klikněte na hledaný požadavek. Pod vstupním řádkem se zobrazí dlaždice požadavku. V dlaždici stiskněte tlačítko <strong>Zobrazit požadavek</strong>. Tím se ve webovém prohlížeči zobrazí stránka s požadavkem.</li>
    </ol>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Kliknutím na ikonu v pravém horním rohu můžete dlaždici zkopírovat do schránky a poté ji vložit do zprávy chatu nebo do týmového kanálu    </div>

</asp:Content>

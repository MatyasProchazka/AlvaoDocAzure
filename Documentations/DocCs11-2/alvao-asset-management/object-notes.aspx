<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Poznámky k objektu</h1>
    Poznámky slouží k zaznamenání libovolných textových informací, jako jsou nastavení ovladače zařízení, poruchy hardware atd. K poznámce může být připojen také soubor nebo odkaz.<p>
        Poznámky se zobrazují v <a href="../list-of-windows/alvao-asset-management-console">hlavním okně</a> na kartě Žurnál    </p>
    <p>S poznámkami mohou pracovat pouze <a href="object-log">oprávnění uživatelé</a>.</p>

    <h2>Vytvoření nové poznámky</h2>
    <ol>
        <li>Vyberte konkrétní objekt ve stromu objektů.</li>
        <li>Přejděte na kartu Diář a použijte "Přidat - poznámka".</li>
        <li>Zobrazí se okno <a href="../list-of-windows/alvao-asset-management-console/edit/note">nové poznámky</a>.</li>
        <li>Vyberte konkrétní objekt ve stromu objektů.</li>
    </ol>

    <h2>Zobrazení / úprava existující poznámky</h2>
    Poznámku může upravovat pouze její autor. Ostatní mohou text poznámky pouze číst.<ol>
        <li>Vyberte konkrétní objekt ve stromu objektů.</li>
        <li>Přejděte na kartu Deník, vyberte konkrétní poznámku a použijte příkaz "Upravit" z místní nabídky nebo dvakrát klikněte myší na záznam v deníku.</li>
        <li>Zobrazí se okno <a href="../list-of-windows/alvao-asset-management-console/edit/note">poznámky</a>.</li>
        <li>Pokud jste autorem poznámky, můžete informace upravit a změny uložit klepnutím na tlačítko OK.</li>
    </ol>

    <h2>Odstranění (skrytí) poznámky v deníku</h2>

    <ol>
        <li>Vyberte konkrétní objekt ve stromu objektů.</li>
        <li>Přejděte na kartu Deník, vyberte konkrétní poznámku a použijte příkaz "Odstranit" z místní nabídky.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Poznámka bude skryta a zobrazí se až po povolení příkazu "Zobrazit smazané položky" v místní nabídce tabulky karty Deník    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Správci mohou obnovit smazané poznámky pomocí příkazu Nástroje - Databáze - <strong>Obnovit smazané položky</strong>   </div>

</asp:Content>

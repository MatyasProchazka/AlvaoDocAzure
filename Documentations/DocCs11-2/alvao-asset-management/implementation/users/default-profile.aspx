<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní výchozí nastavení uživatele</h1>
    <p>
        Každý uživatel má vlastní <a href="../../../list-of-windows/alvao-webapp/settings/settings-backup">osobní nastavení</a>aplikací Alvao, <a href="../../../list-of-windows/alvao-webapp/settings/settings-backup">které</a>si může individuálně změnit. Při prvním spuštění jsou aplikace nastaveny na výchozí nastavení. Pokud vám výchozí uživatelské nastavení <strong>systému</strong> nevyhovuje, můžete si definovat <strong>vlastní</strong> výchozí nastavení. Systém podporuje různá výchozí nastavení pro   </p>
    <ul>
        <li>Žadatele, tj. pro běžné uživatele, kteří nemají v žádné službě roli řešitele, správce, čtenáře nebo výjimečného řešitele.</li>
        <li>Členové řešitelského týmu, tj. uživatelé s rolí ve službách.</li>
    </ul>
    Podle níže uvedeného postupu definujte výchozí nastavení pro nové uživatele nebo přepište stávající nastavení uživatelů těmito výchozími nastaveními<h2>Vytvoření vlastního výchozího nastavení</h2>
    <ol>
        <li>V aplikacích Alvao nastavíte vy nebo jiný uživatel tabulky tak, aby vypadaly jako výchozí nastavení.</li>
        <li>V nabídce <strong>WebApp - Administration - Users (Webové aplikace - Správa - Uživatelé</strong>) vyberte systémového uživatele <em>Default Settings - Requesters (Výchozí nastavení - Žadatelé)</em> nebo <em>Default Settings - Solution Team Members (Výchozí nastavení - Členové řešitelského týmu)</em> podle typu uživatele, kterému chcete změnit výchozí nastavení, a z nabídky příkazů vyberte <strong>Set Profile (Nastavit profil)</strong>.</li>
 <li>V okně vyberte svůj účet (nebo účet uživatele, který nastavil požadavku požadované výchozí nastavení) a potvrďte přepsání.</li>
    </ol>

    Toto výchozí nastavení se použije pro nové uživatele při prvním přihlášení do aplikace Alvao. Stávajících uživatelů, kteří již s aplikacemi pracují, se změna nedotkne. Musí obnovit výchozí nastavení (viz <a href="../../working-with-tables/backup-profile">Zálohování a obnova nastavení tabulek</a>), nebo je může přepsat správce podle níže uvedeného postupu  <h2>Přepsání osobních nastavení uživatele výchozím nastavením</h2>
    <ol>
        <li>V nabídce <strong>WebApp - Administration (Správa) - Users (Uživatelé)</strong>vyberte uživatele, u kterého chcete změnit nastavení.</li>
        <li>V nabídce příkazů vyberte možnost <strong>Nastavit profil</strong>.</li>
        <li>V okně vyberte možnost <em>Výchozí nastavení - Žadatelé</em> nebo <em>Výchozí nastavení - Členové výzkumného týmu</em> a potvrďte přepsání nastavení.</li>
    </ol>

</asp:Content>

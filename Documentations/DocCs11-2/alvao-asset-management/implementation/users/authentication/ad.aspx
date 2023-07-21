<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Ověřování služby Active Directory</h1>
    <p>Uživatelé, kteří mají účet Active Directory (AD), se mohou do aplikací Alvao přihlašovat pomocí:</p>
    <ul>
        <li>Pro<strong>ověření</strong> v systému Alvao se použije uživatelský účet, pod kterým je uživatel aktuálně přihlášen do systému Windows na daném počítači. Uživatel nemusí do aplikací Alvao zadávat žádné přihlašovací údaje.</li>
        <li><strong>Formulářové ověřování</strong> - při spouštění aplikací Alvao uživatel zadává své uživatelské jméno a heslo uložené v AD.</li>
    </ul>

    <h2>Import uživatelů ze služby Active Directory</h2>
    <p>Aby mohl být uživatel v systému Alvao ověřován pomocí služby AD, musí být jeho účet nejprve importován ze služby AD do systému Alvao pomocí nástroje <a href="../../../../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a>. Doporučujeme importovat uživatele do systému Alvao pravidelně, například naplánováním úlohy na serveru, která se má spustit jednou denně.</p>
    <p>Při prvním importu vytvoří Alvao všechny uživatele a skupiny podle zadané cesty LDAP. Při dalším importu se vytvoří pouze noví uživatelé a skupiny a informace o stávajících uživatelích a skupinách se aktualizují. Uživatelé a skupiny odebraní z AD nejsou z Alvao automaticky odstraněni. Pokud importujete uživatele z celé služby AD, budou do systému Alvao importovány i některé pomocné uživatelské účty, například IUSR_..., IWAM_.... Tyto pomocné účty doporučujeme skrýt příkazem <strong>Skrýt</strong>. Pokud byste tyto uživatele odstranili příkazem <strong>Odebrat</strong>, při příštím importu by se znovu vytvořili.</p>

    <h2>Ruční import</h2>
    <p>Chcete-li importovat uživatele mimo plán, spusťte ručně naplánovanou úlohu vytvořenou na serveru nebo spusťte nástroj <a href="../../../../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a> přímo z příkazového řádku.</p>

    <h2>Nastavení</h2>
    <p>Na stránce <strong>WebApp - Administration - Settings - </strong><a href="../../../../list-of-windows/alvao-webapp/administration/settings/activedirectory">Active Directory</a> nastavte parametry ověřování AD.</p>

</asp:Content>

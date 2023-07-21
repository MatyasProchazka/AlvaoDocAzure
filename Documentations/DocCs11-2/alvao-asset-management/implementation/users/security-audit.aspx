<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Audit změn uživatelských oprávnění</h1>

    <p>Produkt obsahuje tři sestavy, které slouží k auditu změn uživatelských oprávnění.</p>

    <table class="wide">
        <thead>
            <tr>
                <th>Název sestavy</th>
                <th>Název souboru RDL</th>
                <th>Popis</th>
                <th>Název zobrazení databáze</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Strom objektů - Protokol nastavení oprávnění</td>
                <td>Strom objektů - Protokol nastavení zabezpečení csy.rdl<br />
                    Strom objektů - Protokol nastavení zabezpečení enu.rdl</td>
                <td>Poskytuje seznam změn oprávnění ve stromu objektů.</td>
                <td>Query.NodeRightLog</td>
            </tr>
            <tr>
                <td>Protokol nastavení členství ve skupině</td>
                <td>Protokol nastavení členství rolí csy.rdl<br />
                    Protokol členství rolí enu.rdl</td>
                <td>Poskytuje seznam změn členství uživatelů a skupin ve skupinách.</td>
                <td>Query.RoleMembershipLog</td>
            </tr>
            <tr>
                <td>Protokol přihlášení uživatelů</td>
                <td>Protokol přihlášení uživatele csy.rdl<br />
                    User Logon Log enu.rdl</td>
                <td>Poskytuje seznam přihlášení/odhlášení jednotlivých uživatelů do/z konzoly Asset Management Console.</td>
                <td>Query.UserLogonLog</td>
            </tr>
        </tbody>
    </table>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Názvy databázových pohledů můžete použít v okně AM Console - Tools - Database - <a href="../../../list-of-windows/alvao-asset-management-console/tools/database/sql-query">SQL Query</a>. Zde si můžete zobrazit stejná data jako v sestavě, aniž byste museli používat službu Reporting Services    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Reporty jsou pouze v českém a anglickém jazyce    </div>

    <h2>Instalace</h2>
    Soubory RDL naleznete na <a href="https://www.alvao.com/download">adrese www.alvao.com/download</a> v části Asset Management v archivu SecurityAuditReports.zip.<br />
    Popis instalace sestav naleznete v části <a href="../maintenance-reports/installation">Instalace sestav ve službě Microsoft SQL Server Reporting Services</a>   <h2>Strom objektů - protokol nastavení oprávnění</h2>
    Sestava zobrazuje seznam změn uživatelských oprávnění ve stromu objektů za zvolené časové období.<br />
    Kromě provedených změn je v sestavě uvedeno také datum a čas provedení změny a jméno uživatele, který změnu provedl    <h3>Parametry sestavy</h3>
    <ul>
        <li><strong>Od</strong> - zadejte datum, od kterého se mají záznamy v sestavě zobrazovat.</li>
        <li><strong>Do</strong> - zadejte datum, do kterého mají být záznamy zobrazeny.</li>
        <li><strong>Uživatel</strong> - z nabídky vyberte uživatele, kteří mají být v sestavě zobrazeni.</li>
        <li><strong>Skupina</strong> - z nabídky vyberte skupiny, které mají být v sestavě zobrazeny.</li>
        <li><strong>Upravit</strong> - z nabídky vyberte autory změn oprávnění, které se mají v sestavě zobrazit.</li>
    </ul>

    <h2>Nastavení členství ve skupině</h2>
    V sestavě se zobrazí seznam změn členství uživatelů a skupin za zvolené časové období.<br />
    Kromě provedených změn je v sestavě uvedeno také datum a čas provedení změny a jméno uživatele, který změnu provedl    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud je uživatel nebo skupina odstraněna, změna členství se nezaznamená. Pouze pokud je odstraněna skupina, která byla členem jiných skupin, protokol zaznamená odstranění skupiny z těchto skupin    </div>

    <h3>Parametry hlášení</h3>
    <ul>
        <li><strong>Od</strong> - zadejte datum, od kterého se mají záznamy v sestavě zobrazovat.</li>
        <li><strong>Do</strong> - zadejte datum, do kterého mají být záznamy zobrazeny.</li>
        <li><strong>Člen</strong> - vyberte z nabídky uživatele a skupiny, které se mají v sestavě zobrazit.</li>
        <li><strong>Skupina</strong> - z nabídky vyberte skupiny členů, které se mají v sestavě zobrazit.</li>
        <li><strong>Upravit</strong> - z nabídky vyberte autory členských změn, které se mají v sestavě zobrazit.</li>
    </ul>

    <h2>Protokol přihlášení uživatele</h2>
    Protokol zobrazuje seznam přihlášení a odhlášení uživatelů do/z konzoly AM ve zvoleném časovém období.<br />
    U každého záznamu je uveden také název počítače, na kterém se uživatel do aplikace přihlásil    <h3>Parametry sestavy</h3>
    <ul>
        <li><strong>Od</strong> - zadejte datum, od kterého se mají přihlášení v sestavě zobrazovat.</li>
        <li><strong>Do</strong> - zadejte datum, do kterého mají být přihlášení v sestavě zobrazena.</li>
        <li><strong>Uživatel</strong> - z nabídky vyberte uživatele, kteří mají být v sestavě zobrazeni.</li>
        <li><strong>Aplikace</strong> - z nabídky vyberte aplikace, které se mají v sestavě zobrazit.</li>
        <li><strong>Počítač</strong> - z nabídky vyberte počítače, které se mají v sestavě zobrazit.</li>
        <li><strong>Administrators Only (Pouze administrátoři</strong> ) - tuto možnost povolte, pokud se mají v sestavě zobrazit pouze uživatelé, kteří byli členy skupiny <i>administrátorů Asset Management</i> v době přihlášení do konzoly AM.</li>
    </ul>




</asp:Content>

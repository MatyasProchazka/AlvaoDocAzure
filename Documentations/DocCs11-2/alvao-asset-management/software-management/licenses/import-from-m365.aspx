<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Import přiřazení licencí ze služby Microsoft 365</h1>
    <p>
        Alvao podporuje pravidelný import přiřazení licencí ze služby Microsoft 365 (M365). 
        Import se provádí pomocí skriptu PowerShell, který vygeneruje soubor CSV, který se poté importuje do systému Alvao pomocí nástroje <a href="../import-lic">ImportLic</a>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Import licencí přiřazuje licence z M365 k existujícím licencím softwaru v systému Alvao na základě jedinečného ID licence    </div>

    <h2>Konfigurace</h2>
    <ol>
        <li>Vytvořte novou (nebo použijte stávající) aplikaci v MS Azure Active Directory.</li>
        <li>Aplikace musí mít následující oprávnění k rozhraní Graph API   <ul>
                <li><i>Uživatel.Číst.Vše</i></li>
                <li><i>Organization.Read.All</i></li>
            </ul>
        </li>
        <li>Upravte skript PowerShell <i>Export_M365_licences_to_CSV.ps1</i> (nachází se v instalační složce AM Console) a do proměnných na začátku skriptu zadejte identifikátory Azure AD  <ul>
                <li><i>$tenantId</i></li>
                <li><i>$clientId</i></li>
                <li><i>$clientSecret</i></li>
            </ul>
        </li>
        <li>Volitelně změňte cestu a název generovaného výstupního souboru CSV<i>(</i> proměnná<i>$csvOutput</i> ).</li>
    </ol>

    <h2>Počáteční import</h2>
    <ol>
        <li>V AM Console - Evidence licencí nejprve vytvořte licence, jejichž přiřazení chcete pravidelně importovat z M365. Například <i>Microsoft Office 365 Enterprise E3</i>. Pole <i>Licenční model</i> by mělo být na uživatele          <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Není důležité vyplňovat přesný počet licencí a licenčních položek, protože budou importovány z M365 později        </div>
        </li>
        <li>
            Spusťte skript prostředí PowerShell <i>Export_M365_licences_to_CSV.ps1</i> ručně a počkejte na vytvoření souboru CSV   <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Skript PS používá modul <i>Microsoft.Graph</i>, který se v případě potřeby sám nainstaluje. V případě potřeby potvrďte výzvu k instalaci tohoto modulu a jeho závislostí            </div>
        </li>
        <li>
            Otevřete vygenerovaný soubor CSV (např. v <i>Poznámkovém bloku</i>) a namapujte všechny jedinečné identifikátory licencí M365<i>(</i> sloupec<i>Uid</i> v CSV) na existující licence v systému Alvao. 
            Tyto identifikátory UID zadejte do pole <i>ID licence v externím systému</i> příslušných licencí        <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Mapa názvů produktů Microsoft a jejich identifikátorů UID existuje v <a href="https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/licensing-service-plan-reference">dokumentaci</a> společnosti Microsoft         </div>
        </li>
        <li>
            Spusťte nástroj <a href="../import-lic">ImportLic</a> v režimu UpdateItems. Licence v systému Alvao, které jste namapovali pomocí UID na licence z M365, budou automaticky aktualizovány            <ul>
                <li>Pole<i>Počet</i> </li>
                <li>Všechny položky licencí</li>
            </ul>
            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                V případě potřeby vytvoří nástroj <a href="../import-lic">ImportLic</a> nové uživatele ve složce Importované objekty       </div>
        </li>
    </ol>

    <h2>Nastavení pravidelného importu</h2>

    <ol>
        <li>Jakmile jsou licence v systému Alvao spárovány s licencemi M365 prostřednictvím UID, můžete opakovaně spouštět skript PS a nástroj <a href="../import-lic">ImportLic</a> pro aktualizaci přiřazení licencí v systému Alvao. Doporučujeme naplánovat úlohu na serveru, aby se to provádělo automaticky.</li>
    </ol>

</asp:Content>

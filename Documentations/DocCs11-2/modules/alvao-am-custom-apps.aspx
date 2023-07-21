<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Asset Management Custom Apps</h1>
    <p>Tento modul umožňuje rozšířit <em>správu majetku ALVAO</em> o:</p>
    <ul>
        <li><a href="alvao-am-custom-apps/applications">Aplikace</a></li>
        <li><a href="../list-of-windows/alvao-webapp/administration/data-queries">Datové dotazy</a></li>
        <li><a href="../list-of-windows/alvao-webapp/administration/periodic-alerts">Pravidelná upozornění</a></li>
    </ul>

    <h2>Technické požadavky</h2>
    <ul>
        <li translate="no">ALVAO Asset Management</li>
    </ul>

    <h2>Instalace</h2>
    <p>Po aktivaci modulu na serveru spusťte <a href="../alvao-asset-management/implementation/installation">ALVAO Server Setup</a>, který nainstaluje potřebné komponenty.</p>

    <h3>Ruční instalace</h3>
    <p>Nainstalujte na server adresu <em translate="no">ALVAO Custom Apps WebService</em>:</p>
    <ol>
        <li>Zkontrolujte, zda je na počítači, na kterém chcete spustit <span translate="no">ALVAO Custom Apps WebService</span>, nainstalován intranetový server IIS ve verzi, která splňuje <a href="../alvao-asset-management/implementation/requirements">technické požadavky</a>.</li>
        <li>Doporučujeme vytvořit vlastní fond aplikací na serveru IIS <a href="../alvao-asset-management/implementation/installation/own-iis-apppool" translate="no">ALVAO AppPool .NET 4.0</a>. Tento krok není pro spuštění aplikace nezbytně nutný, ale významně ovlivňuje rychlost načítání webové aplikace.</li>
        <li>Před instalací se ujistěte, že máte nainstalovaný systém ASP .NET verze 4.7.2 nebo vyšší.</li>
        <li>(Volitelné) Před instalací důrazně doporučujeme nastavit integrované ověřování systému Windows:</li>
            <ol>
        <li>Ve Správci IIS klikněte na aplikaci <strong>AlvaoWebApp</strong> a poté klikněte na položku <strong>Ověřování</strong>.</li>
        <li>Ujistěte se, že je povoleno <strong>ověřování systému Windows</strong> (a všechny ostatní jsou zakázány)       <div class="caution">
        <div class="icon"></div>
         <div class="title">Pozor:</div>
         Ověřování musí být povoleno také na webové stránce, kde je aplikace nainstalována          </div>
        </li>
        <li>V textovém editoru otevřete soubor <strong>web.config</strong> umístěný ve složce ALVAO WebApp.</li>
        <li>Zkontrolujte, zda je v atributu <strong>configuration/system.web</strong> nastaven <strong>režim ověřování</strong> na <span class="console">Windows</span>.</li>
        <li>V kořenovém adresáři služby IIS nastavte <strong>delegaci funkcí (Feature Delegation</strong>) - povolte <span class="console">čtení nebo zápis</span> v následujících režimech ověřování: <span class="console">Anonymní</span>a <span class="console">Windows</span>.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Pozor:</div>
        Tento způsob ověřování nelze použít k ověřování uživatelů, kteří nejsou importováni ze služby Active Directory    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Pozor:</div>
        Pro správnou funkci této metody ověřování je třeba mít v <a href="../../../alvao-service-desk/implementation/installation/webservice-settings">intranetu adresu serveru Alvao</a>   </div>



        <li>Přihlaste se jako správce a spusťte instalační balíček AlvaoCustomAppsWebService.msi. Pokud máte problém s UAC, spusťte instalaci z příkazového řádku pomocí <span class="console">msiexec -i AlvaoCustomAppsWebService.msi.<br /></span></li>
        <li>Při instalaci vyberte fond aplikací <b translate="no">ALVAO AppPool .NET 4.0</b>. Pokud jste tento AppPool nevytvořili v kroku 2, vyberte .NET v4.5.</li>
        <li>Instalační program vytvoří na disku složku (&lt;InetPub&gt;\wwwroot\AlvaoCustomAppsWebService) a také virtuální adresář v IIS (AlvaoCustomAppsWebService).</li>
        <li>Po instalaci je třeba nakonfigurovat soubor <i>web.config</i> ve složce <b translate="no">ALVAO Custom Apps WebService</b> (soubor otevřete v Poznámkovém bloku).</li>
        <li>V řádku:<br />
            <span class="console" translate="no">&lt;connectionStrings&gt;<br />
                &nbsp;&nbsp;&lt;add name=&quot;Db&quot; connectionString=&quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech;TrustServerCertificate=True&quot;&nbsp; providerName=&quot;Microsoft.Data.SqlClient&quot; /&gt;<br />
                &lt;/connectionStrings&gt;</span><br />
            nastavte připojení k databázi. Připojovací řetězec má stejný formát jako v souboru <i>web.config</i> v nastavení aplikace ALVAO WebApp      </li>
        <li>V databázi nastavte identitu aplikačního fondu s oprávněním <strong>public, db_datareader, db_datawriter, db_ddladmin, db_executor</strong>.</li>
        <li>V <strong>ALVAO WebApp - Administrace - Nastavení - </strong><a href="../list-of-windows/alvao-webapp/administration/settings/web-services">Webové služby</a><strong> - <span translate="no">Custom Apps WebService (URL)</span></strong> zadejte cestu ke složce <em translate="no">ALVAO Custom Apps WebService</em>. Například: <span class="console" translate="no">http://server/AlvaoCustomAppsWebService</span></li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        <span translate="no">ALVAO Custom Apps WebService</span> má nastaveno <em>ověřování Windows</em>   </div>


</asp:Content>

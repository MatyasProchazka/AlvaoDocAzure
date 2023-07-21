<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Ověřování služby Azure Active Directory</h1>

    <p>Do systému Alvao se mohou přihlásit pouze uživatelé z jednoho nájemce Azure Active Directory (AAD) a externí uživatelé (hosté) tohoto nájemce. Pokud v systému Alvao povolíte ověřování AAD, nebudou se do systému Alvao moci přihlásit žádní jiní uživatelé mimo AAD.</p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Pozor:</div>
        Pokud přecházíte z ověřování <a href="../../../../alvao-asset-management/implementation/users/authentication/ad">Active Directory (AD</a> ) na ověřování AAD, věnujte pozornost možnostem omezení množiny uživatelů a skupin importovaných z AAD, které se liší od AD, viz níže <em>Rozsah</em>. Před nastavením importu uživatelů z AAD nejprve deaktivujte stávající import uživatelů z AD<a href="../../../../alvao-asset-management/implementation/users/authentication/ad/import-ad">(ImportAD</a>).<br />
    </div>

    <h2>Import uživatelů z AAD (zajištění uživatelů)</h2>
    <p>Viz <a href="https://learn.microsoft.com/en-us/azure/active-directory/saas-apps/alvao-provisioning-tutorial">výukový program: Konfigurace systému ALVAO pro automatické poskytování uživatelů</a>.</p>

    <h2>Nastavení ověřování AAD</h2>
    <ol>
        <li>Na <a href="https://portal.azure.com/#home">portálu Microsoft Azure</a> přejděte do části <strong>Azure Active Directory - Registrace aplikací</strong> a vyberte dříve vytvořenou aplikaci <strong>ALVAO</strong>    </li>
        <li>Na stránce <strong>Overview (Přehled)</strong> nastavte <strong>Redirect URIs (Přesměrování URI)</strong> na <em>https://&lt;WebApp&gt;/Account/LoginMicrosoftEndpoint</em>       </li>
        <li>Na stránce <strong>Authentication (Ověřování)</strong> zaškrtněte <strong>Access tokens (používané pro implicitní toky</strong> ) a uložte nastavení.</li>
        <li>Na stránce <strong>Oprávnění API</strong>  <ol>
                <li>Klepněte na tlačítko <strong>Add a permission (Přidat oprávnění)</strong>, přejděte na kartu APIs my organization uses (Rozhraní API, která používá moje organizace) a vyberte první vytvořenou aplikaci <strong>ALVAO</strong>.</li>
                <li>Zaškrtněte oprávnění <strong>user_impersonation</strong> a klikněte na tlačítko <strong>Add</strong> permissions.</li>
                <li><strong>Udělit souhlas správce pro</strong> dříve přidané oprávnění</li>
                <li>Klikněte na tlačítko <strong>Přidat oprávnění</strong>, vyberte možnost <strong>Microsoft Graph</strong>, vyberte možnost <strong>Delegovaná oprávnění</strong>, zaškrtněte možnost <strong>Presence.Read.All</strong> a klikněte na tlačítko <strong>Přidat</strong> oprávnění. To umožní povolit možnost Zobrazit přítomnost uživatelů.</li>
            </ol>
        </li>
        <li>Poznamenejte si hodnoty z registrace aplikace, které budete potřebovat později        <ol>
                <li>
                   <strong>ID klienta</strong>      </li>
                <li>
                   <strong>ID adresáře (nájemce)</strong>         </li>
                <li>
                   <strong>Pověření klienta - Tajemství klienta - Nové tajemství klienta - Tajemství klienta</strong>      </li>
            </ol>
        </li>
        <li>Do následujícího skriptu SQL vložte výše získané hodnoty <em>Directory (tenant) ID</em> a <em>Client ID</em> a spusťte skript v databázi Alvao.<br />
           <span class="console">INSERT INTO <a href="../../../../alvao-asset-management/implementation/customization/database#U_dbo.AzureAdTenant">AzureAdTenant</a> (AzureTenantId) VALUES (N<em>'&lt;Directory (tenant) ID&gt;'</em>) <br />EXEC spUpdateInsertProperty N'AzureApplicationId', N<em>'&lt;Client ID&gt;</em>' </span>      </li>
        <li>Na serveru v nástroji <strong>IIS Manager</strong>      <ol>
                <li>V aplikaci <strong>Alvao</strong> (WebApp) změňte metodu ověřování na <em>anonymní</em> a <em>formuláře</em>.<br />
                    V přihlašovacích údajích formulářů zadejte       <br />
                   <em>~/Account/LoginMicrosoft</em> adresu      </li>
                <li>V <strong>AssetWebService</strong> (AM WS) nastavte metodu ověřování na <em>anonymní</em>        </li>
                <li>V <strong>AlvaoRestApi</strong> nastavte metodu ověřování na <em>anonymní</em>        </li>
                <li>V <strong>AlvaoCustomAppsWebService</strong> (CA WS) nastavte metodu ověřování na <em>anonymní</em>.</li>
            </ol>
        </li>
        <li>V následujících konfiguračních souborech vyplňte nastavení <strong>AAD_ClientSecret</strong> výše získanou hodnotou <em>Client Secret</em>     <ol>
                <li>WebApp - soubor web.config</li>
                <li>AssetWebService - soubor web.config</li>
                <li>AlvaoService - appsettings.json</li>
                <li>AlvaoRestApi - web.config</li>
                <li>AlvaoCustomAppsWebService - web.config</li>
            </ol>
        </li>
    </ol>
    <p>Další informace o registraci aplikací v AAD naleznete v části <a href="https://docs.microsoft.com/en-us/graph/auth-register-app-v2">Registrace aplikace pomocí koncového bodu Azure AD v2.0 - Microsoft Graph | Microsoft Docs</a>.</p>

    <h2>Import uživatelů do stromu objektů</h2>
    <p>Pokud je aktivována <em>správa aktiv ALVAO</em>, jsou uživatelé automaticky importováni také do <a href="../../../../alvao-asset-management/objects-and-properties">stromu objektů</a> ve složce <em>Read Objects from Active Directory</em>, odkud jsou přesunuti na správné místo ve stromu. Do stromu objektů se importuje stejná sada uživatelů jako v aplikaci <em>WebApp - Administration - </em><a href="../../../../list-of-windows/alvao-webapp/administration/users">Users</a>.</p>

    <p>Při odebrání uživatele z AAD je uživatel automaticky zablokován ve stromu objektů (viz vlastnost <em>Účet je zablokován</em> ), ale není odebrán. Jednou za čas doporučujeme zkontrolovat strom objektů, zda nejsou uživatelé zablokováni, a v případě potřeby je odstranit.</p>

    <p>Pokud aktivujete <em>správu</em> aktiv dodatečně, když jste již importovali uživatele do <em>sestavy Report</em>, stávající uživatelé se ve stromu automaticky nevytvoří. Můžete je dodatečně vytvořit pomocí připraveného <a href="../../../../alvao-asset-management/implementation/users/aad-provisioning-scim/am-import-users.sql">SQL skriptu</a>, který vytvoří všechny uživatele z <em>Reportu</em>, kteří ještě neexistují ve stromu objektů. Hodnoty vlastností se nastaví podle výchozího mapování atributů. Stávající uživatelé zůstanou beze změny.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Můžete také ručně vytvořit malý počet uživatelů ve stromu objektů a nastavit jim hodnoty vlastností podle informací ve <em>zprávě</em> (zejména vlastnost <em>User Name</em>, která je klíčová)    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        <br />
        V případě potřeby můžete import uživatelů do stromu objektů tímto SQL skriptem zakázat:<br />
    </div>
   <span class="console">EXEC spUpdateInsertProperty 'AM.Scim.ImportUsers', NULL, 0</span><p>Po provedení skriptu doporučujeme recyklovat fond aplikací Alvao na serveru IIS, aby se vypnutí importu projevilo okamžitě.</p>
    <p>Import můžete opět zapnout pomocí skriptu:</p>
   <span class="console">EXEC spUpdateInsertProperty 'AM.Scim.ImportUsers', NULL, 1</span><h2>SCIM</h2>
    <p>Import (provisioning) uživatelů z AAD do Alvao využívá rozhraní <a href="https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/user-provisioning">SCIM</a>, přes které Alvao automaticky:</p>
    <ul>
        <li>Vytvářet, upravovat a mazat uživatele v aplikaci <em>WebApp - Administration - </em><a href="../../../../list-of-windows/alvao-webapp/administration/users">Users</a></li>
        <li>Vytvářet, upravovat a mazat skupiny v aplikaci <em>WebApp - Administrace - </em><a href="../../../../list-of-windows/alvao-webapp/administration/groups">Skupiny</a></li>
        <li>Aktualizuje členství uživatelů a skupin ve skupinách</li>
        <li>Vytváří a upravuje uživatele ve <a href="../../../../alvao-asset-management/objects-and-properties">stromu objektů</a> v aplikaci <em>ALVAO Asset Management</em></li>
    </ul>
    <p>AAD průběžně odesílá informace o změnách do systému Alvao prostřednictvím rozhraní SCIM. Většina změn se v systému Alvao projeví do 40 minut, některé, například zablokování uživatele, ještě dříve. Tento interval je zcela v režii systému AAD a nelze jej měnit.</p>
    <p>Rozhraní SCIM je součástí rozhraní ALVAO REST API, které musí být nainstalováno na serveru přístupném z internetu (nebo Azure).</p>

</asp:Content>

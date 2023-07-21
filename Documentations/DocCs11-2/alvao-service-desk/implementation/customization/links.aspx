<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní vazby  v nabídkách</h1>
    V aplikaci ALVAO WebApp můžete v hlavním menu a v uživatelském menu zobrazit vlastní vazby . Tyto vazby  lze lokalizovat pro každý jazyk uživatele. V nabídkách můžete také skrýt některé systémové příkazy a nahradit je například vlastními vazby     <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        V <a href="../../../modules/alvao-sd-custom-apps/applications/custom-commands/general-custom-commands">hlavní nabídce</a> můžete použít funkci podmíněného zobrazení odkazů pouze některým uživatelům na základě rolí nebo členství ve skupinách <a href="../../../modules/alvao-sd-custom-apps/applications/custom-commands/general-custom-commands">vlastních příkazů</a>   </div>

    <h2>Nastavení vlastních odkazů v hlavní nabídce </h2>

    <p>Vytvořte řetězec popisující vlastní odkaz ve tvaru &quot;&lt;název stránky&gt;&quot;,&quot;&lt;odkaz na stránku&gt;&quot;,&quot;&lt;název ikony&gt;&quot;.</p>

    <p>Například: <i>&quot;Vlastní formulář&quot;,&quot;/Custom/ALVAO/CustomForm&quot;, &quot;CustomList&quot;</i>.</p>
    <p>Jako název příkazové ikony použijte název ikony z knihovny <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons">Microsoft Fabric</a> (název ikony se zobrazí na stránce po najetí myší na vybranou ikonu). Pokud ikonu nezadáte, použije se ikona <i>LightningBolt</i>.</p>
    <p>Chcete-li nastavit více vlastních odkazů, vytvořte posloupnost popsaných řetězců oddělených znakem středníku. </p>
    <p>Například: <i>&quot;Vlastní formulář&quot;,&quot;/Custom/ALVAO/CustomForm&quot;; &quot;ALVAO&quot;, &quot;https://www.alvao.com/&quot;,</i>&quot;Like&quot;.</p>
    <p>Nakonec spusťte následující skript SQL, ve kterém druhý řádek upraví proměnnou na nastavený řetězec nebo posloupnost řetězců.</p>

   <span class="console">DECLARE @MainMenuCustomHead nvarchar(max);<br />SET @MainMenuCustomHead = N'&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;, &quot;CustomList&quot;, &quot;ALVAO&quot;, &quot;https://www.alvao.com/&quot;, &quot;Like&quot;<br />DELETE dbo.tProperty WHERE sProperty=N'WebApp.MainMenu.CustomHead';<br />INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N'WebApp.MainMenu.CustomHead',@MainMenuCustomHead) </span>   <p>Vlastní vazby  v hlavní nabídce se zobrazují pod systémovými příkazy. Pořadí je stejné jako pořadí jednotlivých popsaných řetězců.</p>
    <p>Pokud chcete vazby  zobrazit nad nabídkou <i>More</i>, spusťte následující SQL skript, ve kterém upravte druhý řádek na nastavený řetězec nebo posloupnost řetězců.</p>

   <span class="console">DECLARE @MainMenuCustomTail nvarchar(max);<br />SET @MainMenuCustomTail = N'&quot;CustomForm 2&quot;,&quot;/Custom/ALVAO/CustomForm&quot;, &quot;CustomList&quot;, &quot;ALVAO 2&quot;, &quot;https://www.alvao.com/&quot;, &quot;Like&quot;<br />DELETE dbo.tProperty WHERE sProperty=N'WebApp.MainMenu.CustomTail';<br />INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N'WebApp.MainMenu.CustomTail',@MainMenuCustomTail)<br /></span><p>Pod systémovými příkazy a nad nabídkou <i>More</i> můžete také zobrazit různé vazby , popsané různými řetězci.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Chcete-li odstranit všechny vlastní vazby  v hlavní nabídce, spusťte následující příkaz SQL v databázi ALVAO pomocí nástroje SQL Management Studio:<br />
       <span class="console">DELETE tVlastnosti WHERE sVlastnosti LIKE N'WebApp.MainMenu.CustomTail%' OR sVlastnosti LIKE N'WebApp.MainMenu.CustomHead%</span>'    </div>


    <h2>Nastavení vlastních odkazů v uživatelské nabídce</h2>
    <p>Vytvořte řetězec popisující vlastní odkaz ve stejném formátu jako pro vlastní odkaz v hlavní nabídce.</p>
    <p>Pokud chcete nastavit více vlastních odkazů, vytvořte posloupnost řetězců stejně jako při nastavování odkazů v hlavní nabídce.</p>
    <p>Nakonec spusťte následující skript SQL, ve kterém na druhém řádku upravte transformaci na nastavený řetězec nebo posloupnost řetězců.</p>

   <span class="console">DECLARE @UserMenuCustom nvarchar(max);<br />SET @UserMenuCustom = N'&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;; &quot;ALVAO&quot;, &quot;https://www.alvao.com/&quot;, &quot;Like&quot;';<br />DELETE dbo.tProperty WHERE sProperty=N'WebApp.UserMenu.Custom';<br />INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N'WebApp.UserMenu.Custom',@UserMenuCustom)<br /></span><p>
        Vlastní vazby  v uživatelské nabídce se zobrazují nad položkou Settings. Výše uvedené pořadí je stejné jako pořadí jednotlivých popsaných řetězců <div class="note">
    <div class="icon"></div>
     <div class="title">Poznámka:</div>
     Chcete-li odstranit všechny vlastní vazby  v uživatelské nabídce, spusťte následující příkaz SQL v databázi ALVAO pomocí nástroje SQL Management Studio:<br />
    <span class="console">DELETE dbo.tProperty WHERE sProperty LIKE N'WebApp.UserMenu.Custom%</span>' </div>
        <h2>Lokalizace vlastních odkazů</h2>
        <p>Pokud chcete zobrazit názvy odkazů v různých jazycích podle preferovaného jazyka uživatele, je třeba spustit další SQL skripty. Do těchto skriptů se zadává lokalizovaná verze řetězce popisujícího vlastní vazby .</p>
        <p>Pokud vytváříte lokalizaci například pro češtinu (pro vlastní vazby  v hlavní nabídce, v části systémové příkazy), vytvořte nejprve lokalizovaný řetězec.</p>
        <p>Například: <i>&quot;Vlastní formulář&quot;,&quot;/Custom/ALVAO/CustomForm&quot;; &quot;ALVAO&quot;, &quot;https://www.alvao.com/&quot;</i>.</p>

        <p>
            Poté spusťte následující SQL skript, ve kterém na třetím řádku upravte proměnnou určující LocaleID lokalizovaného jazyka (např. 1029 pro češtinu). Na čtvrtém řádku upravte řetězec locale      </p>


       <span class="console">DECLARE @MainMenuCustomHead nvarchar(max);<br />DECLARE @lcid nvarchar(max);<br />SET @lcid = N'1029';<br />
            SET @MainMenuCustomHead = N'&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;; &quot;ALVAO&quot;, &quot;https://www.alvao.com/&quot;, &quot;Like&quot;&quot;;<br />DELETE dbo.tProperty WHERE sProperty=N'WebApp.MainMenu.CustomHead.'+@lcid;<br />INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N'WebApp.MainMenu.CustomHead.'+@lcid,@MainMenuCustomHead)<br /></span><div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Lokalizované vlastní vazby  se zobrazí všem uživatelům, kteří mají nastaven jazyk, pro který byl vlastní odkaz definován.  Pokud lokalizované vlastní vazby  nejsou pro jazyk uživatele definovány, zobrazí se uživateli nelokalizované (výchozí) vlastní vazby . Pokud lokalizujete vlastní vazby , doporučujeme napsat výchozí vlastní vazby  v angličtině        </div>

        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Aplikace ALVAO WebApp podporuje následující jazyky pro lokalizaci systémových textů: (LocaleID 1029), němčinu (LocaleID 1031), angličtinu (LocaleID 1033), polštinu (LocaleID 1045), slovenštinu (LocaleID 1051) a rumunštinu (LocaleID 1048). Další informace naleznete v části <a href="https://msdn.microsoft.com/en-us/library/ms912047(v=winembedded.10)">Hodnoty identifikátoru Microsoft Locale ID</a></div>

        <p>Pokud chcete umístit vlastní vazby  v hlavní nabídce, nad nabídkou <i>Více</i> upravte stejným způsobem a poté spusťte následující skript:</p>

       <span class="console">DECLARE @MainMenuCustomTail nvarchar(max);<br />DECLARE @lcid nvarchar(max);<br />SET @lcid = N'1029';<br />
            SET @MainMenuCustomTail = N'&quot;CustomForm 2&quot;,&quot;/Custom/ALVAO/CustomForm&quot;; &quot;ALVAO 2&quot;, &quot;https://www.alvao.com/&quot;;<br />DELETE dbo.tProperty WHERE sProperty=N'WebApp.MainMenu.CustomTail.'+@lcid;<br />INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N'WebApp.MainMenu.CustomTail.'+@lcid,@MainMenuCustomTail)<br /></span><p>Pokud chcete lokalizovat vlastní vazby  v uživatelské nabídce, upravte je stejným způsobem a poté spusťte následující skript:</p>
       <span class="console">DECLARE @UserMenuCustom nvarchar(max);<br />DECLARE @lcid nvarchar(max);<br />SET @lcid = N'1029';<br />SET @UserMenuCustom = N'&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;; &quot;ALVAO&quot;, &quot;https://www.alvao.com/&quot;;<br />DELETE dbo.tProperty WHERE sProperty=N'WebApp.UserMenu.Custom.'+@lcid;<br />INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N'WebApp.UserMenu.Custom.'+@lcid,@UserMenuCustom)<br /></span><div class="tip">
           <div class="icon"></div>
            <div class="title">Tip:</div>
            Při lokalizaci vlastních odkazů lze upravit jak název lokalizovaného odkazu, tak jeho adresu URL. Doporučujeme používat stejnou adresu URL a pořadí odkazů ve všech lokalizovaných odkazech        </div>

        <h2>Skrytí systémových příkazů</h2>
        <p>V následující tabulce jsou uvedeny příkazy SQL pro skrytí (a případně opětovné zobrazení) systémových příkazů.</p>

        <table>
            <thead>
                <tr>
                    <th>Odkaz</th>
                    <th>Skrytí příkazu odkazu</th>
                    <th>Příkaz pro zobrazení odkazu</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Požadavky</td>
                    <td>INSERT INTO tVlastnost(sVlastnost,bVlastnostHodnota) VALUES ('WebApp.MainMenuHide.Tickets',1);</td>
                    <td>DELETE FROM tVlastnost WHERE sVlastnost = 'WebApp.MainMenuHide.Tickets';</td>
                </tr>
                <tr>
                    <td>Katalog služeb</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.MainMenuHide.NewTicket',1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty = 'WebApp.MainMenuHide.NewTicket';</td>
                </tr>
                <tr>
                    <td>Znalostní báze</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.MainMenuHide.KnowledgeBase',1);</td>
                    <td>DELETE FROM tVlastnost WHERE sVlastnost = 'WebApp.MainMenuHide.KnowledgeBase';</td>
                </tr>
                <tr>
                    <td>Aktuální zprávy</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.MainMenuHide.News',1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty = 'WebApp.MainMenuHide.News';</td>
                </tr>
                <tr>
                    <td>Moje svěřená vlastnost</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.UserMenuHide.MyAsset',1);</td>
                    <td>DELETE FROM tVlastnost WHERE sVlastnost = 'WebApp.UserMenuHide.MyAsset';</td>
                </tr>
                <tr>
                    <td>Můj tým</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.UserMenuHide.TeamManagement',1);</td>
                    <td>DELETE FROM tVlastnost WHERE sVlastnost = 'WebApp.UserMenuHide.TeamManagement';</td>
                </tr>
                <tr>
                    <td>Nastavení</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.UserMenuHide.Settings',1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty = 'WebApp.UserMenuHide.Settings';</td>
                </tr>
                <tr>
                    <td>Přihlášení k odběru</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES ('WebApp.UserMenuHide.Logout',1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty = 'WebApp.UserMenuHide.Logout';</td>
                </tr>
            </tbody>
        </table>

        <div class="caution">
           <div class="icon"></div>
            <div class="title">Upozornění:</div>
            Takto skryté příkazy se nezobrazí žádnému uživateli aplikace ALVAO WebApp bez ohledu na jeho roli v systému        </div>
</asp:Content>

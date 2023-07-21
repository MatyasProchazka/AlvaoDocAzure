<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nastavení webové aplikace</h1>

    <p>
        Nastavení aplikace WebApp (webové rozhraní pro žadatele) je uloženo v souboru <strong>Web.config</strong>. Soubor je ve formátu XML. K jeho úpravě můžete použít Poznámkový blok ze systému Windows. Hodnoty musí být zadány v souladu s formátem XML, tj. například znak &quot;&lt;&quot; (menší) je nahrazen znakem &quot;&amp;lt;&quot;, místo &quot;&gt;&quot; je &quot;&amp;gt;&quot; atd.<br />
        Aby nedošlo k náhodnému přepsání nastavení při aktualizaci webové aplikace, není soubor Web.config součástí instalace. Při první instalaci jej vytvořte zkopírováním souboru SampleWeb.config    </p>

    <h2>Sekce AppSettings</h2>

    <p>
        V sekci &lt;configuration&gt;&lt;appSettings&gt; je každá konfigurační proměnná zapsána jako značka XML &lt;add&gt;. Atribut key určuje název proměnné, atribut value obsahuje její hodnotu.<br />
        V následující tabulce najdete seznam proměnných s popisem jejich hodnot    </p>

    <table>
        <thead>
            <tr>
                <th>Proměnná</th>
                <th>Hodnota</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>AppName</td>
                <td>Název webové aplikace, např. &quot;ALVAO Service Desk&quot;. Tato hodnota se zobrazuje v záhlaví každé stránky.</td>
            </tr>
            <tr>
                <td>Kb</td>
                <td>Pokud je zadána hodnota 0, webová aplikace nezobrazí <a href="../../knowledge-base">znalostní databázi</a>. Hodnota 1 její zobrazení povolí.</td>
            </tr>
            <tr>
                <td>CustomThemePath</td>
                <td>Cesta ke složce se soubory pro přizpůsobení vzhledu.</td>
            </tr>
        </tbody>
    </table>

    <h2>Nastavení automatického odhlášení při nečinnosti uživatele</h2>
    <p>Uživatel bude po uplynutí zadané doby automaticky odhlášen, pokud během této doby neprovedl žádnou akci. </p>
    <p>Zakázat automatické odhlášení při nečinnosti (doba nečinnosti se nastavuje v minutách od 1 do 525 600): </p>
   <span class="console">UPDATE tVlastnost SET iPropertyValue = 30 WHERE sVlastnost = 'WebApp.AutoLogoutMinutes</span>'    <p>Vypnutí automatického odhlášení při nečinnosti:</p>
   <span class="console">UPDATE tProperty SET iPropertyValue = 0 WHERE sProperty = 'WebApp.AutoLogoutMinutes</span>'    <p>Pro správnou funkčnost je také nutné zkontrolovat nastavení souboru web.config: v části &lt;system.web&gt; &lt;authentication&gt; &lt;forms&gt; parametr slidingExpiration. Tento parametr nesmí být vyplněn nebo musí být nastaven na hodnotu true. </p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>

        Toto nastavení funguje pouze pro přihlašování pomocí formulářů    </div>

    <h2>Nastavení zakázaných typů příloh</h2>
    <p>
        Chcete-li nastavit zakázané typy příloh, použijte tento skript SQL:<br />
       <span class="console">UPDATE tProperty SET sPropertyValue = 'bat, cmd, exe' WHERE sProperty = 'WebApp.AttachmentBlacklist</span>'    </p>
    <p>Po použití tohoto skriptu budou přílohy s příponami <em>bat, cmd</em> a <em>exe</em> zakázány. Seznam jednotlivých přípon souborů lze libovolně měnit</p>
    <p>
        Chcete-li obnovit výchozí stav, ve kterém nejsou zakázány žádné typy příloh, spusťte tento skript:<br />
       <span class="console">UPDATE tProperty SET sPropertyValue = NULL WHERE sProperty = 'WebApp.AttachmentBlacklist</span>'    </p>


    <h2>Nastavení maximální velikosti přílohy</h2>
    <p>Maximální velikost přílohy je definována v sekci &lt;configuration&gt;&lt;system.web&gt;&lt;httpRuntime&gt; v proměnné &quot;maxRequestLength&quot; v kilobajtech [KB].</p>
    <p>V případě použití IIS7 a vyšších je třeba upravit maximální velikost přílohy také v sekci &lt;configuration&gt;&lt;system.webServer&gt;&lt;security&gt;&lt;requestFiltering&gt;&lt;requestLimits&gt; v proměnné &quot;maxAllowedContentLength&quot; v bajtech [B].</p>
    <h2>Zvýšení ochrany proti útokům hádáním hesel</h2>
    <p>
        Doporučujeme zlepšit ochranu proti útokům hádáním hesla <a href="../../../alvao-asset-management/implementation/recaptcha">zapnutím funkce reCAPTCHA</a>   </p>
</asp:Content>

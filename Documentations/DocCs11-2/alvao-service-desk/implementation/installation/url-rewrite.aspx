<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Přesměrování z HTTP na HTTPS pomocí přepisu URL služby IIS</h1>
    <p>V případě problémů s přesměrováním HTTP a HTTPS nastavte automatické přesměrování na serveru IIS pomocí funkce URL Rewrite.</p>
    <h2>Jak přesměrovat z HTTP na HTTPS</h2>
    <ol>
        <li>Ujistěte se, že máte nainstalovaný intranetový server IIS.</li>
        <li>Stáhněte si modul <strong>URL Rewrite</strong> a nainstalujte jej, viz odkaz níže. </li>
        <li>Ujistěte se, že je na stránce, na kterou chcete přesměrovat, nakonfigurován port 80.</li>
        <li>Po instalaci modulu <strong>URL Rewrite</strong> se jeho ikona objeví v okně přehledu stránek v nástroji IIS Manager. Pokud se nezobrazí, zkuste restartovat službu IIS. </li>
        <li>Vyberte stránku, otevřete modul <strong>URL Rewrite</strong> a v pravém podokně vyberte akci <strong>Přidat pravidlo (pravidla)</strong>. V okně <strong>Přidat pravidlo (pravidla)</strong> vyberte možnost <em>Prázdné pravidlo</em> a potvrďte.</li>
        <li>V otevřeném formuláři nastavte následující položky        <ul>
            <li>Zadejte název.</li>
            <li>Shoda URL   <ul>
                <li>Z nabídky <strong>Požadovaná adresa URL</strong> vyberte možnost <strong>Požadovaná adresa URL</strong> odpovídá <strong>vzoru</strong>.</li>
                <li>Z nabídky <strong>Zástupné znaky</strong> vyberte možnost <strong>Použití</strong>.</li>
                <li>Do textového pole zadejte &quot;*&quot; a zaškrtněte políčko <em>Ignorovat velikost písmen</em>.</li>
            </ul>
            </li>
            <li>Podmínky         <ul>
                <li>Z nabídky <strong>Logické seskupení</strong> vyberte možnost <em>Shodovat se s libovolným</em>. </li>
                <li>Vyberte možnost <strong>Přidat.</strong> V otevřeném okně zadejte do <em>vstupního pole Strong&gt; Condition</em>typ <em>{HTTPS}</em>, vyberte možnost <em>Matches the Pattern</em>, do posledního pole zadejte <em>off</em> a potvrďte.</li>
            </ul>
            </li>
            <li>Akce    <ul>
                <li>Z nabídky vyberte možnost <em>Přesměrovat</em>.</li>
                <li>Do textového pole zadejte <em>&quot;https://{HTTP_HOST}{REQUEST_URI}&quot;</em>.</li>
                <li>Nezapínejte/nevypínejte možnost <em>Připojit řetězec dotazu.</em></li>
                <li>Z <em>nabídky <strong>Typ přesměrování</strong></em> vyberte možnost <em>Trvalé (301</em>).</li>
            </ul>
            </li>
        </ul>
        </li>
        <li>V akcích na pravé straně potvrďte pravidlo kliknutím na <em>Použít</em>.</li>
        <li>Pravidlo je přidáno a lze jej vypnout/zapnout pomocí <em>povolit</em>, <em>zakázat</em>. </li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Přidání pravidla pomocí <strong>přepisování URL</strong> se projeví na webu.konfiguračním souboru následujícím způsobem:<span class="console"><br />
            &lt;rewrite&gt; <br />&lt;rules&gt;<br />&lt;rule name=&quot;Přesměrování na http&quot; enabled=&quot;true&quot; patternSyntax=&quot;Wildcard&quot; stopProcessing=&quot;true&quot; &gt; <br />&lt;match url=&quot;*&quot; negate=&quot;false&quot;/&gt;<br />&lt;conditions logicalGrouping=&quot;MatchAny&quot;&gt; <br />&lt;add input=&quot;{HTTPS}&quot; pattern=&quot;off&quot;/&gt;<br />&lt;/conditions&gt;<br />
            &lt;action type=&quot;Redirect&quot; url=&quot;https://{HTTP_HOST}{REQUEST_URI}&quot; redirectType=&quot;Permanent&quot; /&gt;<br />&lt;/rule&gt;<br />&lt;/rules&gt;<br />&lt;/rewrite&gt;</span><br />
    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Tato úprava zasahuje do nastavení služby IIS. Nejedná se o úpravu konfigurace systému Alvao    </div>

    <h3>Vazby </h3>
    <p>
        Další informace naleznete na webových stránkách společnosti Microsoft - <a href="https://blogs.technet.microsoft.com/dawiese/2016/06/07/redirect-from-http-to-https-using-the-iis-url-rewrite-module">https://blogs.technet.microsoft.com/dawiese/2016/06/07/redirect-from-http-to-https-using-the-iis-url-rewrite-module/</a>   </p>

</asp:Content>

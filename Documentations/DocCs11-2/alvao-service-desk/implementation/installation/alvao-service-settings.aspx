<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nastavení komponenty Alvao Service</h1>

    <p>
        Nastavení jsou uložena v souboru appsettings.json v instalační složce.<br />
        Chcete-li vrátit nastavení do výchozího stavu, vytvořte soubor znovu zkopírováním a přejmenováním souboru &quot;AlvaoServiceSample.exe.config&quot;. K jeho úpravě můžete použít Poznámkový blok v systému Windows    </p>

    <h2>Připojení k databázi</h2>

    <p>Připojení k databázi je definováno v části:</p>
    <p>
        <span class="console" translate="no">
            &quot;ConnectionString&quot;: {<br />
            &nbsp;&quot;Db&quot;: &quot;Data Source=localhost;Initial Catalog=Alvao; Max Pool Size=2000; Integrated Security=True; MultipleActiveResultSets=True&quot;<br />
            },<br />
        </span>
    </p>

    <p>
        Do atributu <b>ConnectionString</b> zapište řetězec připojení k databázi. Formát řetězce je stejný jako v nastavení webové aplikace, viz <a href="webapp-settings#database_connection">Připojení k databázi</a>   </p>

    <h2>Odesílání e-mailů</h2>

    <p>Komponenta Alvao Service odesílá všechny e-mailové zprávy opouštějící systém Alvao. Adresu SMTP serveru pro odesílání e-mailových zpráv v databázi je třeba nastavit v části <strong>WebApp - Administrace - Nastavení-</strong> <a href="../../../list-of-windows/alvao-webapp/administration/settings/messaging">Zprávy</a>.</p>
    <p>E-maily jsou odesílány v dávkách, výchozí interval odesílání je 1 minuta. Pokud se e-mail z jakéhokoli důvodu nepodaří odeslat, zůstane uložen a bude znovu odeslán v nastaveném intervalu (výchozí hodnota 10 minut), dokud nebude úspěšně odeslán nebo dokud nebude překročen počet pokusů o odeslání (výchozí hodnota 432). Po dosažení počtu pokusů o odeslání zůstane e-mail v databázi pro případnou diagnostiku.</p>
    <p>Nastavení odesílání je uloženo v databázi (tabulka tProperty):</p>

    <table>
        <thead>
            <tr>
                <th>Proměnná</th>
                <th>Výchozí hodnota</th>
                <th>Význam</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">MailSendIntervalSeconds</td>
                <td>60</td>
                <td>Interval odesílání e-mailů - v sekundách</td>
            </tr>
            <tr>
                <td translate="no">MailSendMaxAttempts</td>
                <td>432</td>
                <td>Maximální počet pokusů o odeslání e-mailu</td>
            </tr>
            <tr>
                <td translate="no">MailSendRetryIntervalMinutes</td>
                <td>10</td>
                <td>Interval mezi pokusy o opětovné odeslání e-mailů, které se nepodařilo odeslat - v minutách</td>
            </tr>
        </tbody>
    </table>
    <p>Změna intervalu odesílání e-mailů se projeví až po restartování služby Alvao.</p>

    <h2>E-mailové schránky</h2>

    <p>
        Pokud chcete automaticky načítat zprávy z konkrétní schránky do konkrétní služby Service Desk (viz <a href="../services/service-tree">Služby Service Desk</a>), nastavte ve <strong>WebApp - Správa - Služby - Upravit</strong>- sekce <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/loading-messages">Načítání zpráv</a> spojení s touto schránkou    </p>

    <h2>Pravidla pro příchozí zprávy</h2>

    <p>Služba Alvao Service může provádět akce na základě definovaných pravidel. Pravidla pro příchozí zprávy se nastavují v části <strong>WebApp - Správa - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/roles-messages">Pravidla pro příchozí zprávy</a>.</p>

    <h2>Automatické odpovědi</h2>
    <p>Pokud služba Alvao při načítání zpráv narazí na zprávu, která je vyhodnocena jako automatická odpověď, není tato zpráva považována za plnohodnotnou zprávu, a proto se následující operace neprovádějí:</p>
    <ul>
        <li><a href="../../requests/reopen-for-further-resolution">Znovuotevření požadavku</a> ze strany žadatele nebo vytvoření nového požadavku po uplynutí lhůty pro znovuotevření.</li>
        <li>Zastavení <a href="../../requests/wait-for-response">čekání na žadatele</a>.</li>
        <li>Obnovení sloupce Čekání na e-mail.</li>
    </ul>

    <p>Zprávy jsou považovány za automatickou odpověď, pokud:</p>
    <ul>
        <li>obsahují v záhlaví parametr <span class="console" translate="no">Auto-Submitted</span> s hodnotou <span class="console" translate="no">auto-generated</span>, <span class="console" translate="no">auto-replied</span> nebo <span class="console" translate="no">auto-notified</span> nebo</li>
        <li>obsahují jeden z předdefinovaných řetězců v řádku předmětu zprávy.</li>
    </ul>

    <h3>Nastavení</h3>
    <p>
        Pokud chcete změnit výchozí nastavení předdefinovaných řetězců, které jsou obsaženy v předmětu automatické odpovědi ve vaší organizaci, upravte a spusťte následující příkaz SQL v databázi Alvao: <br /> 
       <span class="console" translate="no">update tProperty set sPropertyValue =
 N&#39;Automatická odpověď*;Automatic reply*;Mimo kancelář*;Out of Office*&#39; where sProperty = &#39;AutoSubmittedEmails.Subjects&#39;</span>
    </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        V příkladu je uvedeno výchozí nastavení. Jednotlivé šablony předmětů jsou odděleny středníky a hvězdička nahrazuje libovolný počet znaků    </div>
    <p>Ve výchozím nastavení je zapnuto rozpoznávání automatických odpovědí. Pokud tuto funkci nechcete používat, spusťte následující příkaz SQL v databázi Alvao: <br /> 
       <span class="console" translate="no">update tProperty set bPropertyValue = 0 where sProperty = &#39;AutoSubmittedEmails.Detect&#39;</span></p>


    <h2>Další nastavení</h2>

    <table>
        <thead>
            <tr>
                <th>Proměnná</th>
                <th>Hodnota</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SleepSeconds</td>
                <td>Doba, po kterou služba Alvao čeká, pokud v poštovní schránce nejsou žádné nové zprávy. Doba se udává v sekundách.</td>
            </tr>
        </tbody>
    </table>

    <h2>Protokol událostí</h2>

    <p>Protokol událostí lze nastavit v sekci NLog.</p>
    <p>Ve výchozím nastavení se varování a chyby vypisují do protokolu událostí systému Windows.</p>
    <p>Cíl, úroveň protokolování, vypisované zprávy atd. však můžete libovolně měnit podle <a href="https://github.com/nlog/nlog/wiki">dokumentace NLog</a>.</p>

    <h2>Odesílání diagnostiky</h2>

    <p>
        Pokud se e-mail nepodaří odeslat, vytiskne komponenta Alvao Service do protokolu událostí chybovou zprávu obsahující informace o odeslaném e-mailu a text chyby, která se vyskytla. Tato zpráva je vytištěna, pokud je protokol nastaven na hodnotu <i>Varování</i> nebo vyšší. Pro zprávu informující o obecném selhání komponenty (např. o neplatné databázové operaci) stačí nastavit protokol na hodnotu <i>Chyba</i>   </p>
    <p>Pokud jsou v databázi zprávy, které dosáhly maximálního počtu pokusů o odeslání, jednou denně se vypíše zpráva s uvedením počtu zpráv, které se nepodařilo odeslat (úroveň protokolu událostí 1 a vyšší):</p>
    <p>&quot;Poštovní fronta v současné době obsahuje X e-mailů, které se nepodařilo odeslat&quot;.</p>
    <p>Neodeslané e-maily lze nalézt v databázi (tabulka MailMessage), kde jsou kromě samotné zprávy (zabalené ve formátu .eml) uvedeny informace o počtu pokusů o odeslání (SendAttempts), poslední chybové zprávě (LastErrorMsg) a čase posledního pokusu o odeslání (LastAttemptTime).</p>
    <p></p>

</asp:Content>

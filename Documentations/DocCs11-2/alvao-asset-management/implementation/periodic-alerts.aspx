<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Pravidelná upozornění</h1>

    <p>Pravidelná upozornění jsou vlastní upozornění, která jsou automaticky zasílána e-mailem.  Obsah výstrah je volitelný, např. se může jednat o upozornění na blížící se konec platnosti softwarových licencí, blížící se konec záruční doby určitých zařízení apod.</p>

    <p>
        Pravidelná upozornění mohou spravovat členové skupiny <em>Administrators</em> v nabídce <em>WebApp - Administration - </em> <a href="../../list-of-windows/alvao-webapp/administration/periodic-alerts">Regular Alerts</a>( <em>Webová aplikace - Správa - </em> <a href="../../list-of-windows/alvao-webapp/administration/periodic-alerts">Pravidelná upozornění</a>)    </p>
    <p>Základem každé definice výstrahy je jeden SQL skript, který vrací tabulku s parametry zprávy a odeslanými daty. Data jsou vždy součástí textu e-mailu a volitelně je lze připojit jako soubor CSV.</p>

    <h2>Skript SQL</h2>
    <p>SQL skript vytvořeného alertu se provádí pravidelně podle nastavené doby opakování.</p>
    <p>Tabulka pro návrat skriptu musí obsahovat následující povinné sloupce:</p>
    <table id="requiredColumns" class="wide">
        <thead>
            <tr>
                <th>Sloupec</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Z</td>
                <td>Odesílatel zprávy, například <em>Alvao DontReply &lt;do-not-reply@domain.com&gt;.</em><br />
                    Hodnota NULL znamená, že oznámení je odesláno od nastaveného <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">odesílatele zprávy</a> systému Alvao.<br />
                   <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">Uživatelský účet</a>, který se používá k odesílání zpráv prostřednictvím serveru SMTP, musí mít oprávnění k odesílání zpráv jménem tohoto odesílatele.</td>
            </tr>
            <tr>
                <td>Tento</td>
                <td>Seznam příjemců zpráv oddělených středníky, například &quot;user1@domain.com; user2@domain.com&quot;.</td>
            </tr>
            <tr>
                <td>Cc</td>
                <td>Seznam příjemců kopie zprávy</td>
            </tr>
            <tr>
                <td>Bcc</td>
                <td>Seznam příjemců skryté kopie zprávy</td>
            </tr>
            <tr>
                <td>Předmět</td>
                <td>Předmět zprávy</td>
            </tr>
            <tr>
                <td>Text</td>
                <td>Text zprávy. Text může používat html značky pro formátování textu.</td>
            </tr>
        </tbody>
    </table>

    <p>Tabulka návratů je nejprve seskupena podle parametrů zprávy (povinné sloupce). Výsledný seznam představuje jednotlivé odeslané e-maily. Text každého e-mailu pak obsahuje datovou tabulku obsahující hodnoty z ostatních sloupců tabulky ze všech řádků s danými hodnotami povinných položek.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud e-mail obsahuje v některém poli (příjemce, kopie, skrytá kopie) více než 50 příjemců, odesílá se v dávkách po maximálně 50 příjemcích v každém poli    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Upozornění se odešle pouze tehdy, když skript SQL vrátí nějaké řádky. Pokud je seznam entit prázdný a uživatel přesto chce být upozorněn, musí být skript napsán tak, aby vždy vrátil nějaké řádky    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Upozornění lze volitelně vyhodnocovat nad analytickou databází místo nad produkční databází.  To se doporučuje zejména u výstrah, u kterých trvá provedení skriptu SQL dlouho (desítky sekund a více)    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Každý periodický alert se spouští v transakci s úrovní izolace ReadUncommited.  V extrémních případech proto může skript pracovat s daty, která uživatel právě upravuje    </div>


    <h3>Příklady</h3>
    <h4>Licence s blížícím se datem vypršení platnosti</h4>
    <p>Níže uvedený dotaz generuje upozornění na softwarové licence, jejichž platnost vyprší během následujících 30 dnů. </p>
    <p>
        Odesílatelem upozornění je odesílatel <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">zprávy</a>. systému Alvao. Příjemci upozornění jsou všichni uživatelé, kteří mají oprávnění číst licence organizace    </p>
    <p>Tabulka licencí bude obsahovat <em>název</em> licence <em>, inventární číslo, dobu platnosti od, číslo</em> a <em>dobu platnosti do</em>.</p>

    <div class="wide">
        <pre class="console" translate="no">
declare @advanceDays int = 30
declare @sender nvarchar(255) = dbo.GetProperty('Alvao.StandardSenderAddress')

select 
    @sender as [From],
    stuff(
    (
            select cast(';' as varchar(max)) + P.sPersonEmail 
            from tPerson P
            join vLicRight_Read RR on RR.PersonId = P.iPersonId 
	    WHERE P.dPersonRemoved is null and P.bPersonAccountDisabled = 0 and ISNULL(P.sPersonEmail, '') != ''
            for xml path('')
	    ), 1, 1, '') as [To],
    null as [Cc],
    null as [Bcc],
    N'License about to expire' as [Subject],
    N'Hello,&lt;br/&gt;&lt;br/&gt;the licenses listed below will expire within the next 30 days.' as [Text],
    LH.txtLicName as [License Name],
    LH.txtInventoryNum as [License inventory number],
    LH.dteDate as [Validity from],
    LH.dteDateExpire as [Validity to]
from tblLicHist LH
where LH.RemovedDate is null 
	and (LH.dteDateExpire is not null and LH.dteDateExpire between GETUTCDATE() and DATEADD(day, @advanceDays, GETUTCDATE()))
</pre>
    </div>

    <h4>Počítače s blížícím se koncem záruky</h4>
    <p>Níže uvedený dotaz generuje upozornění na počítače, jejichž záruka vyprší během následujících 30 dnů.</p>
    <p>
        Odesílatelem upozornění je odesílatel <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">zprávy</a>systému Alvao. Příjemci upozornění jsou všichni uživatelé, kteří jsou členy skupiny <em>Asset Administrators</em>   </p>
    <p>Tabulka počítačů bude obsahovat jejich <em>název, typ, cestu ve stromu</em> a <em>datum vypršení záruky</em>.</p>

    <div class="wide">
        <pre class="console" translate="no">
declare @advanceDays int = 30
declare @kindName nvarchar(255) = N'Warranty expiration'
declare @sender nvarchar(255) = dbo.GetProperty('Alvao.StandardSenderAddress')
declare @toGroupName nvarchar(255) = N'Asset managers'

select 
    @sender as [From],
    stuff(
        (
        select cast(';' as varchar(max)) + P.sPersonEmail
        from tPerson P
            join tRolePerson RP on RP.liRolePersonPersonId = P.iPersonId
            join tRole R on R.sRole=@toGroupName and R.iRoleId = RP.liRolePersonRoleId
        WHERE P.dPersonRemoved is null and P.bPersonAccountDisabled = 0 and ISNULL(P.sPersonEmail, '') != '' 
        for xml path('')
        ), 1, 1, '') as [To],
    null as [Cc],
    null as [Bcc],
    N'Computers with impending end of warranty' as [Subject],
    N'Hello,&lt;br/&gt;&lt;br/&gt;the computers listed below will expire their warranty within the next '+cast(@advanceDays as nvarchar)+' days.' as [Text],
    N.txtName as [Name],
    N.txtClass as [Computer kind],
    N.txtPath as [Path in tree],
    PK.txtValue as [Warranty expiration]
from vNodeClass N
    join vPropertyKind PK on PK.lintNodeId = N.intNodeId and PK.txtKind = @kindName
where N.bolHidden = 0 and N.bolScrapped = 0
    and PK.txtValue is not null
    and (CONVERT(datetime, PK.txtValue, 103) between GETUTCDATE() and DATEADD(day, @advanceDays, GETUTCDATE()))    
    and N.bComputer=1
</pre>
    </div>

    <h4>Změny velikosti paměti RAM u aktivních počítačů v inventáři</h4>
    <p>Níže uvedený dotaz generuje upozornění na objekty, u nichž byla v předchozím kalendářním měsíci změněna vlastnost <em>Velikost paměti RAM (GB</em> ).</p>
    <p>
        Odesílatelem upozornění je <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">odesílatel zpráv</a>systému Alvao. Příjemci upozornění jsou všichni uživatelé, kteří jsou členy skupiny <em>Asset Administrators</em>   </p>
    <p>Tabulka objektu bude obsahovat <em>datum změny, název objektu, typ, cestu ve stromu, zprávu o změně</em> a <em>jméno uživatele,</em> který změnu provedl.</p>
    <p>Správci aktiv obdrží odpovídající zprávu i v případě, že v uplynulém měsíci nebyly provedeny žádné změny.</p>

    <div class="wide">
        <pre class="console" translate="no">
select 
    NULL as [From],
    stuff((
            select cast(';' as varchar(max)) + P.sPersonEmail 
            from tPerson P
            join tRolePerson RP on RP.iRolePersonId = P.iPersonId 
            join tRole R on R.RoleBehaviorId = 11 and R.iRoleId = RP.liRolePersonRoleId
            WHERE P.dPersonRemoved is null and P.bPersonAccountDisabled = 0 and ISNULL(P.sPersonEmail, '') != ''
            for xml path('')
	    ), 1, 1, '') as [To],
    null as [Cc],
    null as [Bcc],
    N'Computers with resized RAM' as [Subject],
    N'Hello,&lt;br/&gt;&lt;br/&gt;The objects listed below have had their RAM size changed within the last month.&lt;br/&gt;Please check if this change was justified.' as [Text],
    L.dteLog as [Date],
    N.txtName as [Object Name],
    N.txtClass as [Type],
    N.txtPath as [Path in tree],
    L.txtLog as [Message],
    P.sPerson as [User]
into #Result
from tblLog L 
join vNodeClass N on L.lintNodeId = N.intNodeId
join tblKind K on K.intKindId = L.KindId
join tPerson P on P.iPersonId = L.liLogPersonId
where N.bolHidden = 0 and N.bolScrapped = 0 and N.bComputer = 1 
    and K.intKindCode = 147 and L.lintLogKindId = 4
    and (DATEPART(MONTH, L.dteLog) = (DATEPART(MONTH, DATEADD(MONTH, -1, GETUTCDATE()))))

if exists(select 1 from #Result) 
    select * from #Result
else
select 
    NULL as [From],
    stuff(
    (
        select cast(';' as varchar(max)) + P.sPersonEmail 
        from tPerson P
        join tRolePerson RP on RP.iRolePersonId = P.iPersonId 
        join tRole R on R.RoleBehaviorId = 11 and R.iRoleId = RP.liRolePersonRoleId
        WHERE P.dPersonRemoved is null and P.bPersonAccountDisabled = 0 and ISNULL(P.sPersonEmail, '') != ''
        for xml path('')
        ), 1, 1, '') as [To],
    null as [Cc],
    null as [Bcc],
    N'Computers with resized RAM' as [Subject],
    N'Hello,&lt;br/&gt;&lt;br/&gt;no object has had its RAM size changed in the last month.' as [Text]

drop table #Result    </pre></div>

    <h2>Řešení problémů</h2>
    <p>Pokud některá oznámení nejsou odesílána tak, jak by měla, zkontrolujte následující body:</p>
    <ul>
        <li>V tabulce <strong>WebApp - Administration-</strong> <a href="../../list-of-windows/alvao-webapp/administration/periodic-alerts">Regular Alerts</a> ( <strong>Webová aplikace - Správa -</strong> <a href="../../list-of-windows/alvao-webapp/administration/periodic-alerts">Pravidelná upozornění</a> ) vyberte příslušné upozornění. Pokud při posledním vyhodnocení došlo k chybě, zobrazí se text chybového hlášení v náhledu vpravo.  </li>
        <li>V aplikaci <em>SQL Server Management Studio</em> spusťte skript SQL ručně a zkontrolujte, zda vrací nějaká data a zda vrací všechny <a href="#requiredColumns">požadované sloupce</a>      </li>        
        <li>Zkontrolujte <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">nastavení zasílání zpráv</a>.</li>
    </ul>
</asp:Content>

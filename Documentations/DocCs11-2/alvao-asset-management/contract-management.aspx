<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Evidence smluv</h1>
    <p>Smlouvy s poskytovateli služeb, např. na servis tiskáren, serverů, jednotek UPS, klimatizací atd., můžete evidovat jako objekty ve stromu objektů.</p>
    <h2>Složka smluv</h2>
    <p>Ve stromu objektů vytvořte následující složky pro evidenci smluv ve vaší organizaci pomocí připravené šablony objektu Smlouva:</p>
    <ul>
        <li><strong>Smlouvy</strong> (Typ objektu=Smlouvy, Název=Smlouvy, Stav smlouvy=Aktivní)</li>
        <ul>
            <li><strong>Archiv</strong> (Typ objektu=Smlouvy, Název=Archiv, Stav smlouvy=Archiv)</li>
        </ul>
    </ul>
    <p>Nastavte přístupová práva ke složkám, viz <a href="objects-and-properties/object-access-rights">Zabezpečení objektu</a> nebo <a href="objects-and-properties/property-security">Zabezpečení majetku</a>.</p>
    <h2>Vytvoření nové smlouvy</h2>
    <ol>
        <li>Ve složce Contracts vytvořte nový objekt pomocí šablony Contract.</li>
        <li>Vyplňte vlastnosti nové smlouvy.</li>
        <li>V deníku objektu vytvořte <a href="object-notes">poznámku</a> a do její přílohy vložte naskenovaný soubor smlouvy.<br />
            Případně vytvořte pro smlouvu nový <a href="documents">dokument</a>, uložte naskenovanou smlouvu do jeho přílohy a přidejte dokument do deníku objektu.</li>
        <li>Pokud používáte modul <a href="../modules/alvao-configuration-management">správy konfigurace ALVAO</a>, můžete objekt smlouvy propojit s objekty, kterých se smlouva týká.</li>
    </ol>
    <h2>Upozornění na blížící se vypršení platnosti</h2>
    <p>V <strong>aplikaci WebApp - Správa</strong> - <a href="../list-of-windows/alvao-webapp/administration/periodic-alerts">Pravidelná upozornění</a> vytvořte nové upozornění pomocí níže uvedeného skriptu.</p>
    <p>Skript generuje upozornění na aktivní <a href="contract-management">smlouvy, jejichž</a> platnost brzy vyprší. Upozornění se odešle, pokud do data uvedeného v kontraktu ve vlastnosti <em>Expiry by</em> zbývá méně dní, než je počet dní uvedený ve vlastnosti <em>Advance warning of expiry (days</em> ).</p>
    <p>Odesílatelem upozornění je <a href="../list-of-windows/alvao-webapp/administration/settings/messaging">odesílatel zpráv</a> systému Alvao. Oznámení je zasláno členům skupiny, která je ve skriptu uvedena v proměnné <em>recipientsGroup</em>.</p>
    <p>Tabulka smlouvy bude obsahovat <em>název, cestu ve stromu, vypršení platnosti do</em> a url odkaz na objekt smlouvy.</p>

    <div class="wide">
        <span class="console">
            <pre translate="no">declare @recipientsGroup nvarchar(50) = N'Contract Administrators'; -- Group containing the recipients of the notificationdeclare @contractFolderPath nvarchar(100) = null; -- Path to the folder containing the contracts. Null = The entire object tree is searched.select NULL as [From],
  stuff( (
  select cast(';' as varchar(max)) + P.sPersonEmai from tPerson P
  join tRolePerson RP on RP.liRolePersonPersonId = P.iPersonI
	join tRole R on R.sRole = @recipientsGroup and R.iRoleId = RP.liRolePersonRoleI
	WHERE P.dPersonRemoved is null and ISNULL(P.sPersonEmail, '') != ''
  for xml path('')
  ), 1, 1, '') as [To],
  null as [Cc],
  null as [Bcc],
  N'Expired contracts' as [Subject],
  N'Hello,<br/><br/>The contracts listed below will expire soon.' as [Text],
  N.txtName as [Name],
  N.txtPath as [Path in tree],
  expiration.txtValue as [Expiration by],
  (select sPropertyValue from tProperty where sProperty='WebAppURL')+ '/Object/' + cast(N.intNodeId as varchar) as URLfrom vNodeClass N
join vPropertyKind expiration on expiration.lintNodeId = N.intNodeId and expiration.intKindCode = 163 join vPropertyKind notify on notify.lintNodeId = N.intNodeId and notify.intKindCode = 164join vPropertyKindInherited state on state.lintNodeId = N.intNodeId and state.intKindCode = 165where (N.txtPath like @contractFolderPath + '%' or @contractFolderPath is null) and N.bolHidden = 0 and N.bolScrapped = 0 and N.lintClassId = 56 and expiration.txtValue is not null and notify.txtValue is not null and state.txtValue = N'Active' and (CONVERT(datetime, expiration.txtValue, 103) < DATEADD(day, -cast(notify.txtValue as int), GETUTCDATE()))
 </pre>
        </span>
    </div>
    <p>Tip: Pokud chcete být upozorněni na blížící se automatické prodloužení smlouvy, nastavte vlastnost <em>Expirace do </em>na datum automatického prodloužení a po prodloužení ji aktualizujte.</p>
    <h2>Prodloužení smlouvy</h2>
    <ol>
        <li>Pro danou smlouvu upravte vlastnost <em>Expiry by</em> a všechny další vlastnosti, které se změnily.</li>
        <li>Do protokolu požadavků přidejte novou <a href="object-notes">poznámku</a> nebo <a href="documents">dokument</a> se souborem smlouvy nebo změny.</li>
    </ol>
    <p>Poznámka: Změny hodnot vlastností smlouvy se automaticky zaznamenávají do protokolu objektu.</p>

    <h2>Archivace smlouvy</h2>
    <p>Přesuňte smlouvy, jejichž platnost vypršela, do složky <em>Archiv</em>.</p>
</asp:Content>

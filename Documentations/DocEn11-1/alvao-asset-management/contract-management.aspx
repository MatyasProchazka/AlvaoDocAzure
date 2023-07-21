<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Contract registry</h1>
    <p>You can record contracts with your service providers, e.g. for servicing printers, servers, UPS units, air conditioners, etc., as objects in the object tree.</p>
    <h2>Contracts folder</h2>
    <p>In the object tree, create the following folders for recording contracts in your organization using the ready-made Contract object template:</p>
    <ul>
        <li><strong>Contracts</strong> (Object Type=Contracts, Name=Contracts, Contract Status=Active)</li>
        <ul>
            <li><strong>Archive</strong> (Object Type=Contracts, Name=Archive, Contract Status=Archive)</li>
        </ul>
    </ul>
    <p>Set access permissions on the folders, see <a href="objects-and-properties/object-access-rights">Object security</a> or <a href="objects-and-properties/property-security">Property security</a>.</p>
    <h2>Creating a new contract</h2>
    <ol>
        <li>In the Contracts folder, create a new object using the Contract template.</li>
        <li>Fill in the properties of the new contract.</li>
        <li>In the object journal, create a <a href="object-notes">note</a> and insert the scanned contract file into its attachment.<br />
            Alternatively, create a new <a href="documents">document</a> for the contract, save the scanned contract to its attachments, and add the document to the object journal.</li>
        <li>If you use the <a href="../modules/alvao-configuration-management">ALVAO Configuration Management</a> module, you can link the contract object to the objects that the contract relates to.</li>
    </ol>
    <h2>Notification of impending expiration</h2>
    <p>In <strong>WebApp - Administration</strong> - <a href="../list-of-windows/alvao-webapp/administration/periodic-alerts">Regular Alerts</a>, create a new alert with the script below.</p>
    <p>The script generates alerts for active <a href="contract-management">contracts</a> that are about to expire. The alert will be sent if there are fewer days left until the date specified in the contract in the <em>Expiry by</em> property than the number of days specified in the <em>Advance warning of expiry (days)</em> property.</p>
    <p>The notification sender is the <a href="../list-of-windows/alvao-webapp/administration/settings/messaging">messaging sender</a> of the Alvao system. The notification is sent to the members of the group that is specified in the script in the <em>recipientsGroup</em> variable.</p>
    <p>The contract table will contain the <em>Name, Path in tree, Expiration by</em> and a url link to the contract object.</p>

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
    <p>Tip: If you want to be notified when an automatic contract renewal is coming up, set the <em>Expiration by </em>property to the date of the automatic renewal, and update it after the renewal.</p>
    <h2>Contract Extension</h2>
    <ol>
        <li>For a given contract, edit the <em>Expiry by</em> and any other properties that have changed.</li>
        <li>Add a new <a href="object-notes">note</a> or <a href="documents">document</a> with the contract or amendment file to the request log.</li>
    </ol>
    <p>Note: Changes to contract property values are automatically recorded in the object log.</p>

    <h2>Archiving the contract</h2>
    <p>Move expired contracts to the <em>Archive</em> folder.</p>
</asp:Content>

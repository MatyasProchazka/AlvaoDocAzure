<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Periodic alerts</h1>

    <p>Regular alerts are custom alerts that are automatically sent via email.  The content of the alerts is optional, e.g. they can be alerts about upcoming expiration of software licenses, upcoming end of warranty period of certain devices, etc.</p>

    <p>
        Regular alerts can be managed by members of the <em>Administrators</em> group in <em>WebApp - Administration - </em>
        <a href="../../list-of-windows/alvao-webapp/administration/periodic-alerts">Regular Alerts</a>.
    </p>
    <p>The basis of each alert definition is a single SQL script that returns a table with message parameters and sent data. The data is always part of the email text and can optionally be attached as a CSV file.</p>

    <h2>SQL script</h2>
    <p>TheSQL script of the created alert is executed periodically according to the set retry period.</p>
    <p>The script return table must contain the following mandatory columns:</p>
    <table id="requiredColumns" class="wide">
        <thead>
            <tr>
                <th>Column</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>From</td>
                <td>The sender of the message, e.g. <em>Alvao DontReply &lt;do-not-reply@domain.com&gt;</em>.<br />
                    A NULL value means that the notification is sent from the set <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">message sender</a> of the Alvao system.<br />
                    A <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">user account</a>,
  that is used to send messages through the SMTP server must have permission to send messages on behalf of that sender.</td>
            </tr>
            <tr>
                <td>This</td>
                <td>A list of message recipients separated by semicolons, e.g. &quot;user1@domain.com; user2@domain.com&quot;.</td>
            </tr>
            <tr>
                <td>Cc</td>
                <td>List of recipients of a copy of the message</td>
            </tr>
            <tr>
                <td>Bcc</td>
                <td>Hidden message copy recipient list</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>Message subject</td>
            </tr>
            <tr>
                <td>Text</td>
                <td>Message text. The text may use html tags to format the text.</td>
            </tr>
        </tbody>
    </table>

    <p>The return table is first grouped by message parameters (mandatory columns). The resulting list represents individual sent emails. The text of each email then contains a data table containing the values from the other columns of the table from all rows with the given values of the mandatory items.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If an email contains more than 50 recipients in any field (recipient, copy, hidden copy), it is sent in batches of up to 50 recipients per field.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The notification is only sent when the SQL script returns some rows. If the entity list is empty, and the user still wants to be notified, the script must be written so that it always returns some rows.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Alerts can optionally be evaluated over an analytics database instead of a production database.  This is especially recommended for alerts that take a long time (tens of seconds or more) to execute the SQL script.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Each periodic alert is triggered in a transaction with an isolation level of ReadUncommited.  Therefore, in extreme cases, the script may work with data that a user is currently editing.
    </div>


    <h3>Examples</h3>
    <h4>Licences with an expiry date approaching</h4>
    <p>The query below generates alerts for software licenses that will expire within the next 30 days. </p>
    <p>
        The sender of the notification is <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">the message sender</a>.
  of the Alvao system. Recipients of notifications are all users who have permission to read an organization's licenses.
    </p>
    <p>The license table will contain the license's <em>Name, Inventory Number, Expiration From, Number</em> and <em>Expiration To</em>.</p>

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

    <h4>Computers with an upcoming end of warranty</h4>
    <p>The query below generates alerts for computers whose warranty will expire within the next 30 days.</p>
    <p>
        The sender of the notification is <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">the sender of the message</a>
        of the Alvao system. Recipients of notifications are all users who are members of the <em>Asset Administrators</em> group.
    </p>
    <p>The table of computers will include their <em>Name, Type, Path in the tree</em> and <em>Warranty Expiration Date</em>.</p>

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

    <h4>Changes in RAM size on active computers in inventory</h4>
    <p>The query below generates an alert for objects for which the <em>RAM Size (GB)</em> property was changed during the previous calendar month.</p>
    <p>
        The sender of the notification is <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">the message sender</a>
        of the Alvao system. Recipients of notifications are all users who are members of the <em>Asset Administrators</em> group.
    </p>
    <p>The object table will contain the <em>Change Date, Object Name, Type, Path in Tree, Change Message</em> and the <em>Name of the user</em> who made the change.</p>
    <p>The asset managers will receive a corresponding message even if no changes have been made during the past month.</p>

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

    <h2>Problem solving</h2>
    <p>If some notifications are not being sent as they should, check the following points:</p>
    <ul>
        <li>In the <strong>WebApp - Administration</strong>- <a href="../../list-of-windows/alvao-webapp/administration/periodic-alerts">Regular Alerts</a> table, select the alert in question. If an error occurred the last time it was evaluated, you will see the text of the error message in the preview on the right.  </li>
        <li>In <em>SQL Server Management Studio</em>, run the SQL script manually and check that it returns some data and that it returns all the <a href="#requiredColumns">required columns</a>.
        </li>        
        <li>Check the <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">messaging settings</a>.</li>
    </ul>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>SQL query examples</h1>

    <h2>All computers in active records</h2>
    <p>The following query will find out the details of all computers.</p>

    <div class="wide">
        <pre translate="no">
SELECT [Object name], [RAM size (GB)], [Total hard disk capacity (GB)], [CPU], [Operating system], [Graphic card], [IP addresses], [MAC addresses]
FROM Query.ObjectEnu
WHERE [Object of Computer type] = 'Yes'</pre>
    </div>


    <h2>All computers in active records with AcrobatReader installed</h2>

    Here we join values from multiple views into one using the LEFT JOIN operator.
    <div class="wide">
        <pre translate="no">
SELECT ObjectEnu.[Object name], Software.Product FROM Query.ObjectEnu
LEFT JOIN Query.Software ON [Software].ComputerNodeId = ObjectEnu.[Object id]
WHERE Software.Product = &#39;Adobe Acrobat Reader&#39;</pre>
    </div>


    <h2>All computers and their move history</h2>

    Query computer objects and some selected items of their history.
    <div class="wide">
        <pre translate="no">
SELECT ObjectEnu.[Object name], ObjectLogEnu.[Record date (UTC)], ObjectLogEnu.[Title], ObjectLogEnu.[Message], ObjectLogEnu.[Record kind]
FROM Query.ObjectEnu
LEFT JOIN Query.ObjectLogEnu ON ObjectLogEnu.[Object id] = ObjectEnu.[Object id]
WHERE ObjectEnu.[Object of Computer type] = 'Yes' AND ObjectLogEnu.[Title] = N'Move' AND ObjectLogEnu.[Record kind] = 'Object history'</pre>
    </div>


    <h2>Disk drives and free space</h2>
    <p>Question about computer disk drives and free space status.</p>

    <div class="wide">
        <pre translate="no">SELECT o.[Object name], d.[Logical drive], d.[Capacity (GB)], d.[Total free space (GB)], d.[Free space (%)]
FROM Query.DiskDriveEnu d
LEFT JOIN [Query].[ObjectEnu] o ON d.[Object id]=o.[Object id]</pre>
    </div>


    <h2 id="userswithoutoutpp">Users with transferred assets without a transfer protocol</h2>
    <p>
        This query displays users who have been transferred assets with a completed inventory number, but subsequently no handover protocol has been issued. 
    </p>
    <div class="wide">
        <pre translate="no">
SELECT
    usr.[Name] [User],
    usr.[Path in tree],
    dbo.fnLocalTime(moves.[Date of last move (UTC)], 'Central Europe Standard Time') [Date last moved],
    dbo.fnLocalTime(pp.[Last PP Date (UTC)], 'Central Europe Standard Time') [Date of last PP]
FROM (
    SELECT
        usr.[Object id] [User Id],
        max(l.[Record date (UTC)]) [Date of last move (UTC)]
    FROM Query.ObjectLogEnu l
        INNER JOIN Query.ObjectEnu o ON o.[Object id]=l.[Object id] AND ISNULL(o.[Inventory number],'')!=''
        INNER JOIN Query.NodeParent np ON np.ChildNodeId=l.[Object id] 
        INNER JOIN Query.ObjectEnu usr ON usr.[Object id]=np.ParentNodeId AND usr.[Type]=N'User' 
    WHERE l.Title=N'Move' 
    GROUP BY usr.[Object id] 
  ) moves 
  INNER JOIN Query.ObjectEnu usr ON usr.[Object id]=moves.[User Id] 
  LEFT JOIN (
    SELECT
      l.[Object id],
      SNULL(max(l.[Record date (UTC)]),{d'1900-01-01'}) [Last PP Date (UTC)]
    FROM Query.ObjectLogEnu l
    WHERE l.[Record kind]=N'Document' AND l.Title=N'Transmission Log' 
    GROUP BY l.[Object id] 
  ) pp ON pp.[Object id] = moves.[User Id]
WHERE moves.[Date of last move (UTC)]>DATEADD(DAY,1,pp.[Last PP Date (UTC)])
</pre>
    </div>
    <p>
        Note: The transfer log only has a date in the log (and the time is always 00:00:00), so we need to add a day to it.
    </p>

    <h2>Audit user permission changes</h2>

    Log of changes in permission settings in the object tree for the last month.<div class="wide">
        <pre translate="no">SELECT * FROM Query.NodeRightLog
WHERE DatePart(m, [TimeStamp]) = DatePart(m, DateAdd(m, -1, GETUTCDATE()))
    AND DatePart(yy, [TimeStamp]) = DatePart(yy, DateAdd(m, -1, GETUTCDATE()))</pre>
    </div>

    Log of changes in group membership settings for last month.<div class="wide">
        <pre translate="no">SELECT * FROM Query.RoleMembershipLog
WHERE DatePart(m, [TimeStamp]) = DatePart(m, DateAdd(m, -1, GETUTCDATE()))
    AND DatePart(yy, [TimeStamp]) = DatePart(yy, DateAdd(m, -1, GETUTCDATE()))</pre>
    </div>

    Log of user logins for the last month.<div class="wide">
        <pre translate="no">SELECT * FROM Query.UserLogonLog
WHERE DatePart(m, [TimeStamp]) = DatePart(m, DateAdd(m, -1, GETUTCDATE()))
    AND DatePart(yy, [TimeStamp]) = DatePart(yy, DateAdd(m, -1, GETUTCDATE()))</pre>
    </div>

    <h2 id="TpmChip">Computers and their detected TPMs</h2>

    <p>The query displays a list of computers and their detected TPM chips.</p>

    <div class="wide">
        <pre translate="no">
SELECT 
	o.[Object id] NodeId, o.[Type],
    	o.[Object name] [Computer],
    	o.[Path in tree],
    	wo.IsActivated, 
	wo.IsEnabled, 
	wo.IsOwned, 
	wo.Manufacturer, 
	wo.ManufacturerVersion, 
	wo.ManufacturerVersionFull20, 
	wo.ManufacturerVersionInfo, 
	wo.PhysicalPresenceVersionInfo, 
	wo.SpecVersion
FROM Query.ObjectEnu o
	LEFT JOIN vComputerDetectLast cdl ON cdl.lintComputerNodeId=o.[Object id] AND cdl.lintDetectKindId=1
	LEFT JOIN tblWbemObject wo ON wo.lintDetectId=cdl.lintDetectId AND wo.__CLASS='Win32_Tpm'
WHERE o.[Object of Computer type]='Yes'</pre>
    </div>

    <h2>Query to SQL</h2>

    Here we will show how you can convert a <a href="../../../alvao-asset-management/searching/query">query</a> written in the internal query language into SQL.<br />
    Original query:<div class="wide">
        <pre translate="no">
SELECT AS &quot;User&quot;=[User].@Node,[Computer].[Computer Type],[Computer].@Node,[Monitor].@Node COUNT 
WHERE @Class=&#39;User&#39; 
WITH 
    SELECT AS [Computer] WHERE @Class=&#39;Computer&#39; AND ([Computer Type] = &quot;desktop&quot;),
    SELECT AS [Monitor] WHERE @Class=&#39;Monitor&#39; 
ENDWITH</pre>
    </div>
    This query will show us the users' objects, their desktop type computers and monitors. It will also show us the total number of monitors under all users (regardless of computer type). When converting to SQL, we will proceed by first finding all the undeleted User type objects and their sub-objects of the Computer type.
    <div class="wide">
        <pre translate="no">
SELECT [User].[Object name] AS [User NodeName], Node.[Object name] AS [Computer Name] FROM [Query].[ObjectEnu] [User]
LEFT JOIN [Query].NodeParent ON [User].[Object id] = NodeParent.ParentNodeId
LEFT JOIN [Query].[ObjectEnu] [Node] ON NodeParent.ChildNodeId = Node.[Object id]
WHERE [User].[Object kind] = N'User' AND (Node.[Object kind] = N'Computer/Desktop' OR Node.[Object kind] = N'Monitor')</pre>
    </div>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Unlike the original query in the query language, the resulting SQL query does not contain the total number of monitors. This value needs to be found in a separate query.
    </div>

    <h2>Conversion of standard EPQ queries</h2>
    The following SQL queries display the same data as the standard EPQ files.
    <h3>Inventory by room</h3>
    Objects with the inventory number property, grouped by the Room property and sorted by network name and class.
    <div class="wide">
        <pre translate="no">SELECT 
    [Object name],
    [Object kind],
    [Inventory number],
    [Room],
    [User],
    [Network branch name] 
FROM Query.ObjectEnu 
WHERE [Inventory number] IS NOT NULL</pre>
    </div>
    <p>Note: Then sort the query result in the table by the &quot;Room&quot; column.</p>
    <h3>Inventory by user</h3>
    Objects with the inventory number property, grouped by the User property.
    <div class="wide">
        <pre translate="no">SELECT 
    [Object name],
    [Object kind],
    [Inventory number],
    [Room],
    [User],
    [Network branch name] 
FROM Query.ObjectEnu 
WHERE [Inventory number] IS NOT NULL</pre>
    </div>


    <p>Note: Then sort the query result in the table by the column &quot;User&quot;.</p>

    <h3>Uninstalled software by software</h3>
    Installed software, grouped by computer.
    <div class="wide">
        <pre translate="no">SELECT c.[Object name] AS [Computer], Product AS [Application],
Installed, LicenseInventoryNumber AS [Computer inventory number],
u.[Object name] AS [User], LicenseInvoiceNumber AS [License document number],
LicenceName AS [LicenseName] FROM Query.Software
LEFT JOIN Query.ObjectEnu c ON c.[Object id] = Software.ComputerNodeId 
LEFT JOIN Query.ObjectEnu u ON u.[Object id] = Software.[User]
WHERE Product like N'ALVAO%'</pre>
    </div>



    <h3>Operating systems</h3>
    Installed OS, grouped by computer.
    <div class="wide">
        <pre translate="no">SELECT Computer.NodeName AS [Computer], Product AS [OS], Installed AS [Installation Date],
Computer.[Inventory number] AS [Inventory Number], [Computer].UserNodeId AS [User], LicenseInvoiceNumber AS [Document], [LicenceName] AS [Assigned license], LicenseActivationKey AS [OS - serial number] 
FROM Query.Software 
LEFT JOIN Query.Computer ON Computer.NodeId = Software.ComputerNodeId WHERE Category = 1
</pre>
    </div>


    <h3>Computers</h3>
    Computers, their sub-objects and properties.
    <div class="wide">
        <pre translate="no">SELECT [Object name], [Network branch name], [User], [Purchase date], [Inventory number], [Serial number],
[Warranty expiration], [Total hard disk capacity (GB)] AS [HDD], CPU, [Operating system] 
FROM Query.ObjectEnu
WHERE [Object of Computer type] = 'Yes'</pre>
    </div>

    <h3>Changes by date</h3>
    List of events in the log from the specified parameters. Grouping by objects.
    <div class="wide">
        <pre translate="no">SELECT [Object name], [Object kind], [Record date (UTC)], [Title], [Message]
FROM [Query].[ObjectLogEnu]
LEFT JOIN [Query].[ObjectEnu] ON [ObjectEnu].[Object id] = [ObjectLogEnu].[Object id]</pre>
    </div>

    <h3>Object Moves by Date</h3>
    List of movement events in the log. Grouping by date.
    <div class="wide">
        <pre translate="no">SELECT [Object name], [Object kind], [Record date (UTC)], [Title], [Message]
FROM [Query].[ObjectLogEnu]
LEFT JOIN [Query].[ObjectEnu] ON [ObjectEnu].[Object id] = [ObjectLogEnu].[Object id]
WHERE ObjectLogEnu.[Title] = N'Move' AND ObjectLogEnu.[Record kind] = 'Object history'</pre>
    </div>

    <h3>Equipment by date of purchase</h3>
    List of objects by date of purchase.
    <div class="wide">
        <pre translate="no">SELECT [Object name], CONVERT(datetime, [Purchase date]) AS [Date], [Room], [User]
FROM Query.ObjectEnu</pre>
    </div>

    <h3>Equipment under warranty</h3>
    List of objects according to their warranty (property).

    <div class="wide">
        <pre translate="no">SELECT [Object name], CONVERT(datetime, [Purchase date]) AS [Date], [Room], [User], [Warranty expiration]
FROM Query.ObjectEnu</pre>
    </div>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Příklady dotazů SQL</h1>

    <h2>Všechny počítače v aktivních záznamech</h2>
    <p>Následující dotaz zjistí podrobnosti o všech počítačích.</p>

    <div class="wide">
        <pre translate="no">
SELECT [Object name], [RAM size (GB)], [Total hard disk capacity (GB)], [CPU], [Operating system], [Graphic card], [IP addresses], [MAC addresses]
FROM Query.ObjectEnu
WHERE [Object of Computer type] = 'Yes'</pre>
    </div>


    <h2>Všechny počítače v aktivních záznamech s nainstalovaným programem AcrobatReader</h2>

    Zde spojíme hodnoty z více pohledů do jednoho pomocí operátoru LEFT JOIN    <div class="wide">
        <pre translate="no">
SELECT ObjectEnu.[Object name], Software.Product FROM Query.ObjectEnu
LEFT JOIN Query.Software ON [Software].ComputerNodeId = ObjectEnu.[Object id]
WHERE Software.Product = &#39;Adobe Acrobat Reader&#39;</pre>
    </div>


    <h2>Všechny počítače a historie jejich přesunů</h2>

    Dotaz na objekty počítačů a některé vybrané položky jejich historie    <div class="wide">
        <pre translate="no">
SELECT ObjectEnu.[Object name], ObjectLogEnu.[Record date (UTC)], ObjectLogEnu.[Title], ObjectLogEnu.[Message], ObjectLogEnu.[Record kind]
FROM Query.ObjectEnu
LEFT JOIN Query.ObjectLogEnu ON ObjectLogEnu.[Object id] = ObjectEnu.[Object id]
WHERE ObjectEnu.[Object of Computer type] = 'Yes' AND ObjectLogEnu.[Title] = N'Move' AND ObjectLogEnu.[Record kind] = 'Object history'</pre>
    </div>


    <h2>Diskové jednotky a volné místo</h2>
    <p>Dotaz na diskové jednotky počítače a stav volného místa.</p>

    <div class="wide">
        <pre translate="no">SELECT o.[Object name], d.[Logical drive], d.[Capacity (GB)], d.[Total free space (GB)], d.[Free space (%)]
FROM Query.DiskDriveEnu d
LEFT JOIN [Query].[ObjectEnu] o ON d.[Object id]=o.[Object id]</pre>
    </div>


    <h2 id="userswithoutoutpp">Uživatelé s přenesenými prostředky bez přenosového protokolu</h2>
    <p>
        Tento dotaz zobrazuje uživatele, kterým byl předán majetek s vyplněným inventárním číslem, ale následně nebyl vystaven předávací protokol. 
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
      ISNULL(max(l.[Record date (UTC)]),{d'1900-01-01'}) [Last PP Date (UTC)]
    FROM Query.ObjectLogEnu l
    WHERE l.[Record kind]=N'Document' AND l.Title=N'Transmission Log' 
    GROUP BY l.[Object id] 
  ) pp ON pp.[Object id] = moves.[User Id]
WHERE moves.[Date of last move (UTC)]>DATEADD(DAY,1,pp.[Last PP Date (UTC)])
</pre>
    </div>
    <p>
        Poznámka: V předávacím protokolu je uvedeno pouze datum (a čas je vždy 00:00:00), takže k němu musíme přidat den   </p>

    <h2>Audit změn oprávnění uživatelů</h2>

    Protokol změn nastavení oprávnění ve stromu objektů za poslední měsíc.<div class="wide">
        <pre translate="no">SELECT * FROM Query.NodeRightLog
WHERE DatePart(m, [TimeStamp]) = DatePart(m, DateAdd(m, -1, GETUTCDATE()))
    AND DatePart(yy, [TimeStamp]) = DatePart(yy, DateAdd(m, -1, GETUTCDATE()))</pre>
    </div>

    Protokol změn v nastavení členství ve skupinách za poslední měsíc.<div class="wide">
        <pre translate="no">SELECT * FROM Query.RoleMembershipLog
WHERE DatePart(m, [TimeStamp]) = DatePart(m, DateAdd(m, -1, GETUTCDATE()))
    AND DatePart(yy, [TimeStamp]) = DatePart(yy, DateAdd(m, -1, GETUTCDATE()))</pre>
    </div>

    Protokol přihlášení uživatelů za poslední měsíc.<div class="wide">
        <pre translate="no">SELECT * FROM Query.UserLogonLog
WHERE DatePart(m, [TimeStamp]) = DatePart(m, DateAdd(m, -1, GETUTCDATE()))
    AND DatePart(yy, [TimeStamp]) = DatePart(yy, DateAdd(m, -1, GETUTCDATE()))</pre>
    </div>

    <h2 id="TpmChip">Počítače a jejich zjištěné čipy TPM</h2>

    <p>Dotaz zobrazí seznam počítačů a jejich zjištěných čipů TPM.</p>

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

    <h2>Dotaz do SQL</h2>

    Zde si ukážeme, jak lze převést <a href="../../../alvao-asset-management/searching/query">dotaz na</a> psaný v interním dotazovacím jazyce do jazyka SQL.<br />
    Původní dotaz:<div class="wide">
        <pre translate="no">
SELECT AS &quot;User&quot;=[User].@Node,[Computer].[Computer Type],[Computer].@Node,[Monitor].@Node COUNT 
WHERE @Class=&#39;User&#39; 
WITH 
    SELECT AS [Computer] WHERE @Class=&#39;Computer&#39; AND ([Computer Type] = &quot;desktop&quot;),
    SELECT AS [Monitor] WHERE @Class=&#39;Monitor&#39; 
ENDWITH</pre>
    </div>
    Tento dotaz nám zobrazí objekty uživatelů, jejich počítače typu desktop a monitory. Zobrazí nám také celkový počet monitorů pod všemi uživateli (bez ohledu na typ počítače). Při převodu do jazyka SQL budeme postupovat tak, že nejprve vyhledáme všechny nesmazané objekty typu User a jejich podobjekty typu Computer    <div class="wide">
        <pre translate="no">
SELECT [User].[Object name] AS [User NodeName], Node.[Object name] AS [Computer Name] FROM [Query].[ObjectEnu] [User]
LEFT JOIN [Query].NodeParent ON [User].[Object id] = NodeParent.ParentNodeId
LEFT JOIN [Query].[ObjectEnu] [Node] ON NodeParent.ChildNodeId = Node.[Object id]
WHERE [User].[Object kind] = N'User' AND (Node.[Object kind] = N'Computer/Desktop' OR Node.[Object kind] = N'Monitor')</pre>
    </div>


    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Na rozdíl od původního dotazu v dotazovacím jazyce výsledný dotaz SQL neobsahuje celkový počet monitorů. Tuto hodnotu je třeba zjistit v samostatném dotazu    </div>

    <h2>Převod standardních dotazů EPQ</h2>
    Následující SQL dotazy zobrazují stejné údaje jako standardní soubory EPQ   <h3>Inventura podle místnosti</h3>
    Objekty s vlastností inventární číslo, seskupené podle vlastnosti Místnost a seřazené podle názvu sítě a třídy    <div class="wide">
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
    <p>Poznámka: Výsledek dotazu pak v tabulce seřaďte podle sloupce &quot;Room&quot;.</p>
    <h3>Inventář podle uživatele</h3>
    Objekty s vlastností inventární číslo seskupené podle vlastnosti User    <div class="wide">
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


    <p>Poznámka: Pak výsledek dotazu v tabulce seřaďte podle sloupce &quot;Uživatel&quot;.</p>

    <h3>Odinstalovaný software</h3>
    Nainstalovaný software seskupený podle počítače    <div class="wide">
        <pre translate="no">SELECT c.[Object name] AS [Computer], Product AS [Application],
Installed, LicenseInventoryNumber AS [Computer inventory number],
u.[Object name] AS [User], LicenseInvoiceNumber AS [License document number],
LicenceName AS [LicenseName] FROM Query.Software
LEFT JOIN Query.ObjectEnu c ON c.[Object id] = Software.ComputerNodeId 
LEFT JOIN Query.ObjectEnu u ON u.[Object id] = Software.[User]
WHERE Product like N'ALVAO%'</pre>
    </div>



    <h3>Operační systémy</h3>
    Nainstalované operační systémy, seskupené podle počítačů    <div class="wide">
        <pre translate="no">SELECT Computer.NodeName AS [Computer], Product AS [OS], Installed AS [Installation Date],
Computer.[Inventory Number] AS [Inventory Number], [Computer].UserNodeId AS [User], LicenseInvoiceNumber AS [Document], [LicenceName] AS [Assigned license], LicenseActivationKey AS [OS - serial number] 
FROM Query.Software 
LEFT JOIN Query.Computer ON Computer.NodeId = Software.ComputerNodeId WHERE Category = 1
</pre>
    </div>


    <h3>Počítače</h3>
    Počítače, jejich podobjekty a vlastnosti    <div class="wide">
        <pre translate="no">SELECT [Object name], [Network branch name], [User], [Purchase date], [Inventory number], [Serial number],
[Warranty expiration], [Total hard disk capacity (GB)] AS [HDD], CPU, [Operating system] 
FROM Query.ObjectEnu
WHERE [Object of Computer type] = 'Yes'</pre>
    </div>

    <h3>Změny podle data</h3>
    Seznam událostí v protokolu ze zadaných parametrů. Seskupení podle objektů    <div class="wide">
        <pre translate="no">SELECT [Object name], [Object kind], [Record date (UTC)], [Title], [Message]
FROM [Query].[ObjectLogEnu]
LEFT JOIN [Query].[ObjectEnu] ON [ObjectEnu].[Object id] = [ObjectLogEnu].[Object id]</pre>
    </div>

    <h3>Pohyby objektů podle data</h3>
    Seznam událostí pohybů v protokolu. Seskupení podle data    <div class="wide">
        <pre translate="no">SELECT [Object name], [Object kind], [Record date (UTC)], [Title], [Message]
FROM [Query].[ObjectLogEnu]
LEFT JOIN [Query].[ObjectEnu] ON [ObjectEnu].[Object id] = [ObjectLogEnu].[Object id]
WHERE ObjectLogEnu.[Title] = N'Move' AND ObjectLogEnu.[Record kind] = 'Object history'</pre>
    </div>

    <h3>Zařízení podle data pořízení</h3>
    Seznam objektů podle data pořízení    <div class="wide">
        <pre translate="no">SELECT [Object name], CONVERT(datetime, [Purchase date]) AS [Date], [Room], [User]
FROM Query.ObjectEnu</pre>
    </div>

    <h3>Zařízení v záruce</h3>
    Seznam předmětů podle jejich záruky (vlastnictví)    <div class="wide">
        <pre translate="no">SELECT [Object name], CONVERT(datetime, [Purchase date]) AS [Date], [Room], [User], [Warranty expiration]
FROM Query.ObjectEnu</pre>
    </div>

</asp:Content>

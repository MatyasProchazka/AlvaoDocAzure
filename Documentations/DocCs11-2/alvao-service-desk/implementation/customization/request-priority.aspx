<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Priorita požadavků</h1>

    <p>Priority požadavků jsou definovány v tabulce tColumnValue.</p>
    <p>Názvy priorit můžete měnit pomocí následujícího skriptu SQL, ve kterém nastavíte nový název priority (@newValue) a váhu měněné priority (@priority 1-5):</p>

    <pre translate="no">DECLARE @newValue varchar(30) = N'lowest';
DECLARE @priority int = 1;

UPDATE 
	tColumnValue
SET 
	mColumnValue = @newValue,
	ColumnValueShort = @newValue
WHERE
	liColumnId = (SELECT iColumnId FROM tColumn WHERE sTable = 'tHdTicket' AND sColumn = 'Priority') AND 
	nOrder = @priority</pre>

    <div class="note" style="line-height: 100%">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Skript upravte a spusťte pro každou měněnou prioritu    </div>

</asp:Content>

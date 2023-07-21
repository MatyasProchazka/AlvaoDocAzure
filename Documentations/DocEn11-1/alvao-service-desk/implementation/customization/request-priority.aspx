<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request priority</h1>

    <p>Request priorities are defined in the tColumnValue table.</p>
    <p>You can change the priority names using the following SQL script, where you set the new priority name (@newValue) and the weight of the priority you are changing (@priority 1-5):</p>

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
        <div class="title">Note:</div>
        Edit and run the script for each priority that is changed.
    </div>

</asp:Content>

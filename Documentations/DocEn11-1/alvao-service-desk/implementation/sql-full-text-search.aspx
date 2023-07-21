<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Full-Text Search</h1>

    <p>Alvao can quickly search information in the database using <em>Full-Text Search</em> (FTS) technology. If FTS is disabled, searches can be slow and the search function of the request logs is not available at all.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the <b>Full-Text and Semantics Extractions for Search</b> component was installed on SQL Server at the time of the Alvao upgrade to the current version, FTS will be automatically enabled during the upgrade.
    </div>


    <h2>Check to enable Full-Text Search</h2>
    <p>Check FTS installation and settings with SQL script:</p>
    <div class="wide">
        <pre translate="no">
IF (1 != ISNULL(fulltextserviceproperty(&#39;IsFulltextInstalled&#39;),0)) PRINT N&#39;FTS is not installed.&#39; ELSE 
IF (1 != ISNULL((SELECT 1 FROM [dbo].[sysfulltextcatalogs] WHERE name = &#39;ftCatalogAlvao&#39;),0)) 
PRINT N&#39;FTS is not enabled.&#39; ELSE PRINT N&#39;FTS is installed and enabled.&#39;</pre>
    </div>
    <p>
        If FTS is not installed, install the <b>Full-Text and Semantics Extractions for Search</b> component, which is an optional component of <em>SQL Database Engine</em>, into SQL Server. You can install this component during the initial installation of MS SQL Server, or you can <a href="http://msdn.microsoft.com/en-us/library/cc281940">install</a> later with the SQL Server installer for any edition.
    </p>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        As of version 2012, SQL Server no longer considers the underscore ("_") to be a word separator by default.  Because of this, as of this version, you cannot search for individual words that are separated by an underscore in the text, but you must enter the entire "phrase" including the underscores or the initial part of the phrase into the search engine.  If you are not comfortable with this behavior, you can <a href="https://docs.microsoft.com/en-us/previous-versions/sql/sql-server-2012/gg509108(v=sql.110)?redirectedfrom=MSDN">set SQL Server</a> to use the same word separators as older versions.
    </div>


    <h2>Full-Text Search</h2>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        It is recommended that the FTS be turned on at times outside of Alvao's normal operating hours. When FTS is turned on, SQL Server will begin creating indexes for searches, which may temporarily degrade SQL Server performance.
    </div>

    <p>
        If FTS is not enabled in the Alvao database, run the following SQL script.To run it, you must be a member of the <b>sysadmin</b> group, <b>db_owner</b>, or <b>db_ddladmin</b>.
    </p>

    <div class="wide">
        <pre translate="no">
DECLARE @languageLCID int;
SELECT TOP 1 @languageLCID = lcid from syslanguages where langid = @@DEFAULT_LANGID;
DECLARE @CreateFulltext nvarchar(MAX);
SET @CreateFulltext = N&#39;CREATE FULLTEXT CATALOG ftCatalogAlvao WITH ACCENT_SENSITIVITY = OFF AS DEFAULT; 
CREATE FULLTEXT INDEX ON tHdTicket (FullTextSearch LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;, mHdTicketNotice LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;, sHdTicket LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;) KEY INDEX PK_tHdTicket_iHdTicketId WITH STOPLIST OFF; 
CREATE FULLTEXT INDEX ON tAct (sAct LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;, mActNotice LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;, sActFrom  LANGUAGE &#39; 
+CAST(@languageLCID AS nvarchar)+N&#39;, sActTo LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;, sActToEmail LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;, sActFromEmail LANGUAGE &#39;
+CAST(@languageLCID AS nvarchar)+N&#39;) KEY INDEX PK_tAct_iActId WITH STOPLIST OFF;
CREATE FULLTEXT INDEX ON tDocument (sDocument LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;) KEY INDEX PK_tDocument_iDocumentId WITH STOPLIST OFF;
CREATE FULLTEXT INDEX ON tArticle  (HtmlArticleBinary TYPE COLUMN HtmlArticleBinaryExt, sArticle, mArticleAnnotation, mArticle  LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;) KEY INDEX PK_tArticle_iArticleId;
CREATE FULLTEXT INDEX ON tHdTicketApprovalItem (mHdTicketApprovalItemNotes LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;) KEY INDEX PK_tHdTicketApprovalItem WITH STOPLIST OFF;
CREATE FULLTEXT INDEX ON HdSectionLoc (HdSectionKeywords LANGUAGE &#39;+CAST(@languageLCID AS nvarchar)+N&#39;) KEY INDEX PK_HdSectionLoc_HdSectionLocId WITH STOPLIST OFF;&#39;;
EXECUTE sp_executesql @CreateFulltext;</pre>
    </div>

    <div class="note">
        <div class="icon"></div>
        Note<div class="title">:</div>
        <p>
            <br />
            This script inflects the search for words according to the default language of the database. If you want to inflect words according to another language, replace the second line with a line such as:
        </p>

        <pre translate="no">
SET @languageLCID = 1029</pre>

        <p>Replace the number 1029 with the code of the national environment you want to use for word inflection.</p>
        If you want to change the language afterwards, turn FTS off and on again.
    </div>

    <h2>Off Full-Text Search</h2>

    <p>
        To disable the Full-Text Search catalog, run the following SQL script.You must be a member of the <b>sysadmin</b> group, <b>db_owner</b>, or <b>db_ddladmin</b>.
    </p>

    <div class="wide">
        <pre translate="no">
DROP FULLTEXT INDEX ON tHdTicket;
DROP FULLTEXT INDEX ON tAct;
DROP FULLTEXT INDEX ON tDocument;
IF EXISTS (SELECT * FROM sys.tables t INNER JOIN  sys.fulltext_indexes fi ON t.[object_id] = fi.[object_id] WHERE t.name= &#39;tArticle&#39;)
DROP FULLTEXT INDEX ON tArticle;
IF EXISTS (SELECT * FROM sys.tables t INNER JOIN  sys.fulltext_indexes fi ON t.[object_id] = fi.[object_id] WHERE t.name= &#39;tHdTicketApproval&#39;)
DROP FULLTEXT INDEX ON tHdTicketApproval;
IF EXISTS (SELECT * FROM sys.tables t INNER JOIN  sys.fulltext_indexes fi ON t.[object_id] = fi.[object_id] WHERE t.name= &#39;tHdTicketApprovalItem&#39;)
DROP FULLTEXT INDEX ON tHdTicketApprovalItem;
IF EXISTS (SELECT * FROM sys.tables t INNER JOIN  sys.fulltext_indexes fi ON t.[object_id] = fi.[object_id] WHERE t.name= &#39;HdSectionLoc&#39;)
DROP FULLTEXT INDEX ON HdSectionLoc;
DROP FULLTEXT CATALOG ftCatalogAlvao;</pre>
    </div>


</asp:Content>

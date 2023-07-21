<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vyhledávání v plném textu</h1>

    <p>Alvao dokáže rychle vyhledávat informace v databázi pomocí technologie <em>fulltextového vyhledávání</em> (FTS). Pokud je FTS vypnuta, může být vyhledávání pomalé a funkce vyhledávání v protokolech požadavků není vůbec k dispozici.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud byla v době upgradu systému Alvao na aktuální verzi na serveru SQL Server nainstalována komponenta <b>Full-Text and Semantics Extractions for Search</b>, bude technologie FTS při upgradu automaticky povolena    </div>


    <h2>Zaškrtněte políčko pro povolení fulltextového vyhledávání</h2>
    <p>Zkontrolujte instalaci a nastavení FTS pomocí skriptu SQL:</p>
    <div class="wide">
        <pre translate="no">
IF (1 != ISNULL(fulltextserviceproperty(&#39;IsFulltextInstalled&#39;),0)) PRINT N&#39;FTS is not installed.&#39; ELSE 
IF (1 != ISNULL((SELECT 1 FROM [dbo].[sysfulltextcatalogs] WHERE name = &#39;ftCatalogAlvao&#39;),0)) 
PRINT N&#39;FTS is not enabled.&#39; ELSE PRINT N&#39;FTS is installed and enabled.&#39;</pre>
    </div>
    <p>
        Pokud FTS není nainstalován, nainstalujte do SQL Serveru komponentu <b>Full-Text and Semantics Extractions for Search</b>, která je volitelnou součástí <em>SQL Database Engine</em>. Tuto komponentu můžete nainstalovat během počáteční instalace MS SQL Serveru nebo ji můžete <a href="http://msdn.microsoft.com/en-us/library/cc281940">nainstalovat</a> později pomocí instalačního programu SQL Serveru pro libovolnou edici    </p>


    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Od verze 2012 již SQL Server ve výchozím nastavení nepovažuje podtržítko ("_") za oddělovač slov.  Z tohoto důvodu nelze od této verze vyhledávat jednotlivá slova, která jsou v textu oddělena podtržítkem, ale musíte do vyhledávače zadat celou "frázi" včetně podtržítek nebo počáteční části fráze.  Pokud vám toto chování nevyhovuje, můžete <a href="https://docs.microsoft.com/en-us/previous-versions/sql/sql-server-2012/gg509108(v=sql.110)?redirectedfrom=MSDN">nastavit,</a> aby <a href="https://docs.microsoft.com/en-us/previous-versions/sql/sql-server-2012/gg509108(v=sql.110)?redirectedfrom=MSDN">SQL Server</a> používal stejné oddělovače slov jako starší verze    </div>


    <h2>Celotextové vyhledávání</h2>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Doporučujeme zapnout FTS v době mimo běžnou provozní dobu Alvao. Po zapnutí FTS začne SQL Server vytvářet indexy pro vyhledávání, což může dočasně snížit výkon SQL Serveru    </div>

    <p>
        Pokud není FTS v databázi Alvao zapnuta, spusťte následující skript SQL. k jeho spuštění musíte být členem skupiny <b>sysadmin</b>, <b>db_owner</b> nebo <b>db_ddladmin</b>   </p>

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
        Poznámka<div class="title">:</div>
        <p>
            <br />
            Tento skript skloňuje vyhledávání slov podle výchozího jazyka databáze. Pokud chcete slova skloňovat podle jiného jazyka, nahraďte druhý řádek řádkem, jako je např     </p>

       <pre translate="no">
SET @languageLCID = 1029</pre>

        <p>Nahraďte číslo 1029 kódem národního prostředí, které chcete použít pro skloňování slov.</p>
        Pokud chcete jazyk dodatečně změnit, vypněte a znovu zapněte FTS   </div>

    <h2>Vypnutí fulltextového vyhledávání</h2>

    <p>
        Chcete-li vypnout katalog Full-Text Search, spusťte následující skript SQL. musíte být členem skupiny <b>sysadmin</b>, <b>db_owner</b> nebo <b>db_ddladmin</b>   </p>

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

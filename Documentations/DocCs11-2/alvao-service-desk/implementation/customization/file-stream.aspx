<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Ukládání příloh mimo databázi</h1>

    <p>Přílohy, které obvykle zabírají největší část celé databáze, lze ukládat mimo databázi pomocí technologie filestream. Velikost příloh se pak nezapočítává do velikosti samotné databáze.</p>
    <p>Tuto možnost zaškrtněte, pokud dotazy často obsahují přílohy, které pak výrazně zvyšují velikost databáze, a chcete používat Alvao na Microsoft SQL Server Express, kde je velikost databáze omezena.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Nastavení ukládání příloh mimo databázi nemá vliv na výkonnost systému Alvao    </div>



    <h2>Deaktivace možnosti ukládání příloh mimo databázi</h2>
    <ol>
        <li><strong>Povolení proudu souborů na serveru MS SQL</strong><ul>
            <li><strong>Povolení proudu souborů při instalaci MS SQL Serveru</strong><ol>
                <li>Otevřete stránku Konfigurace databázového stroje.</li>
                <li>Na kartě FILESTREAM postupně povolte následující možnosti:<ul>
                    <li>Povolit FILESTREAM pro přístup v jazyce Transact-SQL</li>
                    <li>Povolit FILESTREAM pro přístup k souborovému I/O streamu</li>
                    <li>Povolit klientům odebírání proudový přístup k datům FILESTREAM</li>
                </ul>
                </li>
                <li>Pokračovat v instalaci.</li>
            </ol>
            </li>
            <li><strong>Povolení proudu souborů po instalaci MS SQL Serveru</strong><ol>
                <li>Spusťte Správce konfigurace SQL Serveru.</li>
                <li>Klepněte pravým tlačítkem myši na instanci služby SQL Server, které chcete povolit proud souborů.</li>
                <li>Na kartě FILESTREAM postupně zapněte všechny možnosti.</li>
                <li>Uložte kliknutím na tlačítko OK.</li>
                <li>Spusťte SQL Server Management Studio</li>
                <li>Spusťte následující skript SQL nad cílovou DB Alvao:<ul>
                    <li>EXEC sp_configure filestream_access_level, 2<br />
                        GO<br />
                        RECONFIGURE<br />
                        GO</li>
                </ul>
                </li>
            </ol>
            </li>
        </ul>
        </li>
        <li><strong>Přidání proudu souborů do databáze</strong><ol>
            <li>Spusťte SQL Server Management Studio.</li>
            <li>Spusťte skript Alvao SQL nad cílovou DB:<ul>
                <li>ALTER DATABÁZE<strong>[&lt;název_databáze&gt;]</strong><br />
                    ADD FILEGROUP fstDocumentGroup obsahuje filestream;<br />
                    go<br />
                    declare @db_name varchar (MAX)<br />
                    declare @filestream_loc varchar (MAX)<br />
                    SELECT @db_name = physical_name FROM sys.master_files WHERE database_id = DB_ID(DB_NAME()) AND type_desc = 'ROWS'<br />
                    set @db_name = REVERSE(RIGHT(REVERSE(@db_name),(LEN(@db_name)-CHARINDEX('\', REVERSE(@db_name),1))+1)))<br />
                    set @filestream_loc = @db_name + 'AlvaoFileStream'<br />
                    <br />
                    DECLARE @AddFileSql varchar(max);<br />
                    SET @AddFileSql = 'ALTER DATABASE<strong>[&lt;název_databáze&gt;]</strong><br />
                    ADD FILE<br />
                    ( NAME = ''fstDocument'', FILENAME = ' + QuoteName( @filestream_loc, '''' ) + ')  <br />
                    TO FILEGROUP [fstDocumentGroup];<br />
                    ';<br />
                    EXEC (@AddFileSql);</li>
            </ul>

                <div class="note">
                   <div class="icon"></div>
                    <div class="title">Poznámka:</div>
                    Výše uvedený skript vytvoří složku pro uložení souborového proudu ve složce databázových souborů.<br />
                    Pokud chcete uložit tok souborů do vlastní definované složky, zadejte název složky včetně absolutní cesty do proměnné @filestream_loc:<br />

                    <ul>
                        <li>ALTER DATABÁZE<strong>[&lt;název_databáze&gt;]</strong><br />
                            ADD FILEGROUP fstDocumentGroup obsahuje filestream;<br />
                            go<br />
                            declare @filestream_loc varchar (MAX)<br />
                            set @filestream_loc = 'C:\&lt;cesta&gt;\&lt;složka_s_filestream&gt;'<br />
                            <br />
                            DECLARE @AddFileSql varchar(max);<br />
                            SET @AddFileSql = 'ALTER DATABASE<strong>[&lt;název_databáze&gt;]</strong><br />
                            ADD FILE<br />
                            ( NAME = ''fstDocument'', FILENAME = ' + QuoteName( @filestream_loc, '''' ) + ')  <br />
                            TO FILEGROUP [fstDocumentGroup];<br />
                            ';<br />
                            EXEC(@AddFileSql)                 </li>
                    </ul>

                    <div class="caution">
                       <div class="icon"></div>
                        <div class="title">Upozornění:</div>
                        Cílová složka nesmí v době spuštění skriptu existovat. Bude automaticky vytvořena při spuštění skriptu       </div>

                </div>



            </li>
        </ol>
        </li>
        <li><strong>Přidání proudu souborů do tabulky tDocument</strong><ol>
            <li>Spusťte aplikaci SQL Server Management Studio.</li>
            <li>Spusťte skript Alvao SQL nad cílovou DB:<ul>
                <li>ALTER TABLE dbo.tDocument SET (FILESTREAM_ON = fstDocumentGroup)<br />
                    GO<br />
                    <br />
                    ALTER TABLE dbo.tDocument<br />
                    ADD TempColumn varbinary(max) FILESTREAM NULL<br />
                    GO<br />
                    <br />
                    DECLARE @curId INT<br />
                    DECLARE @db_cursor CURSOR      <br />
                    SET @db_cursor = CURSOR FOR<br />
                    SELECT iDocumentId FROM dbo.tDocument WHERE oDocument IS NOT NULL<br />
                    <br />
                    OPEN @db_cursor          <br />
                    FETCH NEXT FROM @db_cursor INTO @curId<br />
                    <br />
                    WHILE @@FETCH_STATUS = 0<br />
                    BEGIN<br />
                    UPDATE dbo.tDocument SET TempColumn = oDocument WHERE iDocumentId = @curId<br />
                    UPDATE dbo.tDocument SET oDocument = NULL WHERE iDocumentId = @curId<br />
                    <br />
                    FETCH NEXT FROM @db_cursor INTO @curId<br />
                    END<br />
                    CLOSE @db_cursor<br />
                    DEALLOCATE @db_cursor<br />
                    GO  <br />
                    <br />
                    ALTER TABLE dbo.tDocument DROP COLUMN oDocument<br />
                    GO<br />
                    <br />
                    EXEC sp_rename 'dbo.tDocument.TempColumn', 'oDocument', 'COLUMN'<br />
                    GO</li>
            </ul>
            </li>
        </ol>
        </li>
    </ol>

    <h2>Zakázání možnosti ukládat přílohy mimo databázi</h2>

    <ol>
        <li><strong>Odstranění proudu souborů z tabulky tDocument</strong><ol>
            <li>V prostředí SQL Server Management Studio spusťte následující skript nad cílovou DB Alvao:<ul>
                <li>ALTER TABLE dbo.tDocument ADD TempColumn varbinary(max)<br />
                    GO<br />
                    <br />
                    DECLARE @curId INT<br />
                    DECLARE @db_cursor CURSOR      <br />
                    SET @db_cursor = CURSOR FOR<br />
                    SELECT iDocumentId FROM dbo.tDocument WHERE oDocument IS NOT NULL<br />
                    <br />
                    OPEN @db_cursor          <br />
                    FETCH NEXT FROM @db_cursor INTO @curId<br />
                    <br />
                    WHILE @@FETCH_STATUS = 0<br />
                    BEGIN<br />
                    UPDATE dbo.tDocument SET TempColumn = oDocument WHERE iDocumentId = @curId<br />
                    UPDATE dbo.tDocument SET oDocument = NULL WHERE iDocumentId = @curId<br />
                    <br />
                    FETCH NEXT FROM @db_cursor INTO @curId<br />
                    END<br />
                    CLOSE @db_cursor<br />
                    DEALLOCATE @db_cursor<br />
                    <br />
                    GO<br />
                    ALTER TABLE dbo.tDocument DROP COLUMN oDocument<br />
                    GO<br />
                    EXEC sp_rename 'dbo.tDocument.TempColumn', 'oDocument', 'COLUMN'<br />
                    GO<br />
                    ALTER TABLE dbo.tDocument set (filestream_on = &quot;NULL&quot;)</li>
            </ul>
            </li>
        </ol>
        </li>
        <li><strong>Odstranění proudu souborů z databáze</strong><ol>
            <li>V aplikaci SQL Management Studio spusťte skript:<ul>
                <li>ALTER DATABASE<strong>[&lt;název_databáze&gt;]</strong> REMOVE FILE fstDocument<br />
                    GO<br />
                    ALTER DATABASE<strong>[&lt;název_databáze&gt;]</strong> REMOVE FILEGROUP fstDocumentGroup<br />
                    GO</li>
            </ul>
            </li>
        </ol>
        </li>
        <li><strong>Zakázání proudu souborů na MS SQL Serveru</strong><ul>
            <li><strong>Zakázání ve Správci konfigurace SQL</strong><ol>
                <li>Spusťte SQL Server Management Studio.</li>
                <li>Spusťte skript Alvao SQL nad cílovou DB:<ul>
                    <li>EXEC sp_configure filestream_access_level, 0<br />
                        GO<br />
                        RECONFIGURE<br />
                        GO</li>
                </ul>
                </li>
                <li>Spusťte Správce konfigurace SQL Serveru.</li>
                <li>Klikněte pravým tlačítkem myši na instanci služby SQL Server, u které chcete zakázat proud souborů.</li>
                <li>Na kartě FILESTREAM postupně zakažte všechny možnosti.</li>
                <li>Uložte kliknutím na tlačítko OK.</li>
            </ol>
            </li>
        </ul>
        </li>
    </ol>


</asp:Content>

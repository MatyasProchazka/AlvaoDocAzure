<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Saving attachments outside the database</h1>

    <p>The attachments that usually take up the largest part of the entire database can be stored outside the database using filestream technology. The size of the attachments is then not counted in the size of the database itself.</p>
    <p>Check this option if the queries often contain attachments, which then significantly increase the size of the database, and you want to use Alvao on Microsoft SQL Server Express, where the database size is limited.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Setting attachments to be stored outside the database does not affect Alvao performance.
    </div>



    <h2>Deactivate the option to save attachments outside the database</h2>
    <ol>
        <li><strong>Enable filestream on MS SQL server</strong><ul>
            <li><strong>Enable filestream during MS SQL Server installation</strong><ol>
                <li>Open the Database Engine Configuration page.</li>
                <li>On the FILESTREAM tab, enable the following options in turn:<ul>
                    <li>Enable FILESTREAM for Transact-SQL access</li>
                    <li>Enable FILESTREAM for file I/O streaming access</li>
                    <li>Allow remove clients to have streaming access to FILESTREAM data</li>
                </ul>
                </li>
                <li>Continue installation.</li>
            </ol>
            </li>
            <li><strong>Enabling filestream after MS SQL Server installation</strong><ol>
                <li>Start SQL Server Configuration Manager.</li>
                <li>Right-click on the SQL Server Service instance you want to enable filestream.</li>
                <li>On the FILESTREAM tab, turn on all options one by one.</li>
                <li>Save by clicking OK.</li>
                <li>Launch SQL Server Management Studio</li>
                <li>Run the following SQL script over the target DB Alvao:<ul>
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
        <li><strong>Adding a filestream to the database</strong><ol>
            <li>Launch SQL Server Management Studio.</li>
            <li>Run the Alvao SQL script over the target DB:<ul>
                <li>ALTER DATABASE [<strong>&lt;database_name&gt;</strong>]<br />
                    ADD FILEGROUP fstDocumentGroup contains filestream;<br />
                    go<br />
                    declare @db_name varchar (MAX)<br />
                    declare @filestream_loc varchar (MAX)<br />
                    SELECT @db_name = physical_name FROM sys.master_files WHERE database_id = DB_ID(DB_NAME())
 AND type_desc = &#39;ROWS&#39;<br />
                    set @db_name =
 REVERSE(RIGHT(REVERSE(@db_name),(LEN(@db_name)-CHARINDEX(&#39;\&#39;,
 REVERSE(@db_name),1))+1))<br />
                    set @filestream_loc = @db_name +
 &#39;AlvaoFileStream&#39;<br />
                    <br />
                    DECLARE @AddFileSql varchar(max);<br />
                    SET @AddFileSql = &#39;ALTER DATABASE [<strong>&lt;database_name&gt;</strong>]<br />
                    ADD FILE<br />
                    ( NAME = &#39;&#39;fstDocument&#39;&#39;,
 FILENAME = &#39; + QuoteName( @filestream_loc, &#39;&#39;&#39;&#39; ) + &#39;)
                    <br />
                    TO FILEGROUP [fstDocumentGroup];<br />
                    &#39;;<br />
                    EXEC (@AddFileSql);</li>
            </ul>

                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    The above script will create a folder to store the filestream in the database files folder.<br />
                    If you want to store the filestream in a custom defined folder, then enter the folder name including the absolute path into the @filestream_loc variable:<br />

                    <ul>
                        <li>ALTER DATABASE [<strong>&lt;database_name&gt;</strong>]<br />
                            ADD FILEGROUP fstDocumentGroup contains filestream;<br />
                            go<br />
                            declare @filestream_loc varchar (MAX)<br />
                            set @filestream_loc = &#39;C:\&lt;path&gt;\&lt;folder_with_filestream&gt;&#39;<br />
                            <br />
                            DECLARE @AddFileSql varchar(max);<br />
                            SET @AddFileSql = &#39;ALTER DATABASE [<strong>&lt;database_name&gt;</strong>]<br />
                            ADD FILE<br />
                            ( NAME = &#39;&#39;fstDocument&#39;&#39;,
 FILENAME = &#39; + QuoteName( @filestream_loc, &#39;&#39;&#39;&#39; ) + &#39;)
                            <br />
                            TO FILEGROUP [fstDocumentGroup];<br />
                            &#39;;<br />
                            EXEC(@AddFileSql);
                        </li>
                    </ul>

                    <div class="caution">
                        <div class="icon"></div>
                        <div class="title">Caution:</div>
                        The target folder must not exist at the time the script is run. It will be automatically created when the script is run.
                    </div>

                </div>



            </li>
        </ol>
        </li>
        <li><strong>Adding filestream to tDocument table</strong><ol>
            <li>Launch SQL Server Management Studio.</li>
            <li>Run the Alvao SQL script over the target DB:<ul>
                <li>ALTER TABLE dbo.tDocument SET (FILESTREAM_ON =
 fstDocumentGroup)<br />
                    GO<br />
                    <br />
                    ALTER TABLE dbo.tDocument<br />
                    ADD TempColumn varbinary(max) FILESTREAM NULL<br />
                    GO<br />
                    <br />
                    DECLARE @curId INT<br />
                    DECLARE @db_cursor CURSOR
                    <br />
                    SET @db_cursor = CURSOR FOR<br />
                    SELECT iDocumentId FROM dbo.tDocument WHERE oDocument IS NOT NULL<br />
                    <br />
                    OPEN @db_cursor
                    <br />
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
                    GO
                    <br />
                    <br />
                    ALTER TABLE dbo.tDocument DROP COLUMN oDocument<br />
                    GO<br />
                    <br />
                    EXEC sp_rename &#39;dbo.tDocument.TempColumn&#39;,
 &#39;oDocument&#39;, &#39;COLUMN&#39;<br />
                    GO</li>
            </ul>
            </li>
        </ol>
        </li>
    </ol>

    <h2>Disabling the option to save attachments outside the database</h2>

    <ol>
        <li><strong>Removing filestream from tDocument table</strong><ol>
            <li>In SQL Server Management Studio, run the following script over the target DB Alvao:<ul>
                <li>ALTER TABLE dbo.tDocument ADD TempColumn varbinary(max)<br />
                    GO<br />
                    <br />
                    DECLARE @curId INT<br />
                    DECLARE @db_cursor CURSOR
                    <br />
                    SET @db_cursor = CURSOR FOR<br />
                    SELECT iDocumentId FROM dbo.tDocument WHERE oDocument IS NOT NULL<br />
                    <br />
                    OPEN @db_cursor
                    <br />
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
                    EXEC sp_rename &#39;dbo.tDocument.TempColumn&#39;,
 &#39;oDocument&#39;, &#39;COLUMN&#39;<br />
                    GO<br />
                    ALTER TABLE dbo.tDocument set (filestream_on = &quot;NULL&quot;)</li>
            </ul>
            </li>
        </ol>
        </li>
        <li><strong>Removing the filestream from the database</strong><ol>
            <li>In SQL Management Studio, run the script:<ul>
                <li>ALTER DATABASE [<strong>&lt;database_name&gt;</strong>]
 REMOVE FILE fstDocument<br />
                    GO<br />
                    ALTER DATABASE [<strong>&lt;database_name&gt;</strong>]
 REMOVE FILEGROUP fstDocumentGroup<br />
                    GO</li>
            </ul>
            </li>
        </ol>
        </li>
        <li><strong>Disabling filestream on MS SQL Server</strong><ul>
            <li><strong>Disabling in SQL Configuration Manager</strong><ol>
                <li>Launch SQL Server Management Studio.</li>
                <li>Run the Alvao SQL script over the target DB:<ul>
                    <li>EXEC sp_configure filestream_access_level, 0<br />
                        GO<br />
                        RECONFIGURE<br />
                        GO</li>
                </ul>
                </li>
                <li>Launch SQL Server Configuration Manager.</li>
                <li>Right-click the SQL Server Service instance on which you want to disable the filestream.</li>
                <li>On the FILESTREAM tab, disable all options one by one.</li>
                <li>Save by clicking OK.</li>
            </ol>
            </li>
        </ul>
        </li>
    </ol>


</asp:Content>

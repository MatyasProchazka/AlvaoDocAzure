<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ExportUtil</h1>

    <h2>Function description</h2>

    <p>
        The application is used to export objects from the ALVAO Asset Management system to a standard CSV file. It exports only assets of the active inventory, i.e. excluding &quot;discarded assets&quot;, &quot;basket&quot; and other system objects.
    </p>
    <h2>Syntax command lines</h2>

    <p>
        <strong>ExportUtil</strong> <strong>/csv</strong> <em>&quot;path and name of CSV file&quot;</em> {<strong>/con</strong> <em>&quot;connection string&quot;</em>
        |
  <strong>/server</strong> <em>&quot;database server name&quot;</em> <strong>/db</strong> <em>&quot;database name&quot;</em>}
 <strong>/cols</strong>&quot;list of columns&quot; [<strong>/NotEmpty</strong>
        &quot;column name&quot;] [<strong>/TemplateFolder</strong> &quot;folder name&quot;]
  [<strong>/where</strong> {[@class] | [@name] | [@path] | [&lt;object property name&gt;]}&lt;operator&gt;&lt;value&gt;]
    </p>

    <h2>Detailed description of parameters</h2>

    <table>
        <thead>
            <tr>
                <th><strong>Parameter</strong></th>
                <th><strong>Description</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>/csv</strong></td>
                <td>The path and name of the CSV file where the object information will be saved.</td>
            </tr>
            <tr>
                <td><strong>/con<br />
                    /server<br />
                    /db</strong></td>
                <td>These parameters are used to set the connection to the Alvao database. It is possible to use a connection string (e.g. <strong>/con</strong> <em>&quot;Data source=.\sqlexpress;Initial Catalog=test;Integrated Security = True;TrustServerCertificate=True&quot;</em>), or simply specify a specific SQL server and DB (e.g. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test&quot;</em>).<br />
                    In case you use the <strong>/server</strong> parameters
  and <strong>/db</strong>, the database connection is made using Windows Integrated Authentication. If you specify all these parameters, only <strong>/con</strong> is used
  parameter, <strong>/server</strong> and <strong>/db</strong>
                    will be ignored. </td>
            </tr>
            <tr>
                <td><strong>/cols</strong></td>
                <td>Column definitions that will be exported to the output file. See below.</td>
            </tr>
            <tr>
                <td><strong>/NotEmpty</strong></td>
                <td>This parameter is for backwards compatibility and will be removed in future versions. We recommend using the <strong>/where</strong> parameter instead.
  It only exports objects where the value of a specific object property is not an empty value.<br />
                    Note: The property name can be written without diacritics.</td>
            </tr>
            <tr>
                <td><strong>/TemplateFolder</strong></td>
                <td>This parameter is for backwards compatibility and will be removed in future versions. We recommend using the <strong>/where</strong> parameter instead.
  It only exports certain types of objects lying in object templates under a certain folder. The parameter is the folder name.<br />
                    Note: The folder name can be written without diacritics.</td>
            </tr>
            <tr>
                <td><strong>/where</strong></td>
                <td>Used to filter exported objects by type, name, path in the tree, and property values. Follow the switch with the logical filter expression in quotes. All objects for which the expression is satisfied will be exported.<br />
                    You can use the following variables in the expression:
                        <ul>
                            .
  <li>[@class] - object kind</li>
                            <li>[@name] - name of the object in the tree</li>
                            <li>[@path] - path in the tree, the "/" character is used as a level separator</li>
                            .
  <li>[&lt;object property name&gt;] - value of a certain object property, e.g. [Serial number].<br />
      Note: property names can be entered without diacritics.</li>
                        </ul>

                    Konstanty:
                        <ul>
                            <li>N'&lt;text constant&gt;' - text in unicode, e.g. N'Petr Novák'.</li>
                            <li>'&lt;text constant&gt;' - text in ASCII (without diacritics), e.g. 'Serial number'.</li>
                            <li>&lt;numeric constant&gt; - e.g. 12.</li>
                        </ul>

                    Operators:
                        <ul>
                            <li>= - equals, e.g., [@class]=N'Computer/server'</li>
                            <li>!=, &lt;&gt; - does not equal, e.g. [@class]&lt;&gt;N'Computer/server'</li>
                            <li>IN - value equals one of the specified values, e.g. [@class]IN (N'Computer/server', N'Computer/virtual')</li>
                            <li>LIKE - string comparison with the possibility of using simple regular expressions. E.g. object kind starting with 'Computer/': [@class] LIKE N'Computer/%')</li>
                            <li>NOT - negation of IN or LIKE operators, e.g. [@class] NOT LIKE N'Computer/%')</li>
                            <li>IS NULL - the value is NULL - e.g. the object does not have the property Serial number: [Serial number] IS NULL.</li>
                        </ul>
                    You can concatenate parts of an expression using AND and OR operators.<br />

                    <br />
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        The format of the expression corresponds to the WHERE expression in SQL.
                    </div>
                </td>
            </tr>
        </tbody>
    </table>

    <h2>Description of supported columns</h2>
    <p>
        Columns are set in the <strong>/cols</strong> parameter
  are separated by a comma. We recommend enclosing the entire parameter value in quotes. 
    </p>

    <table>
        <thead>
            <tr>
                <th><strong>Column</strong></th>
                <th><strong>Importance</strong></th>
                <th><strong>Example value</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>@id</strong></td>
                <td>The unique identifier (INT number) of the object in the Asset Management database (NodeId).</td>
                <td>1245</td>
            </tr>
            <tr>
                <td><strong>@name</strong></td>
                <td>The name of the object in the object tree.</td>
                <td>HP LP2475w, LCD, 24&quot;</td>
            </tr>
            <tr>
                <td><strong>@class</strong></td>
                <td>Object kind.</td>
                <td>Monitor</td>
            </tr>
            <tr>
                <td><strong>@path</strong></td>
                <td>The path to the object in the object tree.</td>
                <td>Organization/Brno/Petr Novák</td>
            </tr>
            <tr>
                <td><strong>@adguid</strong></td>
                <td>GUID identifier of the object from Active Directory (contains the value if the object was created or paired using an AD import).</td>
                <td>{f50c0d0f-fede-4aaa-9509-7632e48251cc}</td>
            </tr>
            <tr>
                <td style="width: 12%"><strong>[object property]</strong></td>
                <td>Any object property. Properties must be written in square brackets.<br />
                    Note: The property name can be accented or unaccented.</td>
                <td>SN1234</td>
            </tr>
        </tbody>
    </table>

    <p>
        Example of parameter value: &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in network]&quot;
    </p>
    <h2>Scenarios</h2>

    <h3>Export objects that have a value in the property &quot;Inventory number&quot;</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in siti]&quot; /where &quot;[inventory number]!=''&quot;</pre>

    <h3>Export all objects where the object template is in the folder &quot;IT assets&quot; in object templates</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in siti]&quot; /where &quot;[@class] IN (SELECT txtClass FROM vNodeClass WHERE txtPath LIKE N'Object Templates/Inventory IT%')&quot;</pre>

    <h3>Export all mobile phones</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[inventory number],[name in network]&quot; /where &quot;[@class]=N'Mobile phone'&quot;</pre>

    <h3>Export all iPhone 7 mobile phones</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in network]&quot; /where &quot;[@class]=N'Mobile phone' AND [Model]=N'iPhone 7'&quot;</pre>

    <h3>Export of all mobile phones in Brno branch</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in network]&quot; /where &quot;[@class]=N'Mobile phone' AND [@path] LIKE N'Organization/Brno/%'&quot;</pre>
</asp:Content>

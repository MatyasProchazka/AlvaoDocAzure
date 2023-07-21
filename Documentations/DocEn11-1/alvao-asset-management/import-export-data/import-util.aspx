<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ImportUtil</h1>

    <h2>Function description</h2>
    <p>This utility is used to import objects from CSV files into Asset Management. The utility uses <em>Object Templates</em> from AM during import.</p>
    <h2 id="csvstructure">CSV file structure</h2>
    <p>The CSV file must have a semicolon as the value separator. The first line must contain the column names:</p>
    <table>
        <thead>
            <tr>
                <th><strong>Column</strong></th>
                <th><strong>Description</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Class</strong> or <strong>Species</strong></td>
                <td>The name of the type of the imported object.</td>
            </tr>
            <tr>
                <td><strong>SwProfile</strong></td>
                <td>The software profile of the computer object. The values specified in this column must match the names of existing software profiles. If the value is blank, the computer's software profile is set to "All software is enabled".
                </td>
            </tr>
            <tr>
                <td><strong>NodeId</strong></td>
                <td>The unique number of each object in the AM (can be displayed on the Child Objects tab, or in the Object Lists window). If the NodeId column is used in the <strong>-keyfields</strong> parameter
 and there is no value in the NodeId column, a new object is created. If an object with a specific NodeId does not exist in the database, a warning is issued and the object is not updated or a new object is created.</td>
            </tr>
            <tr>
                <td><strong>&lt;property name&gt;</strong></td>
                <td>The name of any object property in Asset Management (e.g., "Purchase Date").</td>
            </tr>

        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <p>We recommend using UTF-8 encoding.</p>
    </div>
    <h2>Command line syntax</h2>

    <p>
        <strong>ImportUtil</strong>
        <strong>-input</strong> <em>name of input CSV file</em>
        {<strong>-conn</strong> <em>connection string</em> |
  <strong>-server</strong> <em>name of database server</em> <strong>-db</strong> <em>name of database</em>}
  [<strong>-class</strong> <em>object type</em>]
  [<strong>-separator</strong> <em>column separator used in CSV file</em>]
  [<strong>-keyfields</strong> <em>identification column[,identification column ...]]</em>
        [<strong>-parentnodeid</strong> <em>NodeId</em>]
  [<strong>-import</strong>]
  [<strong>-force</strong>]
    </p>

    <h2>Parameters description</h2>

    <table>
        <thead>
            <tr>
                <th><strong>Parameter</strong></th>
                <th><strong>Description</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>-class</strong></td>
                <td>Using this parameter, you can specify the type of object in the input data (e.g. <strong>-class</strong> <em>Monitor</em>).<br />
                    This parameter is mandatory if the source file does not contain a Type or Class column. If the input file contains the Type column and the <strong>-class</strong> <em>Class</strong> parameter is specified
 object kind</em>, only rows that have a matching entry in the Type column with <em>object kind</em> are included in the import.</td>
            </tr>
            <tr>
                <td><strong>-conn<br />
                    -server<br />
                    -db</strong></td>
                <td>These parameters are used to set the connection to the Alvao database. It is possible to use a connection string (e.g. <strong>-conn</strong> <em>Data source=.\sqlexpress;Initial Catalog=test;Integrated Security = True;TrustServerCertificate=True</em>), or simply specify a specific SQL server and DB (e.g. <strong>-server</strong> <em>.\sqlexpress</em> <strong>-db</strong>
                    <em>test</em>).<br />
                    In case you use the <strong>-server</strong> parameters
 and <strong>-db</strong>, the database connection is made using Windows Integrated Authentication. If you specify all these parameters, only <strong>-conn</strong> is used
 parameter, <strong>-server</strong> and <strong>-db</strong>
                    will be ignored.</td>
            </tr>
            <tr>
                <td>-<strong>datetimeformat</strong></td>
                <td>Date format in text strings (e.g. dd/MM/yyyy).
 If the parameter is not specified, the format is automatically detected during conversion. A detailed description of the possible formats can be found in <a href="https://msdn.microsoft.com/en-us/library/8kb3ddd4%28v=vs.110%29">MSDN</a>.</td>
            </tr>
            <tr>
                <td>-<strong>separator</strong></td>
                <td>Using this parameter, you can specify the column separator used in the imported CSV file. E.g., -separator &quot;,&quot;</td>
            </tr>
            <tr>
                <td><strong>-force</strong></td>
                <td>If used, the data is imported into the database even if there is an error in one of the entries. Without it, any error will cause no record to be imported.</td>
            </tr>
            <tr>
                <td><strong>-import</strong></td>
                <td>If used, the data is imported into the database, otherwise only the validity of the import is checked.</td>
            </tr>
            <tr>
                <td><strong>-input</strong></td>
                <td>Used for specifying the path and name of the input CSV file (e.g. <em>em
 D:\import\import.csv</em>)</td>
            </tr>
            <tr>
                <td><strong>-keyfields</strong></td>
                <td>Parameter used to identify and update existing objects. The specified columns together form a unique identifier (e.g. <strong>-keyfields</strong> Serial number, Model).
 If the identifier does not correspond to any item in the database, a new object is created in the <strong>Read Objects</strong> folder or in the folder specified by the <strong>-parentnodetid</strong> parameter.
 <div class="note">
     <div class="icon"></div>
     <div class="title">Note:</div>
     If the NodeId column (<strong>-keyfields</strong>) is used to identify
 NodeId), no other columns can be used in the parameter. See the description of the NodeId column for more information.
 </div>
                </td>
            </tr>
            <tr>
                <td><strong>-parentnodeid</strong></td>
                <td>Create new objects as child objects under the object with ID: <em>NodeId</em>.
 <div class="note">
     <div class="icon"></div>
     <div class="title">Note:</div>
     You can find out the NodeId value in the AM Console on the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/objects">Assigned Objects</a> tab.
 by displaying the system NodeId column, or in the database in the <a href="../implementation/customization/database#U_dbo.tblNode">tblNode</a>.intNodeId table.
 </div>
                </td>
            </tr>
            <tr>
                <td><strong>-scrapped</strong></td>
                <td>If used, the assets in the scrapped asset are also searched for and updated on import.</td>
            </tr>

        </tbody>
    </table>


    <div class="note">
        <div class="icon"></div>
        <div class="title">
            Note:
        </div>
        The following is a list of errors that are ignored when using the <strong>-</strong><strong>force</strong> parameter and do not cause the entire import to fail.<p>
            <br />
            <br />
            Errors counted in the result as skipped records:
        </p>
        <ul>
            <li>Multiple objects with a key value occurring in columns selected by the -keyfields parameter. For more information on the -keyfields parameter, see above.</li>
            <li>Nonexistent template in the database for an object in the file. For more information, see the -class parameter above.</li>
            <li>Duplicate records in the input file.</li>
        </ul>
        <p>Characters&nbsp;counted in the result as failed records:</p>
        <ul>
            <li>An error when creating an object according to an object template, including the template for the computer report that is used when creating an object with the Computer object kind.</li>
            <li>Error when updating an object in the database.</li>
        </ul>
    </div>

    <h2>Examples of use</h2>

    <p>
        <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>import.csv</em><strong> -server</strong><em> .\sqlexpress</em><strong>
 -db</strong><em>
  AlvaoSample</em>
    <strong>-separator</strong> &quot;,&quot;</p>
    <p>
        This command checks the validity of the <em>import.csv</em> file format in the current directory against the <em>AlvaoSample</em> database at <em>local SQL Server</em>.
    </p>
    <p>
        <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>import.csv</em><strong> -server</strong><em> .\sqlexpress</em><strong>
 -db </strong><em>AlvaoSample</em>
        <strong>-import</strong>
    </p>
    <p>
        This command imports data from the <em>import.csv</em> file into the <em>strong</em> database.
 <em>AlvaoSample</em> on the <em>local SQL Server</em>. In <strong>AM</strong>
        <strong>Read Objects</strong> folder, the corresponding new objects will be created.
    </p>
    <p>
        <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>.
 import.csv</em><strong> -server</strong><em> .\sqlexpress</em><strong>
 -db </strong><em>AlvaoSample</em> <strong>-parentnodeid</strong> <em>92</em>
        <strong>-import</strong>
    </p>
    <p>
        This command imports data from the <em>import.csv</em> file into the <em>strong</em> database.
 <em>AlvaoSample</em> on the <em>local SQL Server</em>. In <strong>AM</strong>
        the corresponding new objects are created under the object in the tree with the NodeId with the value <em>92</em>.
    </p>
    <p>
        <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>.
 update_db.csv</em><strong> -server</strong><em> .\sqlexpress</em><strong>
 -db</strong><em>
  AlvaoSample</em> <strong>-import</strong> <strong>-keyfields</strong> <em><q>registration mark</q></em>
    </p>
    <p>
        This command updates objects that have a <em>registration tag</em> entry that matches a value in the <em>update_db.csv</em> file in the <em>em>strongrong database</em>.
  <em>AlvaoSample</em> on the <em>local SQL Server</em>. In <strong>AM</strong>
        properties of identified objects are updated, or non-existent objects are created in the <strong>Read Objects</strong> folder.
    </p>
    <p>
        <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>update_db.csv</em><strong> -server</strong><em> .\sqlexpress</em><strong>
 -db</strong><em>
  AlvaoSample</em> <strong>-import</strong> <strong>-keyfields</strong> <em>NodeId</em>
    </p>
    <p>The command updates the property values of objects according to the CSV file whose NodeId matches the values in the CSV file.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">
            Note:
        </div>
        To test the functionality of the above commands, you can use the sample CSV files <a href="annexes/import.csv">import.csv</a> and <a href="annexes/update_db.csv">update_db.csv</a>.<br />
    </div>
</asp:Content>

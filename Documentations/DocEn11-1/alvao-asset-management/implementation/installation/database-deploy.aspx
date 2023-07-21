<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>DatabaseDeploy</h1>

    <p>The DatabaseDeploy utility is used to create a new database or to update an existing database to the latest version.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can also run the utility in a batch of commands. If the database creation/upgrade is successful, the return code returns 0, if it fails, it returns 1.
    </div>

    <h2>Syntax command lines</h2>
    <p>DatabaseDeploy.exe <strong>/conn</strong> <i>&lt;connection string&gt;</i> <strong>/langid</strong> <i>&lt;language id&gt;</i></p>


    <h2>Detailed description of parameters</h2>
    <table>
        <tr>
            <th>Parameter</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>/conn &lt;chain&gt;</td>
            <td>The connection string to the database.<br />
                Note: the database name is also set in the connection string. </td>
        </tr>
        <tr>
            <td>/langid &lt;language id&gt;</td>
            <td>ID of the database language. Supported values:<br />
                <ul>
                    <li>1029 - Czech</li>
                    <li>1051 - Slovak</li>
                    <li>1033 - English</li>
                    <li>1031 - German</li>
                    <li>1045 - Polish</li>
                </ul>
                Note: this parameter is only applied when creating a new database.  </td>
        </tr>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <ul>
            <li>You can also set command line parameters in the DatabaseDeploy.exe.config file. The command line parameters take precedence over the settings in the configuration file.</li>
            <li>The utility expects the Alvao database definition file <i>AlvaoDatabase.dacpac</i> to exist in the same folder.</li>
        </ul>
    </div>

    <h2>Example of use</h2>


    <ol>
        <li>Create a new Czech database named "ALVAO" on a local computer with SQL Server with instance name "sqlexpress" using integrated Windows authentication:<br />
            <strong>DatabaseDeploy.exe /conn</strong> "Data Source=.\sqlexpress;Initial Catalog=ALVAO;Integrated Security=True;TrustServerCertificate=True" <strong>/langid</strong> 1029 </li>
        <li>Upgrade database named "ALVAO" to SQL server on server "SERVER1" using SQL username and password:<br />
            <strong>DatabaseDeploy.exe /conn</strong> "Data Source=SERVER1,1433;Initial Catalog=ALVAO;User ID=user1234;Password=secret1234;TrustServerCertificate=True" </li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        For more connection string examples, see <a href="connection-string-samples">Connection String Examples</a>.
    </div>

</asp:Content>

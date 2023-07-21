<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import user portraits from files</h1>
    <h2>User portrait folder</h2>
    <ol>
        <li>Create a folder with user portraits on the server disk, e.g. &quot;C:\ProgramData\ALVAO\Portraits&quot;.</li>
        <li>Into this folder, insert image files with user portraits in the following format:
            <ul>
                <li>File name must match the user name of the user (see <em>ALVAO WebApp - Administration</em> - <a href="../../../list-of-windows/alvao-webapp/administration/users">Users</a>
                    - <em>User Name</em> column).</li>
                <li>The recommended image size is 133x200 px (width x height).</li>
                <li>Image format must be JPEG (extension .jpg).</li>
            </ul>
            For example, the user &quot;user1@company.local&quot; will have the portrait saved in the file &quot;C:\ProgramData\ALVAO\Portraits\user1@company.local.jpg&quot;.
        </li>
        <li>Add portraits of new users to this folder on an ongoing basis.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">
            Tip:
        </div>
        You can also store portraits in subfolders based on user domains.  In the portrait folder, create a subfolder for each network domain you use. The name of the subfolder must be the same as the domain name in the old username format (see ALVAO WebApp - Administration - <a href="../../../list-of-windows/alvao-webapp/administration/users">Users</a>
        - <em>User Name column (for older systems)</em>).<br />
        For example, for a user with the username &quot;company.local\user1&quot;, the portrait &quot;user1.jpg&quot; will be stored in the folder &quot;C:\ProgramData\ALVAO\Portraits\company.local&quot;.
    </div>

    <h2>Regular automatic import</h2>
    <p>
        On the server, create a scheduled task with a recurrence period of e.g. 1 time per day that runs the following command:
    </p>
    <p>
        <span class="console">%ProgramFiles%\ALVAO\AlvaoService\utilities\ImportPortraitsFiles.exe /server &lt;sql_server&gt; /db &lt;database_alvao&gt; /path &quot;C:\ProgramData\ALVAO\Portraits&quot;</span>
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        This task can optionally be created when you install ALVAO Server using <a href="../installation">ALVAO Server Setup</a>.
    </div>

    <h2>One-time import</h2>

    <p>
        For a one-time import of portraits, run a scheduled task created on the server, or run the <em translate="no">ImportPortraitsFiles</em> application directly from the command line. The application can be found in the <span translate="no">ALVAO Asset Management Console</span> installation directory ("%ProgramFiles%\ALVAO\Asset Management Console\ImportUtilities"),
	or you can copy it from the application server from the ALVAO Service installation directory ("%ProgramFiles%\ALVAO\AlvaoService\utilities").
    </p>

    <h2>Utility ImportPortraitsFiles</h2>

    <p>
        The ImportPortraitsFiles utility loads user portraits from files stored on disk into the Alvao system. 
    </p>
    <p>
        The utility is part of the ALVAO Service installation and is installed in the same folder, usually in &quot;%ProgramFiles%\ALVAO\AlvaoService\utilities&quot;.
    </p>

    <h3>Command line parameters</h3>

    <table>
        <thead>
            <tr>
                <th>Parameter</th>
                <th>Description</th>
                <th>Mandatory</th>
                <th>Example</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/conn &lt;string&gt;<br />
                    /server &lt;server&gt;<br />
                    /db &lt;db&gt;</td>
                <td>Setting the DB connection.</td>
                <td>Yes</td>
                <td>/conn &quot;Integrated Security=True;Initial Catalog=ALVAO;Data Source=.\SQLEXPRESS;TrustServerCertificate=True&quot; /server .\SQLEXPRESS /db ALVAO</td>
            </tr>
            <tr>
                <td>/path</td>
                <td>Disk path to the portrait files folder.</td>
                <td>Yes</td>
                <td>/path "C:\ProgramData\ALVAO\Portraits"</td>
            </tr>
            <tr>
                <td>/email</td>
                <td>The files are named according to the users email.<br />
                    Note: Files may not be subfoldered by domain.  </td>
                <td>No</td>
                <td>/email</td>
            </tr>
            <tr>
                <td>/wait</td>
                <td>Wait for a keystroke at the end of the import.</td>
                <td>No</td>
                <td>/wait</td>
            </tr>
        </tbody>
    </table>

</asp:Content>
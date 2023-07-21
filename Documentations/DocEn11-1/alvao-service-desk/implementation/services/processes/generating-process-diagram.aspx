<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>GenerateProcessDiagram</h1>

    <h2>Function description</h2>
    <p>This application is used to generate a status diagram of a specified process in Microsoft Visio. This utility works only if Microsoft Visio is installed on the computer.</p>

    <h2>Syntax command lines</h2>

    <p>
        <strong>GenerateProcessDiagram.exe</strong> {<strong>/conn</strong><em> &quot;connection string&quot;</em> | <strong>/server</strong> <em>&quot;database server name&quot;</em> <strong>/db</strong>
        <em>&quot;database name&quot;</em>} { <strong>/process</strong> <em>&lt;process number&gt;</em> | <strong>/processName</strong> <em>&quot;process name&quot;</em>}
    </p>

    <h2>Parameters</h2>

    <table>
        <thead>
            <tr>
                <th>Switch</th>
                <th>Description</th>
                <th>Mandatory</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/conn &quot;string&quot;<br />
                    /server &quot;server name&quot;<br />
                    /db &quot;database name&quot;</td>
                <td>These parameters are used to set the connection to the Alvao database. You can use a connection string (e.g. <strong>/conn</strong> <em>&quot;Data source=.\sqlexpress;Initial Catalog=test;Integrated Security=True;TrustServerCertificate=True&quot;</em>),
  or simply specify a specific SQL server and DB (e.g. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test&quot;</em>).
                </td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>/process &lt;process&gt;number&gt;<br />
                    /processName "process name"</td>
                <td>These parameters identify the corresponding process. It is possible to use a process number (e.g. <strong>/process</strong> 1),
  or specify a process name (e.g. <strong>/processName</strong> <em>&quot;General Request&quot;</em>).
                </td>
                <td>Yes</td>
            </tr>
        </tbody>
    </table>

    <h2>Examples of use</h2>
    <p>
        Display process status diagram by entering a simple SQL server login and process number:<br />
        GenerateProcessDiagram.exe /server &quot;.\sqlexpress&quot; /db &quot;test&quot; /process 1
    </p>

</asp:Content>

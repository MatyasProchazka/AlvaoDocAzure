<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Supported languages</h1>
    <h2>Common to all ALVAO products</h2>
    <p>ALVAO products are localized in the following languages:</p>
    <table class="wide">
        <tr>
            <th class="auto-style1">Language</th>
            <th>Alvao system language<br />
                (database, system items, ...)</th>
            <th>Application user interface<br />
                (command menus, dialogs, ...)</th>
            <th>User documentation</th>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">English</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div>
                (machine translation)</td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">English</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Hungarian</td>
            <td style="vertical-align: middle; text-align: center;">unsupported;<br />
                we recommend using English</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div>
                (machine translation)</td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">German</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div>
                (machine translation)</td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Polish</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div>
                (machine translation)</td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Sloven</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div>
                (WebApp only)</td>
            <td style="vertical-align: middle; text-align: center;">English is used</td>
        </tr>

    </table>

    <p>
        When implementing, you need to select the <strong>Alvao system language</strong>.
This language is then used to display system values in applications, such as object property names, system object names in the tree, system process names, etc. A given implementation must have exactly one Alvao system language. For information about using Alvao in a multi-language environment, see <a href="../../alvao-service-desk/implementation/multi-languages">Multilingual environment</a>.
    </p>
    <p>
        Application user interfaces, such as command menus, dialog items, etc., are dynamically displayed in the <strong>user's preferred language</strong>.
independent of the selected Alvao system language. The preferred language can be set by each user in <strong>ALVAO WebApp - User Menu - Settings</strong>- <a href="../../list-of-windows/alvao-webapp/settings/language">Language and Time Zone</a>, or the user's preferred language can be set by the system administrator in <strong>ALVAO WebApp - Administration - Users - Edit</strong>. If the user's preferred language is not supported, the user interface is displayed in English.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Some diagnostic logs are in English only.  
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Data, such as object names or request names, are not translated and are displayed in the language in which they were entered.
    </div>

    <h3>Preferred languages</h3>
    <p>Select the languages you want to offer users to select their preferred language as follows:</p>
    <ol>
        <li>In <strong>WebApp - Administration</strong>, select the <strong>Manage</strong> section.
  Settings - Languages</strong>.</li>
        <li>Use the <strong>Add Language</strong> command and select the language you want to add to the preferred languages list from the list of languages.</li>
        <li>Press the <strong>Save</strong> button.</li>
    </ol>


    <h2>Specific to ALVAO Asset Management</h2>
    <ul>
        <li>Data analysis is in English and Czech only.</li>
        <li>Press reports are also in Slovak.</li>
    </ul>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">


    <style type="text/css">
        .auto-style1 {
            width: 90px;
        }
    </style>


</asp:Content>


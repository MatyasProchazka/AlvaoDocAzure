<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO WebApp</h1>

    <p>
        ALVAO WebApp is a common web application for <a href="../alvao-service-desk">ALVAO Service Desk</a> and <a href="../alvao-asset-management">ALVAO Asset Management</a>. This chapter describes the different aspects of this application.
    </p>
    <p>Most pages of the application contain the following common elements:</p>
    <p>
        <img src="alvao-webapp/frame.png" alt="Common elements on application pages" /></p>
    <ol>
        <li><em>Main (vertical) command menu</em> - the menu contains the commands:<ul>
            <li><a href="alvao-webapp/main">Home page</a></li>
            <li><a href="alvao-webapp/requests">Requests</a></li>
            <li><a href="alvao-webapp/service-catalog">Service Catalogue</a></li>
            <li><a href="alvao-webapp/objects">Objects</a></li>
            <li><a href="alvao-webapp/knowledge-base">Knowledge base</a></li>
            <li>...<ul>
                <li><a href="alvao-webapp/news">Current news</a></li>
                <li><a href="alvao-webapp/documents">Documents</a></li>
                <li><a href="alvao-webapp/data-queries">Data queries</a></li>
                <li><a href="alvao-webapp/diary">Log</a></li>
                <li><a href="alvao-webapp/ticket-templates">Request templates</a></li>
                <li><a href="alvao-webapp/administration">Administration</a></li>
            </ul>
            </li>
        </ul>
            <p>You can expand the vertical menu bar by clicking the arrow at the bottom of it. The menu may contain additional commands, depending on system settings. </p>
        </li>
        <li><em>Commands panel (horizontal) </em>- menu of commands that relate to the content of the page.</li>
        <li><em>Search bar</em> - search for records in Alvao. Type the search text in the line and press <span class="key">Enter</span>. Alternatively, select the search area on the right side of the line.</li>
        <li>In the upper right corner are icons (in order):<ul>
            <li><em>Help</em> - displays the help for that page of the application</li>
            <li><a href="alvao-webapp/news">Current News</a> - the icon displays the number of messages you have not yet read.</li>
            <li><a href="alvao-webapp/administration/settings/settings-check">Alert</a> - alerts the system administrator to any deficiencies found in the settings.</li>
            <li><em>User Menu</em> - you can see your portrait in the top right corner. If you click on it with your mouse, you will see a menu containing the following commands:
                <ul>
                    <li><a href="alvao-webapp/my-team">My team</a></li>
                    <li><a href="../modules/alvao-inventory-audits/web-asset-check">Asset Inventory</a></li>
                    <li><a href="alvao-webapp/search/persons/person">My assets</a></li>
                    <li><a href="alvao-webapp/search/persons/person">My documents</a></li>
                    <li><a href="alvao-webapp/settings">Settings</a> - user settings.</li>
                    <li><em>Sign out</em> - log the user out of the app. This command is not displayed when using Windows Integrated User Authentication.</li>
                </ul>
                <p>The menu may contain additional commands, depending on system settings.</p>
            </li>
        </ul>
        </li>
    </ol>

</asp:Content>

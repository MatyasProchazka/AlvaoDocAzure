<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom links in menus</h1>
    In ALVAO WebApp you can display custom links in the main menu and in the user menu. These links can be localized for each user's language. You can also hide some system commands in the menus, for example to replace them with custom links.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can use the functionality to conditionally show links to only certain users based on roles or group memberships <a href="../../../modules/alvao-sd-custom-apps/applications/custom-commands/general-custom-commands">custom commands in the main menu</a>.
    </div>

    <h2>Setting custom links in the main menu </h2>

    <p>Create a string describing the custom link in the form &quot;&lt;Page name&gt;&quot;,&quot;&lt;Page link&gt;&quot;,&quot;&lt;Icon name&gt;&quot;.</p>

    <p>For example: <i>&quot;Custom Form&quot;,&quot;/Custom/ALVAO/CustomForm&quot;, &quot;CustomList&quot;.</i></p>
    <p>Use the icon name from the <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons">Microsoft Fabric</a> library as the command icon name (the icon name will appear on the page when you hover over the selected icon). If you do not specify an icon, the <i>LightningBolt</i> icon is used.</p>
    <p>If you want to set multiple custom links, create a sequence of the described strings, separated by a semicolon character. </p>
    <p>For example: <i>&quot;Custom Form&quot;,&quot;/Custom/ALVAO/CustomForm&quot;;&quot;ALVAO&quot;,&quot;https://www.alvao.com/&quot;</i>,&quot;Like&quot;.</p>
    <p>Finally, run the following SQL script in which the second line modifies the variable to the set string or sequence of strings.</p>

    <span class="console">DECLARE @MainMenuCustomHead nvarchar(max);<br />
        SET @MainMenuCustomHead = N&#39;&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;,&quot;CustomList&quot;,&quot;ALVAO&quot;,&quot;https://www.alvao.com/&quot;,&quot;Like&quot;<br />
        DELETE dbo.tProperty WHERE sProperty=N&#39;WebApp.MainMenu.CustomHead&#39;;<br />
        INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N&#39;WebApp.MainMenu.CustomHead&#39;,@MainMenuCustomHead);
    </span>

    <p>Custom links in the main menu appear under system commands. The order is the same as the order of the individual strings described.</p>
    <p>If you want to display the links above the <i>More</i> menu, run the following SQL script in which you modify the second line to the set string or sequence of strings.</p>

    <span class="console">DECLARE @MainMenuCustomTail nvarchar(max);<br />
        SET @MainMenuCustomTail = N&#39;&quot;CustomForm 2&quot;,&quot;/Custom/ALVAO/CustomForm&quot;,&quot;CustomList&quot;,&quot;ALVAO 2&quot;,&quot;https://www.alvao.com/&quot;,&quot;Like&quot;<br />
        DELETE dbo.tProperty WHERE sProperty=N&#39;WebApp.MainMenu.CustomTail&#39;;<br />
        INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N&#39;WebApp.MainMenu.CustomTail&#39;,@MainMenuCustomTail);<br />
    </span>

    <p>Under the system commands and above the <i>More</i> menu, you can also display different links, described by different strings.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        To remove all custom links in the main menu, run the following SQL command on the ALVAO database using SQL Management Studio:<br />
        <span class="console">DELETE tProperty WHERE sProperty LIKE N&#39;WebApp.MainMenu.CustomTail%&#39; OR sProperty LIKE N&#39;WebApp.MainMenu.CustomHead%&#39;;</span>
    </div>


    <h2>Setting custom links in the user menu</h2>
    <p>Create a string describing the custom link in the same format as for the custom link in the main menu.</p>
    <p>If you want to set up multiple custom links, create a sequence of strings just as you did for setting up links in the main menu.</p>
    <p>Finally, run the following SQL script, in which on the second line, modify the transformation to the set string or sequence of strings.</p>

    <span class="console">DECLARE @UserMenuCustom nvarchar(max);<br />
        SET @UserMenuCustom = N&#39;&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;;&quot;ALVAO&quot;,&quot;https://www.alvao.com/&quot;,&quot;Like&quot;&#39;;<br />
        DELETE dbo.tProperty WHERE sProperty=N&#39;WebApp.UserMenu.Custom&#39;;<br />
        INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N&#39;WebApp.UserMenu.Custom&#39;,@UserMenuCustom);<br />
    </span>

    <p>
        Custom links in the user menu appear above the Settings item. The order above is the same as the order of the individual strings described.

 <div class="note">
     <div class="icon"></div>
     <div class="title">Note:</div>
     To remove all custom links in the user menu, run the following SQL statement on the ALVAO database using SQL Management Studio:<br />
     <span class="console">DELETE dbo.tProperty WHERE sProperty LIKE N&#39;WebApp.UserMenu.Custom%&#39;;</span>
 </div>
        <h2>Localizing custom links</h2>
        <p>If you want to display link names in different languages according to the user's preferred language, you need to run additional SQL scripts. The localized version of the string describing the custom links is entered into these scripts.</p>
        <p>If you are creating a localization for, for example, Czech (for custom links in the main menu, under system commands), create the localized string first.</p>
        <p>For example: <i>&quot;Custom Form&quot;,&quot;/Custom/ALVAO/CustomForm&quot;;&quot;ALVAO&quot;,&quot;https://www.alvao.com/&quot;</i>.</p>

        <p>
            Next, run the following SQL script, in which on the third line edit the variable specifying the LocaleID of the localized language (e.g. 1029 for Czech).
	On the fourth line, edit the locale string.
        </p>


        <span class="console">DECLARE @MainMenuCustomHead nvarchar(max);<br />
            DECLARE @lcid nvarchar(max);<br />
            SET @lcid = N&#39;1029&#39;;<br />
            SET @MainMenuCustomHead = N&#39;&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;;&quot;ALVAO&quot;,&quot;https://www.alvao.com/&quot;,&quot;Like&quot;&#39;;<br />
            DELETE dbo.tProperty WHERE sProperty=N&#39;WebApp.MainMenu.CustomHead.&#39;+@lcid;<br />
            INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N&#39;WebApp.MainMenu.CustomHead.&#39;+@lcid,@MainMenuCustomHead);<br />
        </span>

        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            Localized custom links are displayed to all users who have set the language for which the custom link was defined.  If localized custom links are not defined for the user's language, non-localized (default) custom links are displayed to the user. If you localize custom links, it is recommended that you write the default custom links in English.
        </div>

        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            ALVAO WebApp supports the following languages for localization of system texts: Czech (LocaleID 1029), German (LocaleID 1031), English (LocaleID 1033), Polish (LocaleID 1045),
 Slovak (LocaleID 1051) and Romanian (LocaleID 1048). For more information, see <a href="https://msdn.microsoft.com/en-us/library/ms912047(v=winembedded.10)">Microsoft Locale ID Values</a>.
        </div>

        <p>If you want to locate custom links in the main menu, above the <i>More</i> menu, edit in the same way and then run the following script:</p>

        <span class="console">DECLARE @MainMenuCustomTail nvarchar(max);<br />
            DECLARE @lcid nvarchar(max);<br />
            SET @lcid = N&#39;1029&#39;;<br />
            SET @MainMenuCustomTail = N&#39;&quot;CustomForm 2&quot;,&quot;/Custom/ALVAO/CustomForm&quot;;&quot;ALVAO 2&quot;,&quot;https://www.alvao.com/&quot;&#39;;<br />
            DELETE dbo.tProperty WHERE sProperty=N&#39;WebApp.MainMenu.CustomTail.&#39;+@lcid;<br />
            INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N&#39;WebApp.MainMenu.CustomTail.&#39;+@lcid,@MainMenuCustomTail);<br />
        </span>

        <p>If you want to localize custom links in the user menu, edit in the same way and then run the following script:</p>
        <span class="console">DECLARE @UserMenuCustom nvarchar(max);<br />
            DECLARE @lcid nvarchar(max);<br />
            SET @lcid = N&#39;1029&#39;;<br />
            SET @UserMenuCustom = N&#39;&quot;CustomForm&quot;,&quot;/Custom/ALVAO/CustomForm&quot;;&quot;ALVAO&quot;,&quot;https://www.alvao.com/&quot;&#39;;<br />
            DELETE dbo.tProperty WHERE sProperty=N&#39;WebApp.UserMenu.Custom.&#39;+@lcid;<br />
            INSERT INTO dbo.tProperty(sProperty,sPropertyValue) VALUES(N&#39;WebApp.UserMenu.Custom.&#39;+@lcid,@UserMenuCustom);<br />
        </span>

        <div class="tip">
            <div class="icon"></div>
            <div class="title">Tip:</div>
            When localizing custom links, both the name of the localized link and its URL can be modified. It is recommended to use the same URL and link order in all localized links.
        </div>

        <h2>Hiding system commands</h2>
        <p>The following table shows the SQL commands for hiding (and possibly re-displaying) system commands.</p>

        <table>
            <thead>
                <tr>
                    <th>Link</th>
                    <th>Hide link command</th>
                    <th>Link display command</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Requests</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.MainMenuHide.Tickets&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.MainMenuHide.Tickets&#39;;</td>
                </tr>
                <tr>
                    <td>Service Catalog</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.MainMenuHide.NewTicket&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.MainMenuHide.NewTicket&#39;;</td>
                </tr>
                <tr>
                    <td>Knowledge base</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.MainMenuHide.KnowledgeBase&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.MainMenuHide.KnowledgeBase&#39;;</td>
                </tr>
                <tr>
                    <td>Current Messages</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.MainMenuHide.News&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty = &#39;WebApp.MainMenuHide.News&#39;;</td>
                </tr>
                <tr>
                    <td>My entrusted property</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.UserMenuHide.MyAsset&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.UserMenuHide.MyAsset&#39;;</td>
                </tr>
                <tr>
                    <td>My Team</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.UserMenuHide.TeamManagement&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.UserMenuHide.TeamManagement&#39;;</td>
                </tr>
                <tr>
                    <td>Settings</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.UserMenuHide.Settings&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.UserMenuHide.Settings&#39;;</td>
                </tr>
                <tr>
                    <td>Subscribe</td>
                    <td>INSERT INTO tProperty(sProperty,bPropertyValue) VALUES (&#39;WebApp.UserMenuHide.Logout&#39;,1);</td>
                    <td>DELETE FROM tProperty WHERE sProperty =
 &#39;WebApp.UserMenuHide.Logout&#39;;</td>
                </tr>
            </tbody>
        </table>

        <div class="caution">
            <div class="icon"></div>
            <div class="title">Caution:</div>
            Commands hidden in this way will not be displayed to any ALVAO WebApp users, regardless of their role in the system.
        </div>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom appearance</h1>
    <p>You can customize the look and feel of ALVAO WebApp to your organization's needs in <i>WebApp - Administration - Settings - <a href="../../../list-of-windows/alvao-webapp/administration/settings/webapp">WebApp</a></i>.</p>
    <p>You can make more advanced appearance changes, such as changing colors, font cuts and sizes, graphic element sizes, etc., by creating a custom Cascading Style Sheet (CSS) file as follows:</p>
    <ol>
        <li>In the folder with the WebApp installed in the <strong>Custom</strong> subfolder, create a folder with the company name. In it, create a <strong>Theme</strong> subfolder. This folder will contain all the customizations that affect the appearance. It should have the same hierarchy as the <em>Content</em> folder in the WebApp installation folder:
            <ul>
                .
  <li>Content/<ul>
      <li>img/ - images folder</li>
      <li>fonts/ - folder with fonts</li>
      <li>.scss - cascading style files</li>
  </ul>
  </li>
            </ul>
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                The <em>Custom/&lt;company-name&gt;</em> folder is used for custom forms.
            </div>
        </li>
        <li>In the <strong>Web.config</strong> file, in the <strong>appSettings</strong> section, set the <strong>CustomThemePath</strong> to the path to the <em>Theme</em> folder.
	For example, when the appearance customizations are in the <em>&lt;ALVAO WebApp installation folder&gt;/Custom/Company1/Theme</em>,
	then set the <strong>CustomThemePath</strong> entry to <em>&quot;~/Custom/Company1/Theme&quot;</em>. </li>
        <li>Enable access to this folder for non-logged-in users (styles are also applied on the login page). In the <strong>Web.config</strong> file
	Find the line <em>&quot;&lt;location path=&quot;Scripts&quot;&gt;&quot;</em>. Add after it:
            <p>
                <span class="console">&lt;location path=&quot;Custom/&lt;company name&gt;/Theme&quot;&gt;<br />
                    &nbsp;&lt;system.web&gt;<br />
                    &nbsp;&nbsp;&lt;authorization&gt;<br />
                    &nbsp;&nbsp;&lt;allow users=&quot;*&quot; /&gt;<br />
                    &nbsp;&nbsp;&lt;/authorization&gt;<br />
                    &nbsp;&lt;/system.web&gt;<br />
                    &lt;/location&gt; </span>
            </p>
        </li>
    </ol>
    <p>
        All SCSS files in this folder will be loaded on each WebApp page. These files are loaded last, so the rules have more weight than the rules in the system SCSS files in the <em>Content</em> folder.
  All other files in this folder take precedence over files in the <em>Content</em> folder, including the image in the <em>img</em> folder.
    </p>

    <h2>Variables</h2>
    <p>You can use the following variables in SCSS files. Variable value setting syntax: : "&lt;variable name&gt;: &lt;value&gt;;".</p>
    <table>
        <thead>
            <tr>
                <th>Variable</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$navbar-bg-color</td>
                <td>Color of the top navigation bar</td>
            </tr>
            <tr>
                <td>$navbar-hover-bg-color</td>
                <td>Colour of the elements in the top navigation bar after mouseover</td>
            </tr>
            <tr>
                <td>$search-bg-color</td>
                <td>Color of the search box in the top navigation bar if not active</td>
            </tr>
            <tr>
                <td>$navbar-search-focus-bg-color</td>
                <td>Color of the top navigation bar when the search field is activated</td>
            </tr>
            <tr>
                <td>$navigation-sd-bg-color</td>
                <td>Left navigation bar colour</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The ALVAO WebApp uses its palette of 7 shades of base color, which are used as the default colors for each graphic element. The individual shades are stored in the variables <i>$primary-color-dark-3</i>, <i>$primary-color-dark-2</i>, <i>$primary-color-dark-1</i>, <i>$primary-color</i>,
  <i>$primary-color-light-1</i>, <i>$primary-color-light-2</i>, and <i>$primary-color-light-3</i> (from darkest to lightest), with the base color stored in the <i>$primary-color</i> variable. You can change the palette, but you will need to make additional adjustments for a consistent WebApp appearance.
    </div>

    <h2>Example</h2>
    <p>
        To change the color of the top navigation bar to red, create a folder <em>Custom/&lt;company name&gt;/Theme</em> and create an empty <strong>Custom.scss</strong> file in it. In the file, write the rule:
    </p>
    <p>
        <span class="console">$navbar-bg-color: red;</span>
    </p>
    <p>or</p>
    <p>
        <span class="console">.navbar-default<br />
            {<br />
            &nbsp;background-color: red;<br />
            }
        </span>
    </p>
    <p>Save the file.</p>
    <p>In the <strong>Web.config</strong> file, set <strong>CustomThemePath</strong> to <em>&quot;~/Custom/&lt;company name&gt;/Theme&quot;</em>. </p>

    <h2>Off custom appearance</h2>
    <p>
        In case you want to use the standard ALVAO WebApp appearance again, in the <strong>Web.config</strong> file, set <strong>CustomThemePath</strong> to an empty value.
    </p>
    <h2>Backup Custom Appearance</h2>
    <p>It is recommended to back up the custom theme settings either as part of backups of the entire application server or by backing up the <em>Custom/&lt;company&gt;/Theme</em> folder.</p>


    <h2>Upgrade Alvao</h2>
    <p>When upgrading to a new version of Alvao, there may be changes to the ALVAO WebApp cascading styles. Therefore, after upgrading, we recommend that you check the appearance of the WebApp and modify your own appearance if necessary.</p>


</asp:Content>

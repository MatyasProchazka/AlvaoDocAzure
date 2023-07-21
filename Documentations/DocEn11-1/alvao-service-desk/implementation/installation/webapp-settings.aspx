<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>WebApp Settings</h1>

    <p>
        The WebApp (web interface for the requester) settings are stored in the <strong>Web.config</strong> file. The file is in XML format. You can use Notepad from Windows to edit it. Values must be entered in accordance with the XML format, i.e. for example the character &quot;&lt;&quot; (smaller) is replaced by &quot;&amp;lt;&quot;,
 instead of &quot;&gt;&quot; it is &quot;&amp;gt;&quot; etc.<br />
        To avoid accidentally overwriting settings when upgrading the WebApp, the Web.config file is not included in the installation. The first time you install it, create it by copying the SampleWeb.config file.
    </p>

    <h2>AppSettings section</h2>

    <p>
        In the &lt;configuration&gt;&lt;appSettings&gt; section, each configuration variable is written as an XML tag &lt;add&gt;. The key attribute specifies the name of the variable, the value attribute contains the value.<br />
        In the following table you will find a list of variables with their value descriptions.
    </p>

    <table>
        <thead>
            <tr>
                <th>Variable</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>AppName</td>
                <td>Name of the web application, e.g. &quot;ALVAO Service Desk&quot;.
 This value is displayed in the header of each page.</td>
            </tr>
            <tr>
                <td>Kb</td>
                <td>If a value of 0 is specified, the web application will not display the <a href="../../knowledge-base">knowledge base</a>. A value of 1 will enable its display.</td>
            </tr>
            <tr>
                <td>CustomThemePath</td>
                <td>Path to the folder with the files for customizing the look.</td>
            </tr>
        </tbody>
    </table>

    <h2>Setting automatic logout when the user is inactive</h2>
    <p>A user will be automatically logged out after a specified period of time if they have not taken any action during that time. </p>
    <p>Disable automatic logout on inactivity (inactivity time is set in minutes from 1 - 525 600): </p>
    <span class="console">UPDATE tProperty SET iPropertyValue = 30 WHERE sProperty =
	&#39;WebApp.AutoLogoutMinutes&#39;</span>

    <p>Turn off automatic logout when inactive:</p>
    <span class="console">UPDATE tProperty SET iPropertyValue = 0 WHERE sProperty =
	&#39;WebApp.AutoLogoutMinutes&#39;</span>

    <p>For proper functionality it is also necessary to check the settings of the web.config file: in the section &lt;system.web&gt; &lt;authentication&gt; &lt;forms&gt; the slidingExpiration parameter. This parameter must not be filled in or must be set to true. </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>

        This setting only works for form logins.
    </div>

    <h2>Setting prohibited attachment types</h2>
    <p>
        To set disabled attachment types, use this SQL script:<br />
        <span class="console">UPDATE tProperty SET sPropertyValue = &#39;bat, cmd, exe&#39; WHERE sProperty = &#39;WebApp.AttachmentBlacklist&#39;</span>
    </p>
    <p>After applying this script, attachments with <em>bat, cmd</em> and <em>exe</em> extensions will be disabled. The list of individual file extensions can be freely changed</p>
    <p>
        To restore the default state in which no attachment types are disabled, run this script:<br />
        <span class="console">UPDATE tProperty SET sPropertyValue = NULL WHERE sProperty = &#39;WebApp.AttachmentBlacklist&#39;</span>
    </p>


    <h2>Setting the maximum attachment size</h2>
    <p>The maximum attachment size is defined in the &lt;configuration&gt;&lt;system.web&gt;&lt;httpRuntime&gt; section in the &quot;maxRequestLength&quot; variable in kilobytes [KB].</p>
    <p>In case of using IIS7 and higher, you need to modify the maximum attachment size also in the &lt;configuration&gt;&lt;system.webServer&gt;&lt;security&gt;&lt;requestFiltering&gt;&lt;requestLimits&gt; in the &quot;maxAllowedContentLength&quot; variable in bytes [B].</p>
    <h2>Enhancing protection against password guessing attacks</h2>
    <p>
        We recommend improving protection against password guessing attacks <a href="../../../alvao-asset-management/implementation/recaptcha">by enabling reCAPTCHA</a>.
    </p>
</asp:Content>

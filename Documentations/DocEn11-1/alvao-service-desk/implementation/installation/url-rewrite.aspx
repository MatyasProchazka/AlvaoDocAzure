<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Redirect from HTTP to HTTPS using IIS URL Rewrite</h1>
    <p>In case of problems with HTTP and HTTPS redirection, set up automatic redirection in IIS server using URL Rewrite.</p>
    <h2>How to redirect from HTTP to HTTPS</h2>
    <ol>
        <li>Make sure you have IIS intranet server installed.</li>
        <li>Download the <strong>URL Rewrite</strong> module and install it, see link below. </li>
        <li>Ensure that port 80 is configured on the page you want to redirect to.</li>
        <li>After installing the <strong>URL Rewrite</strong> module, its icon will appear in the page overview window in IIS Manager. If it does not appear, try restarting IIS. </li>
        <li>Select the page, open <strong>URL Rewrite</strong>, select the <strong>Add Rule(s)</strong> action in the right pane. In the <strong>Add Rule(s)</strong> window
 select the <em>Blank rule</em> option and confirm.</li>
        <li>In the open form, set the following:
        <ul>
            <li>Enter a name.</li>
            <li>Match URL:
            <ul>
                <li>Select <strong>Requested URL</strong> from the <strong>Requested URL</strong> menu matches the <strong>Pattern</strong>.</li>
                <li>Select <strong>Using</strong> from the <strong>Wildcards</strong> menu.</li>
                <li>Enter &quot;*&quot; in the text box and check the <em>Ignore case</em>.</li>
            </ul>
            </li>
            <li>Conditions:
            <ul>
                <li>From the <strong>Logical grouping</strong> menu, select <em>Match Any</em>. </li>
                <li>Select <strong>Add</strong>. In the window that opens, in the <em>Strong>
 Condition input</em>
                    Type <em>{HTTPS}</em>, select <em>Matches the Pattern</em>,
 enter <em>off</em> in the last field and confirm.</li>
            </ul>
            </li>
            <li>Action:
            <ul>
                <li>Select <em>Redirect</em> from the selection.</li>
                <li>In the text box, type <em>&quot;https://{HTTP_HOST}{REQUEST_URI}&quot;</em>.</li>
                <li>Do not enable/disable the <em>Append query string.</em></li>
                <li>Select <em>Permanent (301) from the <strong>Redirect&nbsp; type</strong> menu.</em></li>
            </ul>
            </li>
        </ul>
        </li>
        <li>In the actions on the right side, confirm the rule by clicking on <em>Apply</em>.</li>
        <li>The rule is added and can be turned off/on using <em>enable</em>,
 <em>disable</em>. </li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        Adding a rule using <strong>URL rewrite</strong> will be reflected in the web.config file as follows:<span class="console"><br />
            &lt;rewrite&gt;
            <br />
            &nbsp;&nbsp; &lt;rules&gt;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;rule name=&quot;Redirect to http&quot; enabled=&quot;true&quot; patternSyntax=&quot;Wildcard&quot; stopProcessing=&quot;true&quot; &gt;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;match url=&quot;*&quot; negate=&quot;false&quot;/&gt;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;conditions logicalGrouping=&quot;MatchAny&quot;&gt;
 <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;add input=&quot;{HTTPS}&quot; pattern=&quot;off&quot;/&gt;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/conditions&gt;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;action type=&quot;Redirect&quot; url=&quot;https://{HTTP_HOST}{REQUEST_URI}&quot; redirectType=&quot;Permanent&quot; /&gt;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/rule&gt;<br />
            &nbsp;&nbsp; &lt;/rules&gt;<br />
            &lt;/rewrite&gt;</span><br />
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        This modification interferes with IIS settings. This is not a modification to the Alvao configuration.
    </div>

    <h3>Links</h3>
    <p>
        For more information, please visit Microsoft's website - <a href="https://blogs.technet.microsoft.com/dawiese/2016/06/07/redirect-from-http-to-https-using-the-iis-url-rewrite-module">https://blogs.technet.microsoft.com/dawiese/2016/06/07/redirect-from-http-to-https-using-the-iis-url-rewrite-module/</a>
    </p>

</asp:Content>

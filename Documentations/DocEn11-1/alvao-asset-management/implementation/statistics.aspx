<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>ALVAO WebApp Traffic Analysis</h1>

    <h2>Turn off traffic analysis for ALVAO WebApp</h2>
    <ol>
        <li>Create a Google account (if you have a Google account, skip this step).</li>
        <li>Sign in at <a href="https://analytics.google.com/analytics/web/#/provision">https://analytics.google.com/analytics/web/#/provision</a> with your Google account.</li>
        <li>Click <strong>Start measuring</strong>.</li>
        <li>Fill out the form to create a new Google Analytics account.</li>
        <ul>
            <li><strong>Create an account</strong></li>
            <ol>
                <li>Enter a Google Analytics account name (for example, your company name) and set up account information sharing.</li>
            </ol>
            <li><strong>Setting up the service</strong></li>
            <ol>
                <li>Enter the name of the page where you have your ALVAO WebApp. For example, your_company_name_WebApp.</li>
                <li>Select the correct <em>Time Zone</em> and <em>Currency</em>.</li>
            </ol>
            <li><strong>Information about your company</strong></li>
            <ol>
                <li>Fill in your company information.</li>
            </ol>
        </ul>
        <li>After accepting the terms and conditions and creating an account in the <strong>Admin</strong> section, select <em>Web</em> from the <strong>Data Streams</strong> menu.</li>
        <li>Enter the URL to the site where you have the ALVAO WebApp. You can copy the URL from <strong>WebApp – Administration – Settings – WebApp – WebApp (URL)</strong> and enter the name of the stream and click <strong>Create stream</strong>.</li>
        <li>From the newly opened <strong>Web stream details</strong> window, enter the <strong>Measurement ID</strong> value into the database using the following command:
            <br />
            <font face="Consolas" size="2" color="#0000ff">INSERT INTO</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#008080">sProperty</font><font face="Consolas" size="2" color="#808080">,</font> <font face="Consolas" size="2" color="#00808080">sPropertyValue</font><font face="Consolas" size="2" color="#808080">)</font> <font face="Consolas" size="2" color="#0000ff">VALUES</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#FF0000">&#39;WebApp.GA.TrackingID&#39;</font><font face="Consolas" size="2" color="#808080">,</font>
            <font face="Consolas" size="2" color="#FF0000">&#39;UA-XXXXXX-Y&#39;</font><font face="Consolas" size="2" color="#80808080">);</font>
            <br />

            where the <strong>Measurement ID</strong> value will be inserted in place of UA-XXXXXX-Y and the quotation marks will be retained.</li>
        <li>First statistics should be available after about 24 hours. You can view the statistics by logging into your Google Analytics account by clicking on the <strong>tab</strong>
            Reports</strong>.</li>
    </ol>

    <h2>Changing traffic analysis scripts</h2>

    <ol>
        <li>Sign in at: <a href="https://analytics.google.com/analytics/web/provision/#/provision">https://analytics.google.com/analytics/web/provision/#/provision </a>with your Google account.</li>
        <li>After logging in under <strong>Admin</strong>, select the appropriate website from the <strong>Data Streams</strong> menu.</li>
        <li>After opening the <strong>Web stream details</strong> window, in the <strong>Tagging instructions</strong> section, select <strong>Add new on-page tag – Global site tag (gtag.js) Use this if you're using a website builder or CMS-hosted site</strong> to display the code for traffic analysis.</li>
        <li>Copy and paste the code shown into this SQL script:<br />
            <font face="Consolas" size="2" color="#ff00ff">UPDATE</font> <font face="Consolas" size="2" color="#008080">tProperty</font>
            <br />
            <font face="Consolas" size="2" color="#0000ff">SET</font><font face="Consolas" size="2" color="#008080">
	sPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> <font face="Consolas" size="2" color="#FF0000">&#39;your_adjusted_code_for_measuring_visit_analysis&#39;</font>
            <br />
            <font face="Consolas" size="2" color="#0000ff">WHERE</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">
	&#39;WebApp.GA.TrackingCode&#39;</font><font face="Consolas" size="2" color="#808080">;</font></li>
        <li>In the <strong>embedded code</strong>, replace all apostrophes with quotation marks.</li>
        <li>Replace all occurrences of <strong>Measurement ID</strong> with "{0}".</li>
        <li>Run the SQL script.</li>

    </ol>

    <h2>Changing Measurement ID for traffic analysis</h2>
    <p>
        Change the <strong>Measurement ID</strong> in the database by running the following command in the database:
        <br />

        <font face="Consolas" size="2" color="#ff00ff">UPDATE</font> <font face="Consolas" size="2" color="#008080">tProperty</font>
        <br />
        <font face="Consolas" size="2" color="#0000ff">SET</font><font face="Consolas" size="2" color="#008080">
sPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> <font face="Consolas" size="2" color="#FF0000">&#39;UA-XXXX-Y&#39;</font>
        <br />
        <font face="Consolas" size="2" color="#0000ff">WHERE</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">
&#39;WebApp.GA.TrackingID&#39;</font><font face="Consolas" size="2" color="#808080">;</font>
        <br />
        where &#39;UA-XXXX-Y&#39; is the new <strong>Measurement ID</strong>.
    </p>

    <h2>Turn off search tracking</h2>
    <ol>
        <li>Sign in at <a href="https://analytics.google.com/analytics/web/provision/#/provision">https://analytics.google.com/analytics/web/provision/#/provision</a> with your Google account.</li>
        <li>After logging in under <strong>Admin</strong>, select the appropriate website from the <strong>Data Streams</strong> menu.</li>
        <li>After opening the <strong>Web stream details</strong> window, in the <strong>Enhanced Measurement</strong> section, select the gear icon. </li>
        <li>After opening a new window, in the <strong>Site search – Show advanced settings</strong> section, in the <strong>Search Term Query Parameter</strong> field, leave the value "search", delete the rest.</li>
        <li>Save the settings using the <strong>Save</strong> button.</li>
        <li>Search statistics can be found in the sidebar on the left under <strong>Reports – Engagement – Events</strong>.</li>
    </ol>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Current News</h1>

    <p>The service's <strong>resolution team</strong> informs applicants by means of <strong>updated messages</strong> about:</p>
    <ul>
        <li>scheduled service outages,</li>
        <li>ongoing outages and failures,</li>
        <li>pending changes to the service offerings, etc.</li>
    </ul>
    <p>Current messages can also be used to share emergency information within service resolution teams.</p>
    <p>Current news can be read by clicking on the <a href="../list-of-windows/alvao-webapp/news">Current News</a> icon, which is displayed on every page of the application in the <a href="../list-of-windows/alvao-webapp">top-right corner</a>. If there are messages you haven't read yet, the icon shows the number of messages. Service requesters can only read the messages. Service team members can create and edit messages using the <a href="../list-of-windows/alvao-webapp/news/manage">manage</a> command.</p>
    <p>Requesters can still see the current news on the <a href="../list-of-windows/alvao-webapp/main">main page</a> and, for specific services, in the <a href="../list-of-windows/alvao-webapp/service-catalog">service catalog</a> and in the <a href="../list-of-windows/alvao-webapp/requests/new-request">new-request form</a>.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <p>
            If you need to find out which users have viewed a current news item, you can find this information in the database in the <a href="../alvao-asset-management/implementation/customization/database#U_dbo.NewsRead">NewsRead</a> table.
        </p>
        <p>
            <br />
            Example of getting a list of all users who have viewed the current message named "S3 server outage":
        </p>
        <pre class="console" translate="no">select NR.* from NewsRead NR
join News N on N.id = NR.NewsId 
where N.Subject = N'S3 server outage'</pre>
    </div>

</asp:Content>

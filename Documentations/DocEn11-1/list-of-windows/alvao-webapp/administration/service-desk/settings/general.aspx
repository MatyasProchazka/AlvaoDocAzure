<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
<p>On this page you can set general parameters for the <a href="../../../../../alvao-service-desk">ALVAO Service Desk</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Default method for submission of requests on behalf of another user</strong> - select a value that when <a href="../../../../../alvao-service-desk/requests/new-request-manual">
 manually write a request</a> will be pre-populated in the <a href="../../../requests/new-request">New request</a> form in the <em>Request submission method</em> field.
 <div class="tooltip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 If you want operators to always have to select the request submission method when writing a request on behalf of a user, select a blank value. </div>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 When writing a request through <a href="../../../../../alvao-service-desk/requests/new-request-call-center">phone switchboard</a>, the value <em>phone</em> is pre-populated,
 regardless of this setting. </div>
 </li>
 <li><strong>Font of texts in HTML</strong> - If you are using <a href="../../../../../alvao-service-desk/implementation/html-text-style">uniform corporate style</a> for written communication, specify the font definition in CSS format. For example: <span class="console">font-size: 10pt; font-family: &#39;Segoe UI&#39;,Calibri,Tahoma; color: #000000</span></li>
<li> <strong>Show users presence</strong> - turn on this option to display an icon indicating the actual presence of each user in the application. This option is unavailable only with <a href="../../../../../alvao-asset-management/implementation/users/authentication/aad">Azure AD user authentication</a>.  </li>
</ul>

</asp:Content>

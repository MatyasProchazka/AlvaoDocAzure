<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>ALVAO Add-in settings</h1>
	<ul>
 <li><strong>Connection</strong>
  <ul>
 <li><strong>Alvao domain name (or REST API url)</strong>
	 - enter the domain name of your, e.g., <em>contoso.onalvao.com</em>.<br />
		If your Alvao REST API application has a non-standard address, or you are using HTTP protocol instead of HTTPS, enter the full REST API address, e.g., <em>http://app.company.com/RestApi</em>.</li>

 <li><strong>Authentication</strong> - choose a user authentication method: <ul>
  <li>
      <strong>Azure Active Directory authentication</strong> - a Microsoft 365 user account or other AAD user account will be used for authentication.</li>
  <li><strong>Integrated Windows authentication</strong> - the user account you are currently logged in to Windows on this computer will be automatically used for authentication without re-entering your credentials.</li>
  <li><strong>Windows username and password</strong> - use any other Windows user account, e.g., Active Directory user account. <ul>
 <li><strong>User name</strong> - enter a user name.</li>
 <li><a href="password">Enter password</a>
 - press this button and enter the password.</li>
  </ul>
  </li>
 </ul>

 </li>
  </ul>
 
 </li>
 <li><strong>Taskbar</strong>
  <ul>
	<li><strong>Display and hide automatically</strong> - if the selected Outlook item (message, meeting, event, task) contains a tag of an existing request in the subject or name, the request will be automatically displayed in the <a href="task-pane">taskbar</a>. Otherwise, the taskbar is automatically hidden.</li>
 </ul>
 </li>
	</ul>
	
</asp:Content>

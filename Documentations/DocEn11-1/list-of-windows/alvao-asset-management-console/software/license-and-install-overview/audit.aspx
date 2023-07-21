<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Audit</h1>
<p>In this Window you can select how you want to audit the product.</p>
<p>Options:</p>
<ul>
	<li><strong>Audit</strong> - select from the menu:<ul>
 <li><strong>Yes</strong> - audit the product.</li>
 <li><strong>No</strong> - never audit the product.</li>
 <li><strong>Email Notification</strong> - if you are using the module <a href="../../../../modules/alvao-sam-assistant">SAM Assistant</a>, an email will be sent to the people responsible for the software on the computers in the event of a product installation that is not covered by the license.</li>
	</ul></li>
</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New signature</h1>
<p>Use this form to create a new signature.</p>
<p>Options:</p>
<ul>
	<li><strong>Name</strong> - enter the name of the signature to select from the signature menu when writing messages.</li>
	<li><strong>Signature</strong> - enter a signature. The text you enter will be inserted at the end of new messages you write in the application.</li>
	<li><strong>Select a signature type</strong>
 <ul>
  <li><strong>personal</strong> -
 Your personal signature. Other users do not have access to your signature.</li>
  <li><strong>group</strong> - the signature is accessible to all members of the solution teams of all services or selected services, see the following option.</li>
 </ul>
	</li>
	<li><strong>Select the services for which the signature should be set as default</strong>
 <ul>
  <li><strong>all services</strong> - the signature will be available in all services.</li>
  <li><strong>selected services</strong> - select the services in the table where this signature should be available.</li>
 </ul>
	</li>
</ul>
  

</asp:Content>

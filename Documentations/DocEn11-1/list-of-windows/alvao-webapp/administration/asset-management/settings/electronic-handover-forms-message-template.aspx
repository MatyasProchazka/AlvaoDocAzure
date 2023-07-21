<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Message template</h1>
<p>This window allows you to define the content of messages and notifications sent in connection with signing documents over the web.</p>
<p>Options:</p>
	<ul>
 <li><strong>Subject</strong> - specify the subject of the email. <ul><li><strong>Insert Variable</strong> - select the variable you want to insert into the subject at the cursor position from the menu (see table below for more details).</li></ul>
</li>
 <li><strong>Message body</strong> - enter the text of the email.   <ul>
  <li><strong>Insert Variable</strong> - select the variable you want to insert into the message text at the cursor position from the menu (see table below for more information).</li>
  </ul></li>
	</ul>


 <p>You can use the following variables in the subject or body of emails. The menu of variables depends on whether the message is a message to the recipient or an alert to the recipient, the forwarding engineer, or the team.</p>
 <table>
  <thead>
 <tr>
 <th>Variable</th>
 <th>Meaning</th>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>[$Date$]</td>
 <td>Date the document was issued.</td>
 </tr>
 <tr>
 <td>[$FromAlertDays$]</td>
 <td>The number of days after which the alert is sent to the submitting engineer.</td>
 </tr>
 <tr>
 <td>[$FromPersonName$]</td>
 <td>Name of the transferring technician.</td>
 </tr>
 <tr>
 <td>[$MyDocumentsURL$]</td>
 <td>Link to the ALVAO WebApp page with the user's documents.</td>
 </tr>

 <tr>
 <td>[$NotConfirmedDocuments$]</td>
 <td>Table of users who have not yet signed the document, in the form: <table>
  <thead>
  <tr>
 <th><strong>Submission Date</strong></th>
	<th><strong>User</strong></th>
  <th><strong>Seller</strong></th>
  <th><strong>Document</strong></th>
	 </tr>
	  </thead>
 <tbody>
  <tr>
  <td>30.11.2014</td>
   <td>Mirek Vesely</td>
  <td>Jan Chalupa</td>
   <td>PP01189.pdf</td>
  </tr>
  <tr>
 <td>2.12.2014</td>
   <td>Veronika Vlídná</td>
   <td>Jan Chalupa</td>
   <td>PP01190.pdf</td>
  </tr>
 </tbody>
 </table>
 </td>
 </tr>
 <tr>
 <td>[$TeamAlertDays$]</td>
 <td>The number of days after which a team alert is sent.</td>
 </tr>
 <tr>
 <td>[$Text$]</td>
 <td>Text (document note).</td>
 </tr>
 <tr>
 <td>[$ToAlertDays$]</td>
 <td>The number of days after which the alert is sent to the recipient.</td>
 </tr>
 <tr>
 <td>[$ToPersonName$]</td>
 <td>Recipient's name.</td>
 </tr>
 <tr>
 <td>[$TransferNumber$]</td>
 <td>Document number.</td>
 </tr>
  </tbody>
  </table>
	
	<p>You can define message texts in multiple <a href="../../../../../modules/alvao-electronic-handover-forms/installation#multilanguage-environment">languages</a>.</p>

</asp:Content>

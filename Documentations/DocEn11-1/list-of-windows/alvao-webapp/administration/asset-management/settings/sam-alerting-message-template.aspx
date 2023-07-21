<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Message template</h1>
<p>This window allows you to define the content of the alerts sent about irregularities in the software installed on computers.</p>
<p>Options:</p>
	<ul>
 <li><strong>Subject</strong> - specify the subject of the email. <ul><li><strong>Insert Variable</strong> - select from the menu the variable you want to insert into the subject text at the cursor position (see table below for more details)</li></ul>.
</li>
 <li><strong>Message body</strong> - enter the text of the email.</li>
 <ul><li><strong>Insert Variable</strong> - select from the menu the variable you want to insert into the message text at the cursor position (see table below for more information).</li></ul>
	</ul>


 <p>You can use the following variables in the subject or body of the message:</p>
 <table>
  <thead>
 <tr>
  <th>Variable</th>
  <th>Meaning</th>
 </tr>
 </thead>
 <tbody>
 <tr>
  <td>[$ComputerProductTable$]</td>
  <td>Table with problem products, e.g.:
  <table>
 <thead>
    <tr>
   <th><strong>Computer</strong></th>
    <th><strong>Software name</strong></th>
   <th><strong>Alternative approved software</strong></th>
   <th><strong>Software Responsible</strong></th>
	 </tr>
	  </thead>
 <tbody>
 <tr>
 <td>PC10</td>
   <td>WinZip 11</td>
 <td>7-Zip, WinRar</td>
   <td>Jan Novák, Petr Svoboda</td>
 </tr>
 <tr>
  <td>PC11</td>
   <td>XnView</td>
   <td>&nbsp;</td>
   <td>Petr Svoboda</td>
 </tr>
 </tbody>
  </table>
  Column <strong>Alternative Approved Software</strong>
  will only be displayed if at least one product in the database is set up with alternative approved software - see <a href="../../../../../alvao-asset-management/software-management/software-regular-auditing#alternative-approved-sw">
  Setting up alternative approved SW</a>.
  </td>
 </tr>
 <tr>
  <td>[$Alert1SentDate$]</td>
  <td>Date on which the first alert was sent.</td>
 </tr>
 <tr>
  <td>[$Alert2SentDate$]</td>
  <td>Date when the second alert was or will be sent.</td>
 </tr>
 <tr>
  <td>[$Alert3SentDate$]</td>
  <td>Date on which the third alert was or will be sent.</td>
 </tr>
 <tr>
  <td>[$MyAssetURL$]</td>
  <td>Link to WebApp page - <a href="../../../search/persons/person">My Assets</a>.</td>
 </tr>
 <tr>
  <td>[$DetectPeriod$]</td>
  <td>Set (accelerated) detection period (number - number of days).</td>
 </tr>
 <tr>
  <td>[$AlertNo$]</td>
  <td>Alert serial number (integer).</td>
 </tr>
 <tr>
  <td>[$ComputerSwManager$]</td>
  <td>E-mail addresses of the people who are responsible for the SW on the computer.</td>
 </tr>
 <tr>
  <td>[$ComputerSwManagersManager$]</td>
  <td>E-mail addresses of the supervisor(s) who are responsible for the SW on the computer.</td>
 </tr>
  </tbody>
  </table>
  

</asp:Content>

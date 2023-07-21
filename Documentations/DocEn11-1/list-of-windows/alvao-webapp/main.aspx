<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Home page</h1>
<p>On this page, applicants can search for information in Alvao and submit new requests.</p>

<p>Options:</p>
  <ul>
 <li><b>What can we help you with?</b> - enter the text by which you want to search for information in the following agendas: <ul>
  <li><i>Current news</i> - search the title and text of the message.</li>
  <li><i>Knowledge Base Articles</i> - search for the title, annotation, article text and attachment titles.</li>
  <li>Your <i>requests</i> (i.e. requests of which you are the requester) - the title of the request is searched.</li>
  <li><i>Services</i> - the service name (including the path in the tree) and keywords are searched. Click on the found service to submit a new request.</li>
  </ul>
 </li>
 <li><b>Links</b> - below the search box are tiles that represent useful links to the most used services in the service catalog or other sites.  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 &nbsp;These links are defined by the Alvao administrator on the <i>Administration - Service Desk - </i><a href="../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a>.</div>
 
  </li>
  <li><b>Current news</b> - a preview of current reports issued by service teams. Messages you have already read are shown in grey.</li>
  <li><b>My Requests</b> - requests you have created.</li>
  <li><b>Knowledge</b> - knowledge that could help you solve problems.</li>
  <li><b>My assets</b> - insight into the assets entrusted to your use or for which you are responsible.</li>
  </ul>

  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 This page is only available when the ALVAO Service Desk product is activated.</div>
 
</asp:Content>

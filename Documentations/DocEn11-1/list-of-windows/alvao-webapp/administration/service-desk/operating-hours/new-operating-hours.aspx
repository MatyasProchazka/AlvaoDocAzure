<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New operating hours</h1>
  <p>The form is used to create new <a href="../../../../../alvao-service-desk/implementation/services/operating-hours">operating hours</a>.</p>
  <ul>
  <li><strong>Name</strong> - enter a name for the operating hours, e.g. <em>7x24</em>, <em>5x8</em>, <em>office hours</em>, etc.</li>
 <li><strong>Description</strong> - if applicable, enter a verbal description of the operating hours.</li>
 
 <li><strong>Time zone</strong> - select the time zone in which the operating time will be entered and displayed.</li>
 <li><strong>Exclude public holidays</strong> - select the region according to which public holidays are automatically excluded from the operating hours. Each time the database is upgraded, holidays will be excluded for 3 years in advance.</li>
  <li><strong>Notes</strong> - optionally enter any internal notes on the operating hours.</li>
  </ul>

</asp:Content>

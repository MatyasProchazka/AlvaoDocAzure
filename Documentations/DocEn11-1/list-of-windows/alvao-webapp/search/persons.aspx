<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Persons found</h1>

  <p>When you search for people in Alvao, see the <a href="../../../list-of-windows/alvao-webapp">search bar</a> in the WebApp header, this page will show you the people found.</p>

  <p>Options:</p>
  <ul>
  <li><b>Person table</b> - the table contains all found persons.</li>
  <li><b>Selected Person</b> - when you select one person in the table, the <a href="persons/person">details about that person</a> are displayed on the right side of the page.</li>
  </ul>

</asp:Content>

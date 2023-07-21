<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Current News</h1>
  <p>On this page you can read <a href="../../alvao-service-desk/news">current news</a>. </p>
  <p>
  Options:</p>
  <ul>
  <li>Command Panel<ul>
  <li><a href="news/manage/new-news">New message</a> - create a new message</li>
  <li><a href="news/manage">Manage</a> - create new and edit existing news</li>
  </ul>
  </li>
  <li>Message list - messages you haven't read yet are highlighted with a vertical bar at the left edge and always appear at the top of the list. Click on the unread messages and read them one by one.</li>
  
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


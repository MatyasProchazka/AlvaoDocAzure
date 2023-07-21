<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Manage</h1>
  <p>On this page you can create and edit <a href="../../../alvao-service-desk/news">current news</a>.
  </p>
  

  
  <p>Options:</p>
  <ul>
  <li>Command Panel<ul>
  <li><a href="manage/new-news">New message</a> - create a new message</li>
  <li><a href="current-news">View</a> - view the news in a new browser tab</li>
  <li><a href="manage/edit-news">Edit</a> - edit selected news</li>
  <li><a href="manage/send-news">Send</a> - send the selected message by email<ul>
  <li><a href="manage/send-to-all-tenants">Send to all tenants</a> - email the selected message to users of all tenants. This command is only available for messages with the <a href="manage/new-news">Show to all tenants</a> option enabled.</li>
  </ul>
  </li>
  <li><strong>Hide to all</strong> - hide the selected message to all users. The current date and time will be entered in the <em>Hide After</em> item in the selected message.</li>
  </ul>
  </li>
  <li>Message table - contains all messages that you have the right to see or edit. By default, the following views are defined in the table:<ul>
  
 <li><strong>All</strong> - all messages that you have the right to see or edit.</li>
 <li><strong>Active</strong> - messages that are currently being displayed to requesters</li>
 <li><strong>Archive</strong>- hidden messages that are no longer displayed to applicants, i.e. they have a past date set in <em>Hide After</em>.</li>

  </ul>


  Customize the table <a href="../../../alvao-asset-management/working-with-tables">as needed</a>.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


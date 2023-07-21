<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New message</h1>
  <p>Use this form to create a new <a href="../../../../alvao-service-desk/news">updated report</a>.</p>
  <p>Options:</p>
  <ul>
  <li>Command Panel<ul>
  <li><strong>OK</strong> - submit form</li>
  <li><strong>Attachment</strong> - attach an attachment to the knowledge. This command has the same function as the <em>Add Attachment</em> button.
  in the form.</li>
  </ul>
  </li>
  <li><strong>Title</strong> - enter a title for the message</li>
  <li><strong>Text</strong> - type the text of the message</li>
  <li><strong>Attachments</strong> - list the attachments to the message<ul>
  <li><strong>Add Attachment</strong> - select the file you want to add as an attachment. You can also attach files by dragging and dropping them into the form.</li>
  </ul>
  </li>
  <li><strong>View the message in services</strong> - a shortened list of services where the message is displayed to users.  <ul>
  <li><strong>Edit</strong>- select the services in the table where you want to display the message. </li>
  </ul>

  </li>
  <li><strong>Display to requesters</strong> - turn on if you want the report to be visible to Requesters of selected services. If this option is disabled, only members of the solution teams of the selected services can see the report.</li>
  <li><strong>Hide after</strong> - if applicable, specify the date and time after which the report should automatically stop being displayed to users. However, hidden messages can still be found on the <em>Current Messages</em> page - <a href="../manage">Manage</a> in the <em>Archive</em> view.</li>
  <li><strong>Important</strong> - important messages are displayed to users in the header of every page of the app in a dedicated yellow bar until users read them or a set date to hide the message expires, see <em>Hide After</em>.</li>
  <li><strong>Show to all tenants</strong> - the message will be shown to all users of all tenants, regardless of the message's service assignment. This option is only available to <a href="../../../../alvao-asset-management/implementation/installation/multitenant">Alvao providers</a> in multitenant mode. This allows the provider to inform tenant users about planned Alvao upgrades, etc.
  </li>
  <li><strong>View Order</strong> - if you want to display this message preferably at the top of the message list, enter a number less than the default value of 10. Messages are displayed in ascending order of the value in this entry.<div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  Use a uniform scale of values across all services, e.g. 5=important, 10=normal, 15=irrelevant. This will ensure the correct order of displaying messages from different services. </div>

  </li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Add item</h1>
  <p>This window is used to add an item to the <a href="new-ticket-items">New Request Form</a>.</p>

  <p>Options:</p>
  <ul>
  <li><strong>Available Items</strong> - In the mouse menu, double-click the request item you want to add to the form, or select the item with the mouse and press OK. Request items that are set up in the <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">process</a> of the service being edited are placed at the top of the list. They are followed by all custom request items regardless of the process settings.<br />
Only items that are not already on the form are displayed in the menu. <br />
System items that are not set up in the process are not displayed in the menu.
  <ul>
  <li><strong>Search</strong> - type part of the name of the item you are searching for. This will only display items in the item menu whose name contains the text you entered.</li>

  </ul>
  </li>
  <li><strong>New Item</strong> - create <a href="new-ticket-form-new-item">new custom field</a>.</li>
  </ul>
</asp:Content>

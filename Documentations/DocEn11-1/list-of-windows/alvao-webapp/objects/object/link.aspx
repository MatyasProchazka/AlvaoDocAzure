<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Link</h1>

  <p>In this window, you can create new links between objects or edit an existing link.</p>
  <p>This window is part of the <a href="../../../../modules/alvao-configuration-management">ALVAO Configuration Management</a> module.</p>
  <p>Features:</p>
  <ul>
  <li><b>Start object</b> - the object from which you create a new link or edit an existing link.</li>
  <li><b>Link Type</b> - select <a href="../../../../modules/alvao-configuration-management/object-links">link type</a> between the start and final object. The name of the link type corresponds to the top-down reading of the data in the window.</li>
  <li><b>Final object</b> - enter part of the name of the object you are looking for, and then select the specific object you want to link to the start object from the menu. In this way, you can select several final objects in sequence and link them to the initial object at once. The objects are searched for in the same way as in the <a href="../../requests/request/add-object">Add object</a> form.
        <ul><li><b>...</b> - search for and select the object in the object tree if necessary.</li></ul>
  </li>
  </ul>

</asp:Content>

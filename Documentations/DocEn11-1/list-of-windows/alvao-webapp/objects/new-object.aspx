<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New object</h1>
  <p>In this window, select the sample object you want to create a new object based on in the object tree.</p>
  <p>
  Options:</p>
  <ul>
  <li><b>Search</b> - if you know the name of the sample object, type at least part of it and press <i>Enter</i>. Under the input line, the relevant tree components will expand and the found objects will be highlighted in yellow.</li>
  <li><b>Object samples/Object templates</b> - use the "+" button to expand the object menu, select the object you want to use as a pattern and press the <b>OK</b> button. If you select an object of type <i>Assembly</i> that contains child objects, the object will be copied including the child objects at the first level. For other object types, child objects are not copied.</li>
  </ul>
</asp:Content>

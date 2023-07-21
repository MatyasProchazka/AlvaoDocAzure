<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Move object</h1>

  <p>The window is used to <a href="../../../../alvao-asset-management/objects-and-properties/moving-object">move an object</a> in the tree.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Transfer &lt;&gt; to</b> - enter the part of the object name to which you want to move the selected object. You can also specify the type of object and the beginning of its name, e.g. &quot;user: veronika&quot;. Then select the object you are looking for from the drop-down menu.  <ul>
  <li><b>...</b> - displays a tree of objects in which you can also search for the target object.</li>
  </ul>
  </li>
  </ul>

</asp:Content>

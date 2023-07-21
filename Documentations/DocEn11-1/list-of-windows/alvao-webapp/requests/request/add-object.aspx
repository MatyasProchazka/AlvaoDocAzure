<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Add object</h1>
  <p>In this window you can select <a href="../../../../alvao-asset-management/objects-and-properties">the object</a> from ALVAO Asset Management that you want to add to the selected request on the <a href="../request">Objects tab</a>.</p>
  <p>Options:</p>

	<ul>
  <li><strong>Object</strong> - select the object to which the request relates from the drop-down menu. By default, the menu contains the property entrusted to the Requester of the request. If you want to select a different object, type part of its name or serial, inventory or registration number in the input line. You can also specify the type of object, e.g. by typing &quot;monitor: dell&quot; you can search for all objects of type <em>Monitor</em> whose name starts with the string <em>dell</em>.<ul>
  <li><strong>...</strong> - search for the object and select it in the object tree.</li>
  </ul>
  </li>
	</ul>
	

</asp:Content>

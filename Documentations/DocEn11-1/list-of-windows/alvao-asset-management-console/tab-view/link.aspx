<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Add/Edit link</h1>
<p>In this window you can add new or edit existing <a href="../../../modules/alvao-configuration-management/object-links">
links between objects</a>.</p>

	<ul>
 <li><strong>Object</strong> - if you are editing an existing link, optionally select the object from the menu to which you want to add a link to the object below. <ul><li><a href="../object/choose-object">...</a>
 - or select the object in a separate window.</li></ul>
	</li>
 <li><b>Link type</b> - select the link type from the menu.</li>
 <li><strong>Object</strong> - select from the menu the object to which you want to add a link to the object selected above. <ul><li><a href="../object/choose-object">...</a>
 - or select the object in a separate window.</li></ul></li>
	</ul>
</asp:Content>

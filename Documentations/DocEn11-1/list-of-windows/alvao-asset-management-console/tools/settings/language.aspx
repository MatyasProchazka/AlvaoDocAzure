<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Language</h1>
<p>This tab allows you to set the user's language in all Alvao applications you use.</p>
<p>Options:</p>

	<ul>
 <li><strong>Preferred language</strong> - select your preferred language from the menu. The language you select will be used in all Alvao applications you use.</li>
	</ul>

<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	Menus, form item descriptions, etc. are displayed in the preferred language in applications. The actual values in tables and forms (data) are displayed in the language in which they were recorded, regardless of the preferred language. Some value menus are displayed in the language of the database, which in a multilingual environment is usually English.</div>

</asp:Content>

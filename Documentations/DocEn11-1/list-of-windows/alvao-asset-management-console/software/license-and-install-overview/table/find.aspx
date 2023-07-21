<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Find</h1>
<p>In this Window you can search in the currently displayed table of products, requests, etc. (or in the currently opened document).</p>
<p>Options:</p>

	<ul>
 <li><strong>Find</strong> - enter the search text.</li>
 <li><strong>Search Direction</strong>
  <ul>
 <li><strong>Find</strong> - search for a term up from the highlighted query.</li>
 <li><strong>Down</strong> - search for a term downwards from the tagged request.</li>
  </ul>
 </li>
 <li><strong>Whole words only</strong> - turn on to ignore when the search text is part of another word.</li>
 <li><strong>Case sensitive</strong> - turn on if you want the search to be case sensitive.</li>
	</ul>

</asp:Content>

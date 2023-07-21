<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Upgrade license - license</h1>
<p>In this window you can upgrade licenses registered in <a href="../../license-registry">License registry</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Date</strong> - enter the upgrade start date, i.e. the date the upgraded license is invalidated. However, the change will be reflected in the license count immediately regardless of the date entered. Therefore, it is recommended to record the license upgrade only when it is valid.</li>
 <li><strong>Number of licenses to upgrade</strong> - enter the number of licenses you want to upgrade.</li>
 <li><strong>Upgrade available for maximum licenses</strong> - display the total number of valid licenses that can be upgraded.</li>
 <li><strong>Select the license items you want to upgrade</strong>
   - enable in the list those license items you want to upgrade.</li>
 <li><strong>Note</strong> - enter a note on the license invalidation record.</li>
	</ul>
</asp:Content>

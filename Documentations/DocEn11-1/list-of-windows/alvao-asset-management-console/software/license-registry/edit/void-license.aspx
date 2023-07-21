<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>License voiding - licenses</h1>
<p>In this window you can invalidate a license registered in <a href="../../../../../alvao-asset-management/software-management/licenses">
License Registry</a>. Selected licenses are invalidated, for example, when they are sold.</p>
<p>Options:</p>
	<ul>
 <li><strong>Date</strong> - specify the date from which the license is invalidated. However, the change will be reflected in the license count immediately regardless of the date entered. Therefore, we recommend that you enter the invalidation of licenses in the register only at the time when it occurred.</li>
 <li><strong>Number of licenses to void</strong> - enter the number of licenses you want to cancel (invalidate).</li>
 <li><strong>Maximum number of licenses that can be voided</strong> - display the total number of valid licenses that can be cancelled.</li>
 <li><strong>Select the license items you want to cancel</strong>
   - select the items you want to cancel.</li>
 <li><strong>Note</strong> - enter a note to cancel a license.</li>
	</ul>
</asp:Content>

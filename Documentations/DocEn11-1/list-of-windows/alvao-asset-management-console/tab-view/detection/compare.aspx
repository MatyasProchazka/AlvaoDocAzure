<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Compare detections to Asset Registry</h1>
	<p>Selected detections contain both hardware and software data.</p>
	<p>Options:</p>
 <ul>
  <li><a href="compare/compare-install-vs-detection">
  Software</a> - select if you want to compare detected software with installation records.</li>
 </ul>
 <ul>
  <li><a href="compare/compare-tree-vs-hw-detection">
  Hardware</a> - select if you want to compare the detected hardware with the data in the tree.</li>
 </ul>
</asp:Content>

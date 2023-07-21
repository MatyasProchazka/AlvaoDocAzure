<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>About</h1>
    <p>The window displays information about this application and the license.</p>
	<ul>
 <li><strong>Number of computers</strong> - shows &lt;number of computers tracked&gt; / &lt;number of computers allowed by the license&gt;</li>
 <li><strong>Number of other objects</strong> - shows &lt;number of other objects apart from computers tracked&gt; / &lt;numbner of other objects allowed by the license&gt;</li>
        <li><strong>SW Product Library version</strong> - version of the <a href="../software/sw-products-library">
 software products library</a></li>
</ul>
<p>Options:</p>
	<ul>
 <li>
 <a href="../../../alvao-asset-management/license">License Agreement</a> - opens the documentation page in the default browser from which the license agreement can be downloaded.</li>
 <li><strong>OK</strong> - close the <strong>About the program</strong> window.</li>
	</ul>

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  
</asp:Content>


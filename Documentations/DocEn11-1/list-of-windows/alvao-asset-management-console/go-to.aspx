<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Go to</h1>
<p>Using the Go menu, it is easier to navigate in the <a href="object-tree">
tree</a> - i.e. in the object hierarchy.</p>
<p>Options:</p>
	<ul>
 <li><strong>Back</strong> - select the object that was selected before the currently selected object.</li>
 <li><strong>Next</strong> - select an object that was selected before the <strong>Back</strong> option was used.</li>
 <li><strong>Level Up</strong> - selecting an object that is higher in the tree than the selected object.</li>
 <li><strong>To the parent object</strong> - move to the parent <a href="../../alvao-asset-management/objects-and-properties">
 object of the selected property</a>. The parent object is selected in the object tree and the property is selected on the <strong>Properties</strong> tab.
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 This option is only available if a property is selected that is inherited from a parent object.<br/>
 The <em>parent object</em> is the object with the original property. It is the first occurrence of the property from which child objects inherit the property. The property can be modified at this point. </div>
</li>
	</ul>
</asp:Content>

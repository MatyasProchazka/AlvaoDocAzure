<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>View</h1>
<p>The View menu is used to edit the display of items in the main AM Console window.</p>
<p>Options:</p>
	<ul>
 <li><strong>Including subtree</strong> - display records in <a href="tab-view/diary">
 Log</a>
 also for child objects of the object selected in the <a href="object-tree">
 tree</a>.
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 It is only available when the Log tab is displayed. If the option is still unavailable, click anywhere in the Log tab with the mouse. </div></li>
 <li><strong>Hidden Objects</strong> - display hidden objects in the tree.</li>
 <li><strong>Deleted Items</strong> - view deleted items in the object log.</li>
 <li><strong>Expand/Collapse Tree</strong> - expand or collapse all objects in the tree (and subtrees) of the currently selected node.</li>
 <li><a href="view/search-results">Found objects</a>
 - display the results of the last object search (found objects cannot be displayed if no search has been performed since the AM Console was enabled).</li>
 <li><a href="view/list-of-objects">Lists of objects</a>
 - view previously created <a href="../../alvao-asset-management/searching/list-of-objects">
 lists of objects</a>.</li>
 <li><strong>Refresh</strong> - update the list of items in the table in which an item is currently selected.</li>
	</ul>
</asp:Content>

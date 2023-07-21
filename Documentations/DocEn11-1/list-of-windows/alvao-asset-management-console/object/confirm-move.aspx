<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Object Move</h1>
<p>This window is used to confirm the moving of the object. It displays the Moved object, the source object and the destination object.</p>

	<ul>
 <li><strong>Move</strong> - complete the described move.</li>
 <li><strong>Move All</strong> - completes the move of all selected object objects. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Only available if you have selected multiple objects to move (e.g. on the Child Objects tab, you cannot select multiple objects in the tree).</div></li>
 <li><strong>Storno</strong> - cancels the prepared move.</li>
 <li><strong>Confirm object moves</strong> - turn off if you want to move objects directly and not confirm this dialog. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 You can turn the move confirmation back on using <strong>
 Tools</strong> - <strong>Settings</strong> - tab <a href="../tools/settings/general">
 General</a> - <strong>Confirm moved objects</strong></div> option
</li>
	</ul>
</asp:Content>

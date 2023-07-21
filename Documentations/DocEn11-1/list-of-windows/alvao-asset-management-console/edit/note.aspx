<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Note</h1>
<p>The window is used to create a new note for the object selected in the tree, or to view and edit an existing note. The note can be viewed in <a href="../../../alvao-asset-management/object-log">
Object Log</a>.</p>

	<ul>
 <li><strong>Date</strong> - enter the date and time if applicable. This date will be used to include the note in the journal.</li>
 <li><strong>Subject</strong> - enter a brief title or type of note (e.g. <em>Service intervention</em>). You can select a title from the list that accompanies this entry. The list is automatically generated according to the note titles already listed in the database.</li>
 <li><strong>Note</strong> - enter the text (detailed description) of the note.</li>
 <li><strong>Attachment (file path or http address)</strong>
 - if applicable, attach an attachment to the note. <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	To attach an attachment, double-click in an empty space in the attachment table. Double-click on a specific attachment to open that attachment in the default browser. </div></li>
	</ul>
</asp:Content>

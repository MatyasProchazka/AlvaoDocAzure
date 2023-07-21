<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Print report</h1>
<p>In this Window you can view and further work with print reports.</p>
<p>Options:</p>
	<ul>
 <li><strong>File</strong>
  <ul>
 <li><strong>Print PDF</strong> - open the forwarding report internally in the default PDF file viewer.</li>
 <li><strong>Send for signing</strong> - send the internal handover protocol for signing via the web. This command is only available in the <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> module.</li>
 <li><strong>Print ...</strong> - print the report.</li>
 <li><strong>Preview</strong> - preview the report for printing.</li>
 <li><strong>Save As</strong> - save the file (*.html) to disk.</li>
 <li><strong>Send to MS Word</strong> - open the document in MS Word.</li>
 <li><strong>Edit mode</strong> - enable edit mode - make edits to the message text available.</li>
 <li><strong>Close</strong> - close the print report.</li>
  </ul>
 </li>
 <li><strong>Edit</strong>
  <ul>
 <li><strong>Undo</strong> - undo the last change made.</li>
 <li><strong>Redo</strong> - repeat the last edit made.</li>
 <li><strong>Cut</strong> - copy the selected text to the clipboard and remove it from the document.</li>
 <li><strong>Copy</strong> - copies the selected text to the clipboard.</li>
 <li><strong>Paste</strong> - paste text on the clipboard at the location where the cursor is.</li>
 <li><strong>Delete</strong> - remove the selected text from the document.</li>
 <li><strong>Select All</strong> - option to select the entire message.</li>
 <li><a href="../../../tab-view/properties/find">
 Find</a> - to search the text of the document.</li>
  </ul>
 </li>
 <li><strong>Format</strong>
  <ul>
 <li><a href="font">Font</a></li>
 <li><strong>Remove Formatting</strong> - remove the formatting you have done to the selected text.</li>
  </ul>
 </li>
	</ul>

</asp:Content>

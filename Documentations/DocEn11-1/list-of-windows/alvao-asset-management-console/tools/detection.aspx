<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Manual detection files</h1>
<p>The table shows the files found <a href="../../../alvao-asset-management/implementation/detection">
hardware and software detection</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Path</strong> - display the currently valid path to a directory with software or hardware detections.</li>
 <ul><li><a href="detection/file-path">Change...</a> -
 specify the path to the detection directory.</li></ul>
 <li><a href="detection/response">Details</a> - display the error message of the selected detection.</li>
 <li><strong>Load to database</strong> - load the contents of the selected detections into the database.</li>
 <li><strong>Delete Files</strong> - remove files of selected detections from disk.</li>
	</ul>
</asp:Content>

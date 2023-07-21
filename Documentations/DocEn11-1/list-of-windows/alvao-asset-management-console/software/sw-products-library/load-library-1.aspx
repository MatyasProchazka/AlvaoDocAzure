<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Loading software products library - step 1</h1>
<p>In this window, you can choose where to load the <a href="../../../../alvao-asset-management/software-management/custom-swlib">
Software Product Library</a> that you want to use.</p>
<p>Options:</p>
	<ul>
 <li><strong>Internet</strong> - retrieve the software product library from the Internet.</li>
 <li><strong>File</strong> - if you do not have Internet access on this computer, first download the current <a href="https://www.alvao.com/downloads/swlib2.swl" target="_top">file on another computer with Internet access</a>.
https://www.alvao.com/downloads/swlib2.swl</a>, save it to disk, and then enter the path to the file in this window.</li>
	</ul>
<div class="tip">
<div class="icon"></div>
<div class="title">Tip:</div>
If you turn on the <strong>Settings</strong> tab of the program <a href="../../tools/settings/general">General</a> and enable the <strong>Automatically check for software product library updates</strong> option, the system will automatically check the Internet for library updates when the AM Console is started.</div>
</asp:Content>

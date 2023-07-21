<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New detection</h1>
<p>In this Window you can set up computer detection (the computer name can be found in brackets in the window title).</p>
<p>Tabs:</p>
	<ul>
 <li><a href="detection/general">General</a></li>
 <li><a href="detection/scope">Scope</a></li>
 <li><a href="detection/detection-way">Detection method</a></li>
	</ul>
<div class="note">
	<div class="icon"></div>
	<div class="title">Notes:</div>
	<ul>
	<li>The <strong>Scope</strong> and <strong>Detection Method</strong> tabs.
	are not available if the <strong>General</strong> tab is set to <strong>Use saved settings</strong> or <strong>Use saved settings</strong> is selected, respectively.
	Global Detection Settings</strong>.</li>
	<li>If you select <strong>Use different detection methods</strong>
	(<strong>Scope</strong> tab), instead of the <strong>Detection
	Detection Method</strong> tabs, the <strong>Hardware</strong> tabs will be available
	and <strong>Software</strong> tabs, where you can set different detection methods.
	</ul></div>
</asp:Content>

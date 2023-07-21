<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
<p>This tab is used to set one specific computer detection (the computer name can be found in brackets in the window title).<br/>
In general, the detection method for the selected computer can be set using the <a href="detection-setup">
Detection Setup</a> in the local computer menu.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use saved settings</strong> - turn on if you want to use the settings saved for the selected computer for detection.<br/>
 Turning it off makes additional tabs with settings available.</li>
 <li><strong>Detect and Evaluate Immediately</strong> - turn on if detection and evaluation are to be processed immediately - regardless of the detection and evaluation schedule set on the server. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If you are using an autonomous agent, detection will not take place immediately. It will be done by <a href="../../../../alvao-asset-management/implementation/detection/agent#settings">
 Autonomous Agent Settings</a>.
 </div></li>
 <li><strong>Detection Note</strong> - write&nbsp; a note about the detection.</li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Date and time</h1>
<p>In this Window you can specify the date and time when moving objects in the tree and other actions with objects. All actions can be viewed in <a href="../../alvao-asset-management/object-log">
Object log</a>, where they are sorted according to the date entered here.<br/> The current date and time is pre-populated.</p>
<p>Options:</p>
<ul>
<li><strong>Enter the date (and possibly time) of insertion</strong> - edit the date and time of the change. If you do not want to enter the time, turn off the checkbox before the clock.<br/> If you are entering changes into the record after the fact, <strong>enter the actual date of the change</strong>.</li>
<li><strong>Last value used</strong> - click this button if you want to add the date and time you filled in the last time you used this window.<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div> This button will appear the second and every time you open this window.</div>
</li>
<li><strong>Next time do not show this window and use the current date and time</strong>
- turn on if you want to always auto-complete the current date and time and not display this window.<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div><br />
	You can always re-enable the window display using <strong>Tools</strong>
	- <strong>Settings</strong> - tab <a href="tools/settings/general">
	General</a>
	- disable the <strong>
	Create history records with current date and time</strong>.</div></li>
<li><strong>OK</strong> - confirm the date and time to be written to the object history.</li>

<li><strong>Storno</strong> - closing the window and not performing the action that triggered the window.</li>


</ul>

</asp:Content>

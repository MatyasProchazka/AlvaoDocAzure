﻿<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Identifiable components</h1>
<p>The table shows <a href="../../../../../alvao-asset-management/implementation/detection">
detected</a> identifying computer components and their corresponding objects found in the log.<br/>
If an object corresponding to a component in detection is found in the object tree of another computer, a warning icon is shown before the entry. This status indicates that the component has been moved to another computer and this operation has not been recorded in the log.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If you are replacing computer components that are used as identification, also record the corresponding operations in the records. This will avoid later detection complications.</div>
	<ul>
 <li><a href="compare-tree-vs-hw-detection">
 Details</a> - display details of the differences between the detection and the computer selected in the list.</li>
 <li><strong>Move detection to computer</strong> - move the detection to the computer selected in the table. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
 This feature is used especially when you rename a computer on the network and forget to record this action. Since computers are detected based on the name of the computer on the network, a situation will occur where the detection taken does not match the computer in the records. Move the discovery to the correct computer and rename the computers in the inventory so that their names match the actual network state. Use the <strong>
 Rename Computer</strong> from the context menu on the computer object in the <a href="../../object-tree">object-tree</a>.
</div></li>
 <li><a href="settings">Settings</a> -
 modify the settings of identifiable components for detection.</li>
 <li><strong>Detection is assigned to a computer</strong> - display the computer to which the detection is assigned.</li>
 <li><a href="compare-tree-vs-hw-detection">
 Details</a> - display details of the differences between the detection and the assigned computer in the log.</li>
	</ul>

</asp:Content>

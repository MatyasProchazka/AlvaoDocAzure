<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Computer Identification</h1>


	<p>On this page, you can select information that uniquely identifies computers on the network during HW and SW detections.</p>
	<p>The automatic update of the evidence after detection stops if:</p>
	<ul>
 <li>any discrepancy is found in the identification data, or</li>
 <li>some key component already exists in the records on another computer.</li>
	</ul>

	<p>This can reveal, for example, a replacement computer or component.</p>
	<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 If you are replacing key components of the computer, record the corresponding operations in the register as well. This will avoid later detection complications. </div>


<p>Options:</p>
	<ul>
 <li><b>Computer - Network Name (always)</b> - the computer is always identified by its network name, so this option cannot be turned off.</li>
 <li><b>Computer - BIOS Serial Number</b> - turn this on if you want to identify computers by BIOS serial number as well. <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  This attribute is usually only detected on branded computers (Dell, HP, ...) or virtual machines.</div>
 </li>
 <li>It is also possible to identify computers by their components. The following options only appear if the component is part of the <a href="general">default object kind template for computers</a>:
  <ul>
 <li><b>Hard drive - Serial number, Name, Capacity</b> - turn on if you want to identify computers by hard disk parameters as well.<br/>
 The key attribute of hard drives is the <b>Serial Number</b>. If the serial number is not detected for a hard drive, the system monitors the <b>Name</b> and <b>Size</b> attributes for a match in detection and registration.</li>
 <li><b>Network Card - MAC Address</b> - Enable if you want to identify computers also by the MAC address of the network card.  <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 Laptops can connect in multiple ways (LAN, WiFi, ...).<br/>
 Energy-efficient computers sometimes disable unused network cards, which are therefore not detected at all.<br />
 Therefore, it is sufficient for the system if the <b>MAC address</b> of at least one of the network cards matches in the detection and logging.</div>
 </li>
 <li><b>Motherboard - Serial Number, Manufacturer, Type</b> - enable if you want to identify computers also by motherboard parameters.<br/>
 The key attribute of motherboards is <b>Serial Number</b>. If the serial number is not detected, the system monitors whether the <b>Manufacturer</b> and <b>Type</b> attributes match in detection and registration.
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The serial number is only detected for some motherboards - usually branded computers (Dell, HP, ...).</div></li>
  </ul>
 </li>
	</ul>



</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Software Profile Exceptions for this computer</h1>
<p>This window allows you to set exceptions to predefined <a href="../../../../alvao-asset-management/software-management/software-profiles">
Software Profile</a> on the computer currently being modified.<br/>
The exceptions that already exist for the computer are shown in the table. Exceptions always have a higher priority than definitions originating from the profile.<br/>
It is possible to add and remove products and set different profile settings for them - <em>
optional</em>, <em>mandatory</em> <em>disabled</em>.</p>
<p>Options:</p>
	<ul>
 <li><a href="../../../../list-of-windows/alvao-asset-management-console/software/products">
 Add</a> - add the products you want to set an exception for.</li>
 <li><strong>Remove</strong> - remove selected products from the exceptions list.</li>
	</ul>
	
<p>Local menu options:</p>
<ul>
	<li><strong>Optional</strong> - set selected products as optional.</li>
	<li><strong>Mandatory</strong> - setting selected products as mandatory.</li>
	<li><strong>Disabled</strong> - setting selected products as disabled.</li>
	<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	In <a href="../../../alvao-asset-management-console">the main AM Console window</a> on the <strong>
	Software</strong> then shows the difference against the SW profile and exceptions for specific computers.</div>

</ul>

</asp:Content>

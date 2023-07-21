<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Object kind</h1>
<p>In this Window you can edit or create a new <a href="../../../../alvao-asset-management/implementation/node-class">
Object Type</a>.</p>
	<ul>
 <li><strong>Object kind</strong> - enter the name of the new object type.</li>
 <li><strong>Computer</strong> - enable if this is a computer type. Objects of this type will have extended functionality: <a href="../../../../alvao-asset-management/implementation/detection">
 HW and SW detection</a>, SW license allocation, etc. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 This option can only be set when the object type is created and cannot be changed later.</div>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Objects of type Computer draw a license to the ALVAO Asset Management product.</div></li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Change quantity</h1>
	<p>In this Window you can modify the <em>Quantity</em> property of those objects that have this property. It is a consumables manager that is used for the dispensing and receiving of stock materials.</p>
<p>Options:</p>
	<ul>
 <li><strong>Intake/Outtake</strong> - select whether the product has been dropped or added.</li>
 <li><strong>Quantity</strong> - enter the quantity of consumables to be issued or received.</li>
 <li><strong>From whom/whom</strong> - select the user who added or removed the supplies from the menu. The dispensing and receiving operation is recorded in the <strong>Journal</strong> for the selected user.</li>
	</ul>
</asp:Content>

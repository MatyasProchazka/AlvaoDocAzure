<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New license - product</h1>
<p>In this window you can enter information about the product whose new license you want to create.<br/>
After selecting a product, information about the selected product will be displayed at the bottom of the window (Product Detail).</p>
<p>Options:</p>
	<ul>
 <li><a href="../../products">Product</a>
 - select a software product from the menu or use <strong>
 ...</strong> and select it in the Products window. <div class="tooltip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 The drop-down menu supports intelligent search, e.g. if you want to add <em>Microsoft Windows 2000 Proffesional</em> just type the string <em>mi win 2000</em> in the text box and then select the correct product from the filtered list. A maximum of 100 entries matching the filter you entered in the text box are displayed in the list. If the product you are looking for does not appear in the list, try refining the filter.</div></li>
 <li><strong>License Package</strong> - turn on if you need to specify a license package. Select the software you need in the <strong>
 Product</strong> will be added to the license package list and when the wizard is completed, licenses will be created for all products in the package.<br/> Turn this option on to also display the <strong>List of Package Items</strong>,
 where you will find all the products you have added.</li>
</ul>

</asp:Content>

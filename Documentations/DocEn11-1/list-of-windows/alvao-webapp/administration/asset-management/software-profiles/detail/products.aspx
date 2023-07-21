<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Products</h1>
<p>This page lists the software products that are included in the <a href="../../../../../../alvao-asset-management/software-management/software-profiles">software profile</a> being edited and their mode of presence on the computer.</p>
<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><a href="products-products">Add</a> - add products to the profile.</li>
  <li><a href="products-subprofiles">Subprofiles</a> - select the subprofiles that are included in the profile being edited.</li>
  <li><strong>Change product presence</strong> - change the presence mode of selected products.</li>
  <li><strong>Remove</strong> - remove selected products from the profile.</li>
  </ul>
  </li>
  <li><strong>Product table</strong> - table of products contained in the profile. By default, the table contains the following views.
  <li><strong>Custom</strong> - only products defined directly in this profile.</li>
  <li><strong>Efficient</strong> - all products contained in the profile, including products from included subprofiles. In the <em>Subprofile</em> column you will find the name of the subprofile in which the product is defined.</li>
  </ul>
  </li>
</ul>

<div class="tip">
<div class="icon"></div>
<div class="title">Tip:</div>
Customize the table <a href="../../../../../../alvao-asset-management/working-with-tables">as needed</a>.
</div>

</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Add products</h1>
<p>Use this window to add sw products to the <a href="products">software profile</a> you are editing.</p>
<p>Options:</p>
	<ul>
 <li><strong>Enter at least 3 characters ...</strong> - enter part of the product name you are looking for and press the magnifying glass button at the end of the line.</li>
 <li><strong>Select Products, ...</strong> - select the products you want to add to your profile. The table shows the products found depending on the search text.</li>
 <li><strong>Presence</strong> - select the presence mode of the selected products from the menu:
 <table>
  <thead>
 <tr>
 <th>Presence mode</th>
 <th>Description</th>
 </tr>
  </thead>
  <tbody>
 <tr>
 <td>Optional</td>
 <td>The product <strong>can</strong> be installed on the computer.</td>
 </tr>
 <tr>
 <td>Required</td>
 <td>The product <strong>must</strong> be installed on the computer.</td>
 </tr>
 <tr>
 <td>Forbidden</td>
 <td>The product <strong>must not</strong> be installed on the computer.</td>
 </tr>
  </tbody>
 </table>
 If a product is defined repeatedly in a profile with different presence modes (e.g., in different subprofiles), the mode listed on the lower row in the table always applies.  Products not listed in the profile are implicitly considered disabled, see <a href="../../../../../../alvao-asset-management/software-management/software-profiles">Software Profiles</a> for more information.</li>
	</ul>

</asp:Content>

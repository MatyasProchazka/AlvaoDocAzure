<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Licensing</h1>
<p>In this window you can allocate licenses in bulk. When you open the window, the system automatically selects the most suitable available free licenses for all unlicensed products.<br/>
The <strong>Selected Products</strong> table displays the products from the selected installations that do not have a license assigned. The exclamation mark indicates products that do not have a license selected for allocation in the right list. <br/>
The <strong>Select license to assign</strong> table displays all available licenses for the product that is selected on the left. Licenses per user are only displayed if the computer is located under a specific user in the tree.</p>

<p>Use the <b>OK</b> option to assign all selected licenses to the computer.</p>



<h3>Choosing the best license</h3>
 <ul>
  <li>A free license item in the same cost center and the license item has the same activation key as the detected product activation key.</li>
  <li>Free license in the same cost center and the license has the same activation key as the detected product activation key.</li>
  <li>A free item without a cost center and the license item has the same activation key as the detected product activation key.</li>
  <li>A free license without a cost center and the license has the same activation key as the detected product activation key.</li>
  <li>Free license item in the same cost center (e.g., only inventory number entered).</li>
  <li>Free license in the same cost centre.</li>
  <li>Free item without cost centre.</li>
  <li>Free licence without cost centre.</li>
 </ul>
 If no free license can be found (e.g. only licenses from another cost center are available), the program does not select them automatically, but they are displayed in the menu and you can select them manually if necessary. <br />If you want to select a different license for a product, select that product in the left table and check the desired license in the right table.

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>List of values</h1>
  <p>This window is used to set a list of values for the <a href="../../../../../alvao-service-desk/implementation/custom-items">custom field</a> being edited, from which users then select the value of the custom field in forms in the application. </p>

  <p>Options:</p>

 <ul>
 <li><strong>Command Panel</strong><ul>
  <li><strong>New Value</strong>
 - add <a href="customitems-valuedial">new value</a> to the list.</li>
  <li><strong>Edit</strong> - <a href="edit-customitems-valuedial">edit</a> the selected value in the list.</li>
  <li><strong>Delete</strong> - remove the selected value from the list.</li>
  <li><strong>Move up</strong> - move the selected value one position higher in the list.</li>
  <li><strong>Move down</strong> - move the selected value in the list one position lower.</li>
  <li><strong>Increase level</strong> - move the selected value one level lower in the tree hierarchy.</li>
  <li><strong>Reduce the level</strong> - move the selected value one level higher in the tree hierarchy.</li>
  </ul>
  </li>
  <li><strong>List of values</strong> - values in the list. Values can be arranged in a tree hierarchy, see <em>Increase/Decrease Level</em> commands.</li>
	</ul>
	  
</asp:Content>

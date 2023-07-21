<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Functions</h1>

    <h2>Total</h2>

    <p>The Sum function is used to sum the numeric values of the selected property for a set of objects. The set contains objects from the selected object subtree.</p>
    <p>
        <strong>Calculation flow:</strong><br />
        The function checks the objects from the lowest level in each branch of the selected subtree. When it encounters the first object in a given branch with the searched property, it adds the property value to the total result. It no longer counts all parent objects to that object in that branch.
    </p>
    <p>
        <strong>Recommended way to arrange objects:</strong><br />
        Place all objects whose properties you want to add at the same level in the tree below a parent.
    </p>
    <img src="tree_soucet2.png" alt="System Architecture" />
    <div class="caution">
        <div class="title">Example:</div>
    </div>
    <p>Sum up the prices of all components under the selected assembly.</p>
    <img src="tree_soucet1.png" alt="System Architecture" />
    <p>The following are included in the total price:</p>
    <ul>
        <li>Hard drive type 110</li>
        <li>Motherboard 110</li>
        <li>Monitor 1000</li>
    </ul>
    <p>The resulting value will be 1220.</p>
    <p>
        <strong>Note:</strong><br />
        The function will also calculate the sum for non-numeric values or e.g. phone numbers where the result is meaningless. The non-numeric value is converted to 0, so it doesn't affect the sum of the other values, but that's where the summation ends in this branch of the subtree. This means that the function may return an unwanted result in this case.<br />
        The number format does not support a thousands separator. Use a comma or period [,.] as the decimal separator .
    </p>


</asp:Content>

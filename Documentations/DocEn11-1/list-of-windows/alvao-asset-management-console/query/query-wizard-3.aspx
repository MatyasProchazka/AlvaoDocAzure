<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query Wizard - Step 3</h1>
<p>In the third step of creating a <a href="../../../alvao-asset-management/searching/query">
database query</a>, define what you want to monitor for the object properties selected in <a href="query-wizard-2">step 2</a>.<br/>
The items in the list (object properties) represent the columns of the print report that will be the result of the query. The order of the items determines the order of the columns in the result. The content of the window changes depending on which property in the table you select - parameters are set separately for each property.</p>
<p>Options:</p>
	<ul>
 <li><a href="set-column">Edit</a> -
 edit the header of the selected column.</li>
 <li><strong>Up</strong> - move the selected column one row higher in the table.</li>
 <li><strong>Down</strong> - move the selected column one row lower in the table.</li>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The up and down buttons contain only an arrow and are not located at the bottom right corner of the table.</div>
 <li><strong>Include only rows where</strong> - alternatively, specify a condition that the values should satisfy: select an operator and enter a value to compare. e.g. for RAM size you can specify the condition &quot;&lt;64&quot;.
 <ul><li><strong>And</strong>, <strong>OR</strong> -
 or select a concatenation operator and specify a second condition that the values should satisfy. Select <strong>
 A</strong> if both conditions must be met at the same time, and <strong>A</strong>
 OR</strong> if it is sufficient if at least one condition is met.</li></ul></li>
 <li><strong>Include in print report</strong> - turn on if you want the selected column to be displayed in the resulting print report.</li>
 <li><strong>Property Type</strong>
  <ul>
 <li><strong>Do not distinguish</strong> - select if the property can be custom or inherited.</li>
 <li><strong>Own</strong> - select if only custom properties are to be used.</li>
 <li><strong>Inherited</strong> - select to use only inherited properties.</li>
  </ul>
 </li>
 <li><strong>Aggregation Functions</strong> - enable those functions whose result you want to be displayed in the footer of the resulting print system.  <ul>
 <li><strong>Count</strong> - display the number of property items.</li>
 <li><strong>Sum</strong> - display the sum of property values.</li>
 <li><strong>Average</strong> - display the average value of properties.</li>
 <li><strong>Minimum</strong> - display the minimum value of properties.</li>
 <li><strong>Maximum</strong> - display the maximum value of properties.</li>
  </ul>
 </li>
 

	</ul>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Change property of type Text to another type</h1>

    <h2>Change property of Text type to Date type</h2>

    <p>To change the property type, do the following:</p>
    <ol>
        <li>Open the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail">Property Definitions</a>, select a specific property and change its data type. Property values that are specified in one of the supported formats are automatically converted to the date type. Because the system is not guaranteed to automatically convert all property values in the entire record, a backup (copy) of the original property is automatically created with the name "&lt;property name&gt; (old)"
(e.g. "Date of manufacture (old)"), which will retain the original values.</li>
        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            The supported format for automatic conversion is "dd.mm.yyyy" (e.g. 15.10.2015, 3.1.2015). If you have most of the property values entered in a different format, we recommend following up to step 5 in this guide. 
        </div>
        <li>Check that the system was able to convert all the values by following this procedure:
            <ol type="a">
                <li>Select the entire organization in the object tree.</li>
                <li>On the Child Objects tab, view the <strong>"&lt;property name&gt;"</strong> column (property type Date) and <strong>"&lt;property name&gt; (old)"</strong>. From the local menu, use the "Show in object lists" command.</li>
                <li>Once the "Object Lists" window appears, confirm the view name with the "Enter" key and set the filters in the columns as follows:</li>
                <ol type="i">
                    <li>"&lt;property name&gt;"=""</li>
                    <li>"&lt;property name&gt; (old)"=not ""</li>
                    <li>"Path in tree" - remove the filter (then the objects from the whole inventory will be displayed)</li>
                </ol>
            </ol>

        </li>


        <li>If no rows are displayed after setting the filter, all values have been converted correctly so continue with step 7.</li>


        <li>If the system failed to convert a small number of values, manually add the values. It is recommended to sort the values on the Child Objects tab according to the <strong>"&lt;property name&gt; (old)"</strong> column and use the "Edit" command from the local menu to set the values of the object properties in the <strong>"&lt;property name&gt;"</strong> column. This way you can set the same property value for multiple objects at once.</li>


        <li>If the system failed to convert a large number of values, follow the following instructions for bulk conversion:
            <ol type="a">
                <li>Show only the "NodeId" columns in the table in the Object Lists window,
	"Type" and "&lt;property name&gt; (old)".</li>
                <li>Select Table -&gt; Save As from the local menu and save the table as a "*.CSV" file.</li>
                <li>Open the file in Microsoft Excel and, if necessary, edit the original property values (i.e., the values in the "... (old)" column, e.g., "Date of manufacture (old)") so that they are all in the uniform format supported by the ImportUtil utility , see the <strong>-datetimeformat</strong> parameter of the <a href="../import-export-data/import-util">ImportUtil</a>. Then rename the column with the original values to the name of the target property (i.e., remove the "(old)" suffix).</li>
                <li>Using <a href="../import-export-data/import-util">ImportUtil</a>
                    and the <strong>-datetimeformat</strong> and <strong>-keyfields &quot;NodeId&quot;</strong> parameters.
  update the property values in the registry. If the data import fails for some objects, manually edit the data format for the objects in the CSV file.</li>
            </ol>


        </li>

        <li>Continue with step 2 again.</li>

        <li>After the conversion of property values is complete, remove the "&lt;property name&gt; (old)" property for all templates and perform the unification according to the templates:
  <ol type="a">
      <li>Open the <strong>Tools - Database - SQL Query</strong> window.</li>
      <li>Create a new query (<strong>File - New</strong>).</li>
      <li>Enter the following SQL query:
  <pre translate="no">
SELECT DISTINCT
    n.intNodeId,
    n.txtClass [Object Type],
    n.txtPath+N&#39;/&#39;+n.txtName [Path and name of the object in the tree]
FROM vNodeClass n
    JOIN tblNodeParent np on np.lintNodeId=n.intNodeId 
    JOIN tblNode t on t.intNodeId=np.lintParentNodeId and t.lintClassId=3
    JOIN vPropertyKind pk ON n.intNodeId=pk.lintNodeId AND pk.txtKind=N&#39;&lt;propertyName&gt; (old)&#39;</pre>


      </li>
      <li>In the query, replace the string &#39;&lt;property name&gt; (old)&#39; with the name of your old property.</li>
      <li>Follow the path in the tree to find all found object templates and remove the old property from them.</li>
      <li>Make the objects unified according to the templates you are editing.</li>
      <li>Use "Lists - Property Definitions" to remove the property definition.</li>
      <li>If even then the property definition cannot be removed, it is probably applied to objects that do not have a template. You can find these using the query:
	<pre translate="no">
SELECT
    n.intNodeId,
    n.txtClass [Object Type],
    n.txtPath+N&#39;/&#39;+n.txtName [Path and name of the object in the tree]
FROM vNodeClass n
    JOIN vPropertyKind pk ON pk.lintNodeId=n.intNodeId and pk.txtKind=N&#39;&lt;propertyName&gt; (old)&#39;</pre>
          You can run the query again from the Tools - Database - SQL Query window. Do not forget to change the property name in the query. Delete all properties found in this way and remove the property definition again.
      </li>

  </ol>

        </li>
    </ol>


    <h2>Changing the property of the Text type to the Number type</h2>


    <p>To change the property type, do the following:</p>
    <ol>
        <li>Change the data type of the Text property to Number. The supported format for conversion is a decimal number with a comma or period as the decimal separator. A space character can be used as a line separator. Negative numbers or numbers in abbreviated format can also be converted. For example: &quot;12 543.50&quot;, &quot;980.56&quot;, &quot;-1530&quot;, &quot;1,3e-2&quot;. </li>

        <li>After conversion, check and import any unconverted properties as described when changing the Text type to Date type. 
            <div class="note" style="line-height: 100%">
                <div class="icon"></div>
                <div class="title">Note:</div>
                There is no need to use the <strong>-datetimeformat</strong> switch when using ImportUtil.
            </div>
        </li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caveat: Date data type properties cannot be changed to Number (or vice versa). Date types also cannot be changed for system items. &nbsp;&nbsp; </div>
    </div>


</asp:Content>

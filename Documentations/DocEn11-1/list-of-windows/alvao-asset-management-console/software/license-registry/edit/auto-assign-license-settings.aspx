<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Setting Automatic License Allocation</h1>
In this dialog, you can set a filter to narrow the set of computers to which the license will be assigned. <br/>
The filter is set using SQL syntax conditions and must have the following format:<br/>
<p>[@ObjectKind] | [@ObjectName] | [@ObjectPath] | [&lt;object property name&gt;]&lt;operator&gt;&lt;value&gt;</p>

<p>[@ObjectKind] - object kind<br/>
[@ObjectName] - Name of the object in the tree<br/>
[@ObjectPath] - Path in the tree (entered as: object1/object2/...)<br/>
[&lt;object property name&gt;] - Name of any object property (even inherited)</p>
  &lt;operator&gt; - The following SQL operators can be used:<ul>
<li>= - equals</li>
<li>!=,&lt;&gt; - does not equal </li>
<li>IN - determines whether the specified value is in the subquery/list</li>
<li>LIKE - string comparison with the possibility of using simple regular expressions</li>
<li>NOT - operator negation - concatenation with another operator (IN, LIKE)</li>
<li>IS NULL - the value is NULL - e.g. the object does not have a specific property</li>
</ul>
&lt;value&gt; - N&#39;string&#39;, where the prefix N specifies that the string is in Unicode encoding
<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div><br/>
	Comparing values can be case sensitive. <br/>
	Conditions can be combined using AND and OR operators.</div>

Filter examples:<ul>
<li><strong>[@ObjectKind] = N&#39;Computer/Server&#39;<br/>
</strong>License assignment only to computers of type &quot;Computer/Server&quot;.</li>
<li><strong>[@ObjectPath] LIKE N&#39;Organization/Brno%&#39;<br/>
</strong>&nbsp; License assignment only in a specific part of the tree, according to the path in the tree.</li>
<li><strong>[Branch] IN (N&#39;Praha&#39;,N&#39;Brno&#39;)<br/>
</strong>Add only to computers that are in specific branches.</li>
<li><strong>ISNULL([Branch],&#39;&#39;) != N&#39;Ostrava&#39;<br/>
</strong>Add to all computers that are not in the Ostrava branch. Note:
If the ISNULL function was not used, computers that are not in any branch would not be included.</li>
<li><strong>[Branch] IS NULL<br/>
</strong>Only allocate to computers that are not on any branch.</li>
<li><strong>[Location] NOT IN (N&#39;IT Warehouse&#39;,N&#39;Central Warehouse&#39;) AND [Software Responsible]=N&#39;PC software managers&#39;<br/>
</strong>Example of a filter composed of multiple conditions - computers that are not in specific warehouses AND the software on the computer is the responsibility of the &quot;PC software managers&quot; group.</li>
<li><strong>[Location] NOT LIKE N&#39;Stock%&#39;<br/>
</strong>All computers where the value of the &quot;Location&quot; property does not begin with the word &quot;Warehouse&quot;.</li>
</ul>


</asp:Content>

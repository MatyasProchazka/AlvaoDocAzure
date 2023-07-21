<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Queries</h1>

    <p>The queries are used for advanced searches of data in the tree and installation records and for creating tabular reports.</p>
    <p>Queries are written textually in a language that is similar to SQL query language. However, unlike SQL, it contains tools for searching in the tree structure of objects.</p>
    <p>We will demonstrate how to work with queries by using the example of a query to find all computers in a tree.</p>
    <ol>
        <li>Select <strong>Query - New</strong> from the main menu.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-1">Query Creation Wizard - Step 1</a> , in which we have to select the query management object. In our simple example, the controlling object is simply the object we are looking for, i.e. the computer. So expand the computer assembly object and select the computer object in it. Then proceed with the <strong>Next</strong> button.</li>
        <li>This will take us to the other side of the wizard, i.e. the <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-2">Query Wizard - Step 2</a> . Here we select the data that will be displayed in the query result about each object found. In the list on the right, select properties such as Computer Name and Date of Purchase.</li>
        <li>Button <strong>Next</strong> will open the page <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-3">Query Creation Wizard - Step 3</a>. Here we can change the headings and column widths in the output report and add search conditions. In our case, we don't need to change anything and just continue with the <strong>Next</strong>.</li>
        <li>On page <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-4">Query Creation Wizard - Step 4</a> you can customize the ordering and grouping of items in the query result. Again, we can move on with the <strong>Next</strong>.</li>
        <li>On page <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-5">Query Wizard - Step 5</a>, type the title of the print report and press the <strong>Preview</strong> button.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/file/query-parameters">Query parameters</a> , where you can further limit the scope of the search tree.</li>
        <li>Then press the <strong>OK</strong> button and a print report will open on the screen with the query result in the <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview/table/html-document">Press report</a>.</li>
        <li>Close the print report window. This returns you to the wizard, where you press <strong>Finish</strong>.</li>
        <li>The screen will open a <a href="../../list-of-windows/alvao-asset-management-console/query/query">Search - Query</a>, where you can see the text entry for the query we just created. You can use the <strong>Save</strong> button to save it to a file, from where it can be retrieved later using the <strong>Load</strong> button.</li>
        <li>Press the <strong>Evaluate</strong> button.</li>
        <li>The window will reappear <a href="../../list-of-windows/alvao-asset-management-console/file/query-parameters">Query parameters</a> as in the preview view. After the query is confirmed, the query is evaluated and the result is displayed in the <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">Query results</a>, in which you can use the <strong>Print Report</strong>
            button to view the print report, or the <strong>Export</strong> button
 button to save the result to a text file, which can be further processed e.g. in Microsoft Excel.</li>
    </ol>

    <h2>Query Language Syntax</h2>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Query</span></em>
[<span>PARAMETERS <a href="#query-parameter"><span class="console">Parameter</span></a> [<span>, <a href="#query-parameter"><span class="console">Parameter</span></a></span>]...</span>]

SELECT [<span><a href="#query-type"><em><span class="console">Query_Type</span></em></a></span></span>] [AS [<span><a href="#query-title"><span class="console">Title</span></a>=</span></a>] <a href="#query-id"><span class="console">Dotaz_Id</span></a>]
[<span><a href="#query-modifiers">DOWN | UP | DEEP | SHALLOW | NEAREST | ALL</a></span>]
[<span><a href="#query-column-title"><span class="console">Column_Title</span></a> [<span>, <a href="#query-column-width"><span class="console">Column_Width</span></a> %</span>]=</span>][<span><a href="#query-id"><span class="console">Query_Id</span></a>.</span>] <a href="#query-properties"><span class="console">Property</span></a> [<span><a href="#query-column-operators">
 <span class="console">Column_Operators</span></a></span>]
[<span>, [<span><a href="#query-column-title"><span class="console">Column_Title</span></a> [<span>, <a href="#query-column-width">
 <span class="console">Column_Operators</span></a></span>] ...</span>]

[<span>WHERE
[<span>NOT</span>] <a href="#query-filter"><span class="console">Filter</span></a> [<span>AND | OR [<span>NOT</span>] <a href="#query-filter"><span class="console">Filter</span></a> ...</span>]</span>]

[<span>WITH
<em><span class="console">Question</span></em>[<span><span class="console">Question</span></em> ...</span>]
[<span>HAVING [<span>NOT</span></span> <a href="#query-id">Query_Id</span></a> ...</span>]</span>]
ENDWITH</span>]

[<span>GROUP BY 
[<span><a href="#query-id">Property</span></a></span>]

[<span>ORDER BY 
[<span><a href="#query-id">Property</span></a> [ASC | DESC] 
[, [<span><a href="#query-id">Property</span></a> [<span>ASC | DESC</span>] ...</span>]</span>]
</pre>
    </div>
    <table class="wide">
        <thead>
            <tr>
                <th>Symbol</th>
                <th>Meaning</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>|</td>
                <td>or</td>
            </tr>
            <tr>
                <td>[ ]</td>
                <td>optional</td>
            </tr>
            <tr>
                <td>...</td>
                <td>repeat</td>
            </tr>
        </tbody>
    </table>

    <h3 id="query-parameter">Parameter</h3>

    <p>Query parameter is a data value that the user enters at the moment of query evaluation.</p>
    <div class="wide">
        <pre translate="no">
<em ><span class="console">Parameter</span></em>= <em><span class="console">Parameter_Name</span></em> <em><span class="console">Parameter_Type</span></em>
</pre>
    </div>
    <p>where:</p>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Parameter_Name</span></em>
</pre>
    </div>
    <p>Identifies the parameter. Individual parameter names must be unique and must not match column identifiers. If the parameter name is composed of multiple words, it must be enclosed in square brackets.</p>

    <div class="wide">
        <pre translate="no">
<em><span class="console">Parameter_Type</span></em>
</pre>
    </div>

    <table class="wide">
        <thead>
            <tr>
                <th>Parameter_Type</th>
                <th>type</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>T_TEXT</td>
                <td>text</td>
            </tr>
            <tr>
                <td>T_DOUBLE</td>
                <td>real number</td>
            </tr>
            <tr>
                <td>T_DATETIME</td>
                <td>date, time</td>
            </tr>
        </tbody>
    </table>

    <p><strong>Example 1. Query language - parameter</strong></p>
    <p>
        We want to list the hits on computers in a specified time interval. The program queries the values of the <em>From data</em> parameters before evaluating the query.
 and <em>To data</em>.
    </p>

    <div class="wide">
        <pre translate="no"><em>PARAMETERS [From date] T_DATETIME, [To date] T_DATETIME</em>
SELECT AS &quot;Hit Summary&quot;=S &quot;Setup&quot;=@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT HISTORY AS S1 &quot;Made by&quot;=@user,&quot;Description&quot;=@description
    WHERE @date&gt;=<em>[From date]</em> AND @date&lt;=<em>[To date]</em>
HAVING s1
ENDWITH</pre>
    </div>

    <h3 id="query-type">Query_Type</h3>

    <table class="wide">
        <thead>
            <tr>
                <th>Query_Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>HISTORY</td>
                <td>query object history items</td>
            </tr>
            <tr>
                <td>NOTES</td>
                <td>query object notes</td>
            </tr>
            <tr>
                <td>SWINST</td>
                <td>query on installed software products</td>
            </tr>
        </tbody>
    </table>
    <p>A query of type HISTORY, NOTICE or SWINST can only be used as a subquery and must not contain other subqueries. In addition, a SWINST query is only meaningful if it is a subquery of a query that returns objects of type &quot;computer&quot;.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Query of type HISTORY and NOTICE does not work with deleted (hidden) journal entries.
    </div>


    <p><strong>Example 2. Query language - query type</strong></p>
    <p>We want to list all computer object annotations sorted chronologically.</p>


    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Objects notes&quot; =S0 WHERE @class LIKE &quot;Computer*&quot; 
WITH 
    SELECT <em>NOTICE</em> AS S1 <em>@date, @user, @description</em>
ENDWITH
ORDER BY <em>S1.@date</em>
</pre>
    </div>

    <p><strong>Example 3. Query language - query type</strong></p>
    <p>We want to list all computers and installed operating systems. You also request that the result be grouped by installed operating systems.</p>

    <div class="wide">
        <pre translate="no">SELECT AS &quot;List of installed operating systems&quot;=S
 &quot;OS&quot;=<em>S1.@product</em>, &quot;Computer&quot;=@object, &quot;Inventory number&quot;=[inventory number],
 &quot;User&quot;=[user]
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT <em>SWINST</em> AS S1 
    WHERE <em>@category=SW_OS</em>
    HAVING S1
ENDWITH
GROUP BY <em>S1.@product</em>
</pre>
    </div>

    <h3 id="query-title">Title</h3>

    <p>Output report title.</p>
    <p><strong>Example 4. Query language - title</strong></p>
    <p>We want to list all computers. The report header will contain the text &quot;Computers&quot;.</p>

    <div class="wide">
        <pre translate="no">
SELECT AS <em>&quot;Computers&quot;</em>=S0 @object
WHERE @class LIKE &quot;Computer*&quot;</pre>
    </div>

    <h3 id="query-id">Query_Id</h3>

    <p>
        The query or subquery identifier in the WITH section. If two subqueries have properties with the same name, you can use <em><span class="console">to distinguish them.
  Query_Id.Property</span></em>, e.g. &quot;S0.Capacity&quot;. If the query identifier is composed of multiple words, write it in square brackets.
    </p>
    <p><strong>Example 5. Query Language - Query Identifier</strong></p>
    <p>We want to list all computers and are only interested in the data: Computer Name, Keyboard, Monitor. Properties Name from monitor and keyboard objects should be distinguished by the subquery identifier.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS S0 S0.@object, <em>S1</em>.Name, <em>S2</em>.Name
WHERE @class LIKE &quot;Computer*&quot; 
WITH 
    SELECT AS <em>S1</em> WHERE @class=&quot;Keyboard&quot;,
    SELECT AS <em>S2</em> WHERE @class=&quot;Monitor&quot;
ENDWITH </pre>
    </div>

    <h3 id="query-modifiers">DOWN, UP, DEEP, SHALLOW, NEAREST, ALL</h3>

    <p>Modifiers determine how to search for objects in subqueries in the WITH section.</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Modifier</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>DOWN</td>
                <td>Downward search, i.e. searching the subtree of the control object (default value)</td>
            </tr>
            <tr>
                <td>UP</td>
                <td>upward search, i.e. all objects on the path to the root of the tree are searched</td>
            </tr>
            <tr>
                <td>DEEP</td>
                <td>search all descendants of the controlling object (default value)</td>
            </tr>
            <tr>
                <td>SHALLOW</td>
                <td>search only in direct descendants of the control object (not in descendants of descendants)</td>
            </tr>
            <tr>
                <td>NEAREST</td>
                <td>when the nearest object is found, stop searching in depth (default value)</td>
            </tr>
            <tr>
                <td>ALL</td>
                <td>search the entire subtree of the controlling object</td>
            </tr>
        </tbody>
    </table>
    <p>The NEAREST and ALL modifiers only make sense when combined with the DEEP modifier, which provides a deep search.</p>
    <p><strong>Example 6. Query Language - Modifiers</strong></p>
    <p>We want to list computer assemblies and are only interested in the data: assembly name, RAM, HDD. Another limitation is that we are only interested in the RAM located on the motherboard. You specify the PC object as the control object.</p>
    <ul>
        <li>Assembly 1
 <ul>
     <li>PC
         <ul>
             <li>RAM</li>
             <li>HDD</li>
         </ul>
     </li>
 </ul>
        </li>
    </ul>
    <ul>
        <li>Set 2
 <ul>
     <li>PC
         <ul>
             <li>RAM</li>
             <li>sound card<ul>
                 <li>RAM</li>
             </ul>
             </li>
             <li>HDD</li>
         </ul>
     </li>
 </ul>
        </li>
    </ul>
    <p>From the example of the two computer setups, it can be seen that in computer 2, the sound card houses the memory. To prevent this memory from being dumped, the SHALOW modifier is used in the S2 query to ensure that only the PC object level is searched.</p>
    <p>The UP modifier used in query S1 ensures that the Assembly object, which is located above the PC (computer) object, is found.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS S0 S1.@object, S2.@object, S3.@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS S1 <em>UP</em> WHERE @class=&quot;Assembly&quot;,
    SELECT AS S2 <em>DOWN SHALLOW</em> WHERE @class=&quot;memory RAM&quot;,
    SELECT AS S3 <em>DOWN SHALL</em> WHERE @class=&quot;Hard disk&quot;
ENDWITH</pre>
    </div>

    <h3 id="query-column-title">Column_Title</h3>

    <p>Sets the column heading in the output report.</p>
    <p><strong>Example 7. Query language - column heading</strong></p>
    <p>We want to list the computers and are interested in the data: Computer, Hard Disk, RAM, Processor. The columns in the output report will have the headings Computer, HDD, RAM, CPU.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS S0 &quot;Computer&quot;=S0.@object, <em>&quot;HDD&quot;</em>=S1.@object, 
<em>&quot;RAM&quot;</em>=S2.@object, <em>&quot;CPU&quot;</em>=S3.@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS S1 WHERE @class=&quot;Hard Disk&quot;,
    SELECT AS S2 WHERE @class=&quot;RAM&quot;,
    SELECT AS S3 WHERE @class=&quot;Processor&quot;
ENDWITH</pre>
    </div>
    <p>If you did not specify any column headings, the columns would be titled: S1.Name, S2.Name, S3.Name.</p>

    <h3 id="query-column-width">Column_Width</h3>

    <p>Specifies the width of the column in the output report. The width is specified as a percentage of the width of the entire report.</p>
    <p><strong>Example 8. Query language - column width</strong></p>
    <p>We want to list the computers and are interested in the data: Report Name, User, Floor.</p>
    <p>We also require that the Report Name column be named Computer and be 40% of the print page width and the Floor column be 20% of the page width.</p>
    <div class="wide">
        <pre translate="no">
SELECT &quot;Computer&quot;,<em>40%</em>=@object, User, <em>20%</em>=Floor
WHERE @class LIKE &quot;Computer*&quot;</pre>
    </div>

    <h3 id="query-properties">Property</h3>

    <p>Property Name. The order of the columns in the query corresponds to their order in the output report. If the property name is composed of multiple words, it must be written in square brackets.</p>
    <p>As a <em><span class="console">property</span></em>, you can also use the following special values:</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Property</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>@authorized</td>
                <td>the software installation on the computer is confirmed or the computer is licensed</td>
            </tr>
            <tr>
                <td>@category</td>
                <td>category of software product (e.g. operating system)</td>
            </tr>
            <tr>
                <td>@cdkey</td>
                <td>CD key of the software product</td>
            </tr>
            <tr>
                <td>@class</td>
                <td>object type</td>
            </tr>
            <tr>
                <td>@date</td>
                <td>date of history record, object note or sw product installation</td>
            </tr>
            <tr>
                <td>@description</td>
                <td>
                    <table>
                        <thead>
                            <tr>
                                <th>Query type (<a href="#query-type">Query_Type</a>)</th>
                                <th>The meaning of the @description property</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>HISTORY</td>
                                <td>description of the history record</td>
                            </tr>
                            <tr>
                                <td>NOTES</td>
                                <td>note text</td>
                            </tr>
                            <tr>
                                <td>SWINST</td>
                                <td>note on installation history record</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td>@detproductname</td>
                <td>detected software product name e.g. operating system name including service pack version</td>
            </tr>
            <tr>
                <td>@detproductver</td>
                <td>detected version of the software product (detailed value of the product version e.g. 5.23)</td>
            </tr>
            <tr>
                <td>@detlastdate</td>
                <td>date of the last software detection of the computer</td>
            </tr>
            <tr>
                <td>@flags</td>
                <td>object history record types (To query object history record types, use special constants, see <a href="#query-constant">Constants</a>.)</td>
            </tr>
            <tr>
                <td>@invnumber</td>
                <td>inventory number of the assigned license</td>
            </tr>
            <tr>
                <td>@invoice</td>
                <td>the document label of the assigned license purchase (see <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview">License and Installation Overview</a>, document column)</td>
            </tr>
            <tr>
                <td>@language</td>
                <td>language version of the software product</td>
            </tr>
            <tr>
                <td>@licname</td>
                <td>exact name of the software product license</td>
            </tr>
            <tr>
                <td>@nodeid</td>
                <td>unique identifier (number) of the object in the tree. Suitable for sorting - finding the last new objects in the inventory.</td>
            </tr>
            <tr>
                <td>@notice</td>
                <td>object notes</td>
            </tr>
            <tr>
                <td>@object</td>
                <td>object name</td>
            </tr>
            <tr>
                <td>@objectpath</td>
                <td>path to the object in the tree</td>
            </tr>
            <tr>
                <td>@producer</td>
                <td>producer of a software product</td>
            </tr>
            <tr>
                <td>@producer</td>
                <td>name of the software product</td>
            </tr>
            <tr>
                <td>@property</td>
                <td>any object property</td>
            </tr>
            <tr>
                <td>@serialnumber</td>
                <td>serial number of the software license</td>
            </tr>
            <tr>
                <td>@subject</td>
                <td>note title</td>
            </tr>
            <tr>
                <td>@swfrompack</td>
                <td>software is from software package</td>
            </tr>
            <tr>
                <td>@type</td>
                <td>type of software product (e.g. requiring a license, trial, ...)</td>
            </tr>
            <tr>
                <td>@user</td>
                <td>author of a note, object history record, or sw product installation</td>
            </tr>
        </tbody>
    </table>
    <p>Special values can only be used in queries of type HISTORY, NOTICE or SWINST.</p>

    <h3 id="query-column-operators">Column_Operators</h3>

    <p>Specify one or more operators. Individual operators are separated only by a space.</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Operator</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SUM</td>
                <td>sum of values</td>
            </tr>
            <tr>
                <td>COUNT</td>
                <td>number of items</td>
            </tr>
            <tr>
                <td>AVG</td>
                <td>average value</td>
            </tr>
            <tr>
                <td>MIN</td>
                <td>minimum value</td>
            </tr>
            <tr>
                <td>MAX</td>
                <td>maximum value</td>
            </tr>
        </tbody>
    </table>

    <p><strong>Example 9. Query language - column operators</strong></p>
    <p>Find the average memory capacity of computers.</p>
    <div class="wide">
        <pre translate="no">
SELECT @object, S1.Size <em>AVG</em>
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS S1 WHERE @class=&quot;RAM&quot;
ENDWITH</pre>
    </div>
    <p>At the end of the print report, the average of all values will be listed in the Size column.</p>

    <h3 id="query-filter">Filter</h3>

    <p>A filter is a boolean expression specifying a condition. The condition is evaluated for each object. An object is selected in the query result if the condition is satisfied for it.</p>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Filter</span></em>= <a href="#query-properties">Property</span></a>)
</pre>
    </div>

    <p>where:</p>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Comparison</span></em>
</pre>
    </div>
    <table class="wide">
        <thead>
            <tr>
                <th>Comparison</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>=</td>
                <td>equality</td>
            </tr>
            <tr>
                <td>like</td>
                <td>substring occurrence</td>
            </tr>
            <tr>
                <td>&lt;&gt;</td>
                <td>inequality</td>
            </tr>
            <tr>
                <td>&lt;</td>
                <td>smaller</td>
            </tr>
            <tr>
                <td>&gt;</td>
                <td>larger</td>
            </tr>
            <tr>
                <td>&lt;=</td>
                <td>smaller or equal</td>
            </tr>
            <tr>
                <td>&gt;=</td>
                <td>larger or equal</td>
            </tr>
        </tbody>
    </table>
    <p>The OWN() function is satisfied if the property is a custom property of the object. The INHERITED() function is satisfied for inherited properties.</p>
    <div class="wide">
        <pre translate="no">INHERITED([User]) AND [User]=&quot;Veronika Vlidna&quot;</pre>
    </div>
    <p><strong>Example 10. Query Language - Filter</strong></p>
    <p>To find all HP printers, we use a filter that restricts the list of printers to printers whose name begins with the character pair &quot;HP&quot;.</p>
    <div class="wide">
        <pre translate="no">@class=&quot;Printer&quot; AND <em>Name LIKE &quot;HP*&quot;</em></pre>
    </div>
    <p><strong>Example 11. Query Language - Filter</strong></p>
    <p>Find all RAM less than 64 MB.</p>
    <div class="wide">
        <pre translate="no">@class=&quot;RAM&quot; AND <em>Size&lt;64</em></pre>
    </div>

    <h3>Constant</h3>

    <p>The constant can be a real number or a text string. In a text string, the asterisk notation '*' can be used to specify any number of characters.</p>
    <p><strong>Table 1. Constants - History Record Types</strong></p>
    <table class="wide">
        <thead>
            <tr>
                <th>Constant</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>H_MOVEDEST</td>
                <td>I have moved object &quot;x&quot;</td>
            </tr>
            <tr>
                <td>H_MOVESRC</td>
                <td>moved object &quot;x&quot;</td>
                from here
            </tr>
            <tr>
                <td>H_TO</td>
                <td>object moved to &quot;x&quot;</td>
            </tr>
            <tr>
                <td>H_INSERTNEW</td>
                <td>new object &quot;x&quot;</td>
                is inserted
            </tr>
            <tr>
                <td>H_TONEW</td>
                <td>object created in &quot;x&quot;</td>
            </tr>
            <tr>
                <td>H_SCANMMOVEDEST</td>
                <td>I have moved object &quot;x&quot; - by scanner</td>
            </tr>
            <tr>
                <td>H_SCANMOVESRC</td>
                <td>object &quot;x&quot; - moved from here by scanner</td>
            </tr>
            <tr>
                <td>H_SCANTO</td>
                <td>object moved to &quot;x&quot; - by scanner</td>
            </tr>
            <tr>
                <td>H_SCANINSERTNEW</td>
                <td>new object inserted into &quot;x&quot; - scanner</td>
            </tr>
            <tr>
                <td>H_SCANTONEW</td>
                <td>object created in &quot;x&quot; - by scanner</td>
            </tr>
        </tbody>
    </table>
    <p><strong>Table 2. Constants - types of software products</strong></p>
    <table class="wide">
        <thead>
            <tr>
                <th>Constants</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SW_NEEDSLIC</td>
                <td>commercial - user must purchase a license to use the product</td>
            </tr>
            <tr>
                <td>SW_NOLIC</td>
                <td>freeware (does not require a license) - the product can be used without a license</td>
            </tr>
            <tr>

                <td>SW_TRIALLIC</td>
                <td>shareware/trial - product can be tested without license</td>
            </tr>
            <tr>
                <td>NULL</td>
                <td>unlicensed - illegally installed</td>
            </tr>
        </tbody>
    </table>
    <p><strong>Table 3. Constants - software product categories</strong></p>
    <table class="wide">
        <thead>
            <tr>
                <th>Constants</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SW_OS</td>
                <td>a software product is an operating system</td>
            </tr>
        </tbody>
    </table>
    <p><strong>Example 12. Query Language - Constants</strong></p>
    <p>Find all RAM less than 64 MB.</p>
    <div class="wide">
        <pre translate="no">@class="RAM" AND <em>Size&lt;64</em></pre>
    </div>
    <p><strong>Example 13. Query language - constants</strong></p>
    <p>Find history records of objects removed (moved) after January 1, 2001.</p>
    <div class="wide">
        <pre translate="no">@date&gt;&quot;1.1.2001&quot; AND ( @flag=H_MOVESRC OR @flags=H_SCANMOVESRC )</pre>
    </div>
    <p><strong>Example 14. Query language - constants</strong></p>
    <p>Find all freeware software products.</p>
    <div class="wide">
        <pre translate="no">@type=SW_NOLIC</pre>
    </div>
    <p><strong>Example 15. Query language - constants</strong></p>
    <p>Find all unauthorized software products - illegally installed</p>
    <div class="wide">
        <pre translate="no">@licname=NULL</pre>
    </div>
    <p><strong>Example 16. Query language - constants</strong></p>
    <p>Find all operating systems installed after January 1, 2001.</p>
    <div class="wide">
        <pre translate="no">@category=SW_OS AND @date&gt;&quot;1.1.2001&quot;</pre>
    </div>

    <h3>WITH ... ENDWITH</h3>

    <p>A list of subqueries is written between the WITH and ENDWITH keywords. Individual subqueries are separated by commas.</p>
    <p>The HAVING clause specifies which subqueries in the list must contain at least one object for the control object to be selected.</p>
    <p><strong>Example 17. Query Language - Subqueries</strong></p>
    <p>We want to list computers that do not have a hard drive.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Computers without HDD&quot;=S0 S0.@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS HDD WHERE @class=&quot;Hard disk&quot;
    HAVING NOT HDD
ENDWITH</pre>
    </div>

    <h3>GROUP BY</h3>
    <p>Specifies the column by which the found items will be grouped. The column must be listed in the column list after the SELECT keyword.</p>
    <p><strong>Example 18. Query Language - GROUP BY</strong></p>
    <p>We want to list the computers and group them by Floor.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Computers grouped by Floor&quot;=S0 @object, Floor
WHERE @class LIKE &quot;Computer*&quot;<em>
GROUP BY</em> Floor</pre>
    </div>

    <h3>ORDER BY</h3>

    <p>It is used to sort column values in the output report. The sort priority is determined by the order of the columns after the ORDER BY keyword. All columns to be sorted must be listed in the column list after the SELECT keyword.</p>
    <p>The ASC and DESC modifiers determine the sort direction:</p>
    <ul>
        <li>ASC - ascending</li>
        <li>DESC - descending</li>
    </ul>
    <p><strong>Example 19. Query Language - ORDER BY</strong></p>
    <p>List of computers sorted by the columns Floor, User.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Computers sorted by floor and user&quot;=S0
 S0.@object, User, Floor
WHERE @class LIKE &quot;Computer*&quot;
<em>ORDER BY</em> Floor, User</pre>
    </div>

</asp:Content>

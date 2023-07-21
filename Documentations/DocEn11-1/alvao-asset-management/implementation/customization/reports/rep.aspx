<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>REP print report templates</h1>

    <p>
        You can manage print report templates in <i>WebApp - Administration - Asset Management - </i><a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print report templates</a>. Each template contains several files that define the content and appearance of the resulting print report.
    </p>
    <p>The resulting print reports are generated from the templates as follows:</p>
    <ol>
        <li>After the user selects the objects they want to print in the application's object tree, the application generates a working XML file containing details of the selected objects according to the settings in the REP file.</li>
        <li>The working XML file then undergoes an XSL transformation resulting in an HTML document. This HTML document can use other files in the template, such as CSS files, PNGs, JPGs, etc.</li>
        <li>The content of the HTML document is displayed to the user as a preview of the print report.</li>
        <li>After the user approves the preview, the HTML document is converted to PDF format, in which it can be printed or saved to the document repository.</li>
    </ol>

    <h2 id="rep">Rep file</h2>

    <p>
        A REP file is a text file that defines an output print report. 
    </p>
    <p>The file contains several lines in the format:</p>
    <p class="console">Variable=Value</p>
    <p>For example:</p>
    <p class="console">VERSION=XMLReport1</p>

    <table>
        <thead>
            <tr>
                <th>Variable</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>VERSION</td>
                <td>Specifies the version of the print report format. This variable must be specified on the first line of the REP file and must have the value XMLReport1.</td>
            </tr>
            <tr>
                <td>TYPE</td>
                <td>The value of this variable specifies a special procedure for generating the XML file that is the data source for the print report.<br />
                    <br />
                    <table>
                        <thead>
                            <tr>
                                <th>Value</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Null</td>
                                <td>When the default value Null is specified, the XML file will contain only the object (including child objects) that is selected in the object tree when creating the print report.</td>
                            </tr>
                            <tr>
                                <td>Transfer Inner</td>
                                <td>Print report of type &quot;transfer report internal&quot;.</td>
                            </tr>
                            <tr>
                                <td>Transfer Inner Summary</td>
                                <td>Print report of type &quot;transfer protocol internal summary&quot;. It can only be used on an object of type <i>User</i>.</td>
                            </tr>

                            <tr>
                                <td>Transfer Outer</td>
                                <td>Print assembly of type &quot;transfer protocol external&quot;.</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="sequence">SEQUENCE</td>
                <td>The name of the numeric sequence that will be used to generate the document number of the print report type &quot;Transmission Report&quot;.
 For example: &quot;Loans&quot;.<br />
                    Note: If the value is blank, the system series "handover protocols" will be used for internal handover protocols. No series is used for external transfer logs.  </td>
            </tr>
            <tr>
                <td>HTML</td>
                <td>The name of the HTML file to be used as the default file for displaying the print report. The file name is specified relative to the REP file path. If the HTML file is stored in the same directory as the REP file, you only need to specify the file name.</td>
            </tr>
            <tr>
                <td>FLAGS</td>
                <td>The value can be an empty string (e.g. &quot;FLAGS=&quot;) or a comma-separated list of items listed below, e.g. &quot;FLAGS=children,ownprop,inheritedprop&quot;. Each list item allows writing some information to the XML file. The list of items is given in the following table:<br />
                    <br />
                    <table>
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>notice</td>
                                <td>notes to objects (element &lt;noticelist&gt;),
 only records that have not been deleted (hidden) in the Journal.</td>
                            </tr>
                            <tr>
                                <td>history</td>
                                <td>history of objects (element &lt;historylist&gt;),
 only records that have not been deleted (hidden) in the Journal.</td>
                            </tr>
                            <tr>
                                <td>children</td>
                                <td>Child objects (element &lt;nodelist&gt;)</td>
                            </tr>
                            <tr>
                                <td>responsibility</td>
                                <td>New subtrees are generated under objects of type User. They contain objects that have the value of the user object in the property "Responsible for property".</td>
                            </tr>
                            <tr>
                                <td>ownprop</td>
                                <td>property (element &lt;prop&gt; in &lt;proplist&gt;)</td>
                            </tr>
                            <tr>
                                <td>inheritedprop</td>
                                <td>inherited properties (element &lt;prop&gt; in &lt;proplist&gt;)</td>
                            </tr>
                            <tr>
                                <td>owninfo</td>
                                <td>element &lt;own&gt;1&lt;/own&gt; for custom properties</td>
                            </tr>
                            <tr>
                                <td>inhritedinfo</td>
                                <td>element &lt;iherited&gt;1&lt;/inherited&gt; for inherited properties</td>
                            </tr>
                            <tr>
                                <td>specialinfo</td>
                                <td>element &lt;special&gt;1&lt;/special&gt; for special properties (properties for internal use in remote data collection, etc.)</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <p>Example of the contents of the Evidence Card.rep file:</p>
    <p class="console">
        VERSION=XMLReport1
        <br />
        TYPE=Null<br />
        HTML=Evidence Card.ht
        <br />
        FLAGS=children,ownprop,inheritedprop,notice
    </p>

    <h2>XML file</h2>

    <p>
        This chapter describes the structure of the XML file that is used when creating a print report. The image of the object (including child objects) 
        over which the print report is being created (that is, the object that is selected in the object tree) is written to the file. Which elements are 
        included in the XML file and which are not depends on the setting of the FLAGS item in the REP file.
    </p>
    <p>XML file format (DTD):</p>
    <pre class="console" translate="no">
&lt;!ENTITY ONE &quot;1&quot;&gt;

&lt;!ELEMENT report (node*)&gt;

&lt;!ELEMENT node (name, icon, proplist?, responsiblefor?, noticelist?, historylist?, nodelist?)&gt;
&lt;!ELEMENT name (#PCDATA)&gt;
&lt;!ELEMENT path (#PCDATA)&gt;
&lt;!ELEMENT icon (#PCDATA)&gt;
&lt;!ELEMENT proplist (prop*)&gt;
&lt;!ELEMENT noticelist (notice*)&gt;
&lt;!ELEMENT historylist (history*)&gt;
&lt;!ELEMENT nodelist (node*)&gt;

&lt;!ELEMENT prop (value, kind, own?, inherited?, special?)&gt;
&lt;!ELEMENT value (#PCDATA)&gt;
&lt;!ELEMENT kind (#PCDATA)&gt;
&lt;!ELEMENT own (&amp;ONE;)&gt;
&lt;!ELEMENT inherited (&amp;ONE;)&gt;
&lt;!ELEMENT special (&amp;ONE;)&gt;

&lt;!ELEMENT notice (date, desc, user)&gt;
&lt;!ELEMENT date (#PCDATA)&gt;
&lt;!ELEMENT desc (#PCDATA)&gt;
&lt;!ELEMENT user (#PCDATA)&gt;

&lt;!ELEMENT history (date, desc, user)&gt;</pre>
    <p>Element meanings:</p>
    <table>
        <thead>
            <tr>
                <th>Element</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>node</td>
                <td>object</td>
            </tr>
            <tr>
                <td>path</td>
                <td>path to an object in the object tree</td>
            </tr>
            <tr>
                <td>prop</td>
                <td>property</td>
            </tr>
            <tr>
                <td>notes</td>
                <td>object note</td>
            </tr>
            <tr>
                <td>history</td>
                <td>history record</td>
            </tr>
            <tr>
                <td>nodelist</td>
                <td>list of child objects</td>
            </tr>
        </tbody>
    </table>

    <h2>HTML file</h2>

    <p>The REP file also contains the name of the HTML file of the print report, which, after replacing macros, is displayed in the preview before printing. This file is only used when printing from the AM Console.</p>

    <p>The following macros can be used in an HTML file:</p>

    <table>
        <thead>
            <tr>
                <th>Macro</th>
                <th class="auto-style1">Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>%HTMLPATH%</td>
                <td class="auto-style1">Absolute path to the HTML file on the hard drive.<br />
                    <br />
                    For example, if the style.css file is stored in the same directory as the HTML file, the following construct can be used to retrieve it:<br />
                    <br />
                    &lt;link rel=&quot;stylesheet&quot; href=&quot;%HTMLPATH%\style.css&quot;&gt;</td>
            </tr>
            <tr>
                <td>%XMLPATH_C%</td>
                <td class="auto-style1">Name with the path to the working XML file formatted for use in javascript.</td>
            </tr>
        </tbody>
    </table>

    <h2>Edit HTML for printing from ALVAO WebApp</h2>

    <p>All templates printed from ALVAO WebApp use uniform HTML, which is stored in the database. To modify it, you need to run the following SQL script to add the required HTML:</p>
    <pre translate="no"><span style="color: fuchsia">update</span> <span style="color: black">tProperty</span> <span style="color: blue">set</span> <span style="color: black">sPropertyValue</span><span style="color: lightgray">=</span><span style="color: red">'&lt;own HTML&gt;'</span> <span style="color: blue">where</span> <span style="color: black">sProperty</span><span style="color: lightgray">=</span><span style="color: red">'AssetManagement.PrintTemplateHtml'</span>
        </pre>
  <p>In the html for the print report for the web, you must use variables written as [$&lt;name&gt;$], which are replaced by the files attached to the print report when printed.</p>
  <p>If the variable used does not contain a period (e.g., "CSS" or "XSL"), the first file attached to the template with that extension (i.e., *.css or *.xsl) is used.
  If the variable used contains a dot (e.g. "logo.png"), the file attached to the template with the given name (i.e. logo.png) is used. </p>
  <p>The exception is the variable [$PrintTemplateName$], which is replaced by <i>Name</i> for the print report.</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


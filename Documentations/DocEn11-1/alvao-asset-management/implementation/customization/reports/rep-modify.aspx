<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Edit REP print report templates</h1>
    <p>If you need to edit a REP format print report template, do the following:</p>
    <ol>
        <li>Go to <strong>WebApp - Administration - Asset Management</strong> - <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a>.</li>
        <li>Select the desired template and use the <strong>Edit</strong> command.</li>
        <li>Download all the print report files to any folder on the disk.</li>
        <li>Now, edit the template source files as needed.</li>
        <li>After making any changes, go to the <strong>WebApp</strong> again and use the <strong>Add Files</strong> command in the template edit.</li>
        <li>Select the changed files from the folder on disk and overwrite the existing template files with them.</li>
        <li>Save your changes to the template.</li>
    </ol>

    <h2>Adding a company logo to the header of print reports</h2>
    <ol>
        <li>Go to <strong>WebApp - Administration - Asset Management</strong>- <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a>.</li>
        <li>For each template, replace the <strong>logo.png</strong> file with the company logo file. The image should be no more than 100 pixels high.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <p>
            The logo is not visible on the screen when the print report is displayed. The logo is only displayed in the print page preview. 
        </p>
    </div>

    <h2>Adding the text of the declaration to the handover protocol</h2>
    <p>
        In the handover protocol XSL file, search for the string &quot;<em>Declaration Text</em>&quot; and insert your own HTML text after the found note.
    </p>

    <h2>Adjustment of the asset table in the handover protocol</h2>
    <ol>
        <li>Edit the XSL file of the handover protocol.</li>
        <li>Find the header of the asset table - look for the text "Asset table - header".
  Change column headings, add new column headings if necessary, or remove some columns, e.g.:<br />
            <div style="font-family: Consolas; font-size: 10pt; line-height: 140%;">
                <span style="color: blue">&lt;</span><span style="color: #A31515">td</span> <span style="color: red">class</span><span style="color: blue">=&quot;Frame&gt;</span><br />
                &nbsp;&nbsp;<span style="color: blue">&lt;</span><span style="color: #A31515">b</span><span style="color: blue">&gt;</span><span style="color: black">IMEI</span><span style="color: blue">&lt;/</span><span style="color: #A31515">b</span><span style="color: blue">&gt;</span><br />
                <span style="color: blue">&lt;/</span><span style="color: #A31515">td</span><span style="color: blue">&gt;</span>
            </div>
        </li>
        <li>Find the rows with the table values - look for the text "Asset table - values".
  Modify the code to get the value in the appropriate column, e.g. change the name of the object property, add values for new columns, or remove values for deleted columns.<br />
            Example of one table cell:<br />
            <div style="font-family: Consolas; font-size: 10pt; line-height: 140%;">
                <span style="color: blue">&lt;</span><span style="color: #A31515">td</span> <span style="color: red">class</span><span style="color: blue">=&quot;Frame&gt;</span><br />
                &nbsp;&nbsp;<span style="color: blue">&lt;</span><span style="color: #2B91AF">xsl:valueof</span> <span style="color: red">select</span><span style="color: blue">=&quot;proplist/prop[kind='IMEI']/value&quot;/&gt;</span><br />
                <span style="color: blue">&lt;/</span><span style="color: #A31515">td</span><span style="color: blue">&gt;</span>
            </div>
            <em>IMEI</em> is the name of the object property whose value is displayed in the property table.<br />
            The values of the table columns must be listed in the same order as the column headings in the table header.  </li>
    </ol>

    <h2>Change margins, paper orientation and page numbering settings</h2>
    <p>
        Edit the following SQL script and set the values of the required attributes according to the table below:
    </p>
    <pre translate="no">
<span style="color: fuchsia">update</span> <span style="color: black">tProperty</span> <span style="color: blue">set</span> <span style="color: black">sPropertyValue</span><span style="color: lightgray">=</span><span style="color: red">'PageOrientation=Portrait;Margins=10,10,15,15;PageNumbering=0;'</span>
<span style="color: blue">where</span> <span style="color: black">sProperty</span><span style="color: lightgray">=</span><span style="color: red">'AssetManagement.TransferProtocol.PageSettings'</span></span></span></span></span></span><span style="color: red">
  </pre>
    <p>
        Meaning and possible values of each setting:
    </p>

    <table>
        <tr>
            <th>Attribute name</th>
            <th>Importance</th>
            <th>Possible values</th>
        </tr>
        <tr>
            <td>PageOrientation</td>
            <td>Page Orientation</td>
            <td>
                <ul style="margin-bottom: 0px;">
                    <li>Portrait = portrait</li>
                    <li>Landscape = landscape</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Margins</td>
            <td>Paper margins</td>
            <td>A field of four integers separated by commas meaning:<br />
                &lt;left&gt;,&lt;right&gt;,&lt;top&gt;,&lt;bottom&gt;
                <br />
                Note: the number indicates the edge of the paper in millimetres.  </td>
        </tr>
        <tr>
            <td>PageNumbering</td>
            <td>Page numbering</td>
            <td>
                <ul style="margin-bottom: 0px;">
                    <li>0 = page numbering off (not displayed)</li>
                    <li>1 = pagination on (displayed at the foot of each page in the format &lt;page number/total number of pages&gt;)</li>
                </ul>
            </td>
        </tr>
    </table>
    <p>Then run the script on the Alvao database (e.g. using <em>Microsoft SQL Server Management Studio</em>).</p>
</asp:Content>


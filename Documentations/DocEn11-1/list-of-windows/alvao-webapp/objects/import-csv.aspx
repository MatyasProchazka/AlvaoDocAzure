<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Import CSV</h1>

<p>Use this form to load objects from a CSV file into the object tree. For the structure of the input CSV file, see <a href="../../../alvao-asset-management/import-export-data/import-util#csvstructure">ImportUtil</a>.</p>
<ul>
	<li><strong>Input file</strong> - Select the input CSV file from disk from which you want to load the objects. New objects will be created in the object tree as subobjects under the currently selected object in the tree.</li>
	<li><strong>Object kind</strong> - if the input file does not contain a <em>Class</em> column (or <em>Type</em>), select the type of objects you want to create. If the input file contains a <em>Class</em> column (or <em>Species</em>), select the <em>&lt;all in input file&gt;</em> option or, if you want to read only rows for a specific object kind from the file, select the type.</li>
	<li><strong>Key columns</strong> - select the columns in the input file that uniquely identify the objects. If an object already exists in the object tree with the same property values according to the key columns, a new object is not created in the tree, but only the values of the other loaded properties are updated in the existing object.</li>
	<li><strong>Extended</strong><ul>
        <li><strong>Search Discarded Assets</strong> - if you enable this option, the assets in the <a href="../../../alvao-asset-management/objects-and-properties/scrapped-asset">Discarded Assets</a> folder are also searched and updated during import.</li>
        <li><strong>Format of date columns</strong> - date format in text strings (e.g. dd/MM/yyyy). If not specified, the format is automatically detected when loaded. For a detailed description of the formats, see <a href="https://msdn.microsoft.com/en-us/library/8kb3ddd4%28v=vs.110%29">Custom Date and Time Format Strings</a>.
 <div class="note">
                <div class="icon">
                </div>
                <div class="title">
                    Note:</div>
 Date formats are governed by local language settings on the server. 
            </div>
        </li>
        <li><strong>Column separator</strong> - specify the column separator used in imported CSV file, e.g., comma (,) or semicolon (;).</li>
        </ul>
    </li>
	<li><strong>Check</strong> - check the content of the input file. Any deficiencies will be written to the form.</li>
	<li><strong>Read</strong> - load objects from the input file into the object tree.</li>
</ul>
	

</asp:Content>

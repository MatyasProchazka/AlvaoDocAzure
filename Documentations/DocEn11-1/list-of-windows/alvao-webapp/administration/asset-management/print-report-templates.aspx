<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Print report templates</h1>
    <p>
        On this page you can manage <a href="../../../../alvao-asset-management/implementation/customization/reports">print report templates</a>,
  which typically include <a href="../../../../alvao-asset-management/documents/transfer-protocols">transfer report templates</a>.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Command Panel</strong>
            <ul>
                <li><strong>Load Template</strong> - upload a new template. Select all the files that make up the template, i.e. the 3 basic files with the rep, htm and xsl extensions and additional files, usually css, gif, png, jpg etc.</li>
                <li><strong>Edit</strong> - <a href="print-report-templates/edit-template">edit</a> the selected template.</li>
                <li><strong>Delete</strong> - remove the selected template.</li>
            </ul>
        </li>
        <li><strong>Press Report Template Table</strong> - contains all created press report templates and their selected attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you use templates in different languages, put the abbreviation of the language in which they are written in the template names or descriptions. You can then use this to create <a href="../../../../alvao-asset-management/working-with-tables/table-views">views</a> for each language you use and share them with the whole team if necessary. 
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can restore template files from the Asset Management Console installation directory from the <em>Csy/ReportTemplates</em> folder, or from folders for other languages. 
    </div>

</asp:Content>

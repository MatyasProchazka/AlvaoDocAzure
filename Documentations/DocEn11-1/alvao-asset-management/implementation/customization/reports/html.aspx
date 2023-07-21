<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>HTML print report templates</h1>
    <p>A HTML print report template is a document in HTML format. The document contains variables that are replaced by specific data when generating a print report.  Examples of templates can be found in the <b>AM Console</b> installation folder in the <b>Csy/ReportTemplates</b> folder or in folders for other languages.</p>

    <h2>Creating a template</h2>
    <p>To create an HTML document, we recommend using any visual HTML editor (e.g. MS Word).</p>
    <p>Suggest how the report will look like - what will be the title, where will be the table with information about the selected objects, possibly the text of the declaration, etc. Insert the appropriate variables in the places where specific data from Alvao should be inserted, see below.  Upload the created HTML file and, if applicable, the company logo image named "logo.png" to the database using <em>WebApp - Administration - Asset Management</em> - <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a>.</p>

    <h2>Print Set Type</h2>
    <p>A print assembly can be one of the following types:</p>
    <table>
        <tr>
            <th>Print report type</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>General</td>
            <td>General print report (default type).</td>
        </tr>
        <tr>
            <td>TransferInnerDifferential</td>
            <td><a href="../../../documents/transfer-protocols">transfer protocol</a> internal differential. Before the print report is generated, the application displays a form for selecting the transferor and recipient.</td>
        </tr>
        <tr>
            <td>TransferInnerSummary</td>
            <td><a href="../../../documents/transfer-protocols">Transfer protocol</a> internal summary. This report can only be generated for an object of type User. Before the print report is generated, the application displays a form for selecting the transferor and the recipient.</td>
        </tr>
    </table>
    <p>You can specify the report type at the beginning of the HTML document body. For example, for the type <em>internal difference transfer report</em>, specify:</p>
    <div class="wide">
        <pre translate="no">@Model.PrintTemplateType = TransferInnerDifferential</pre>
    </div>
    <p>If the report type is not specified in the HTML document, the default <em>General</em> type is used.</p>
    <h2>Variables</h2>
    <h3>General variables</h3>

    <table>
        <tr>
            <th>Variable</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>@Model.CompanyLogo</td>
            <td>CompanyLogo. When the report is generated, the variable is replaced by an image in a file named "logo.png", which must be stored in the database along with the HTML file of the print report.</td>
        </tr>
        <tr>
            <td>@Model.CreatedByPerson</td>
            <td>Name of the user who generated the print report (logged in user).</td>
        </tr>
    </table>
    <h3>Transmission logs</h3>
    <p>In print report templates of type <em>TransferInnerDifferential</em> and <em>TransferInnerSummary</em>, you can use variables that represent the data entered in the "sender and receiver" form:</p>

    <table>
        <tr>
            <th>Variable</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>@Model.DocumentNumber</td>
            <td>DocumentNumber</td>
        </tr>
        <tr>
            <td>@Model.IssueDate</td>
            <td>Issue Date</td>
        </tr>
        <tr>
            <td>@Model.TransferDate</td>
            <td>Transfer Date</td>
        </tr>
        <tr>
            <td>@Model.Text</td>
            <td>Text entered on the form</td>
        </tr>
        <tr>
            <td>@Model.Receiver.Name</td>
            <td>Recipient's first and last name</td>
        </tr>
        <tr>
            <td>@Model.Receiver.PersonalNumber</td>
            <td>Recipient's personal number</td>
        </tr>
        <tr>
            <td>@Model.Receiver.Location</td>
            <td>Recipient Location</td>
        </tr>
        <tr>
            <td>@Model.Receiver.Signature</td>
            <td>Receiver's signature <a href="../../../../modules/alvao-electronic-handover-forms/sign-with-electronic-pen">with an electronic pen</a> in the internal handover protocol. In other ways of signing the protocol, the value of the variable is empty.</td>
        </tr>
        <tr>
            <td>@Model.Originator.Name</td>
            <td>First and last name of the originator</td>
        </tr>
        <tr>
            <td>@Model.Originator.PersonalNumber</td>
            <td>Personal number of the submitter</td>
        </tr>
        <tr>
            <td>@Model.Originator.Location</td>
            <td>Location of the sender</td>
        </tr>
        <tr>
            <td>@Model.Originator.Signature</td>
            <td>Signature of the submitter <a href="../../../../modules/alvao-electronic-handover-forms/sign-with-electronic-pen">with-electronic-pen</a> in the internal handover protocol. In other ways of signing the protocol, the value of the variable is empty.</td>
        </tr>

    </table>

    <h3>Objects</h3>
    <p>Information about objects is given in the form of a table in the print reports. In the report template, create a table (< table >) with column headers and one row of data, and include the following variables as needed. In the resulting report, one row is created in the table for each selected object.</p>

    <table>
        <tr>
            <th>Variable</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>@Node.Name</td>
            <td>Name of the selected object</td>
        </tr>
        <tr>
            <td>@Node.Class</td>
            <td>Object class</td>
        </tr>
        <tr>
            <td>@Node.Path</td>
            <td>Path in tree</td>
        </tr>
        <tr>
            <td>@Node[<property name>]</td>
            <td>The value of a specific object property, for example: <em>@Node[Inventory Number]</em>. The property name is in <a href="../../supported-languages">Alvao system language</a>.</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode.Name</td>
            <td>The name of the object for which the selected user is further responsible. The <em>@ResponsibleForNode...</em> variables are available only in print reports of type <em>TransferInnerSummary</em>.</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode.Class</td>
            <td>Object kind</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode.Path</td>
            <td>Path in tree</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode [<property name>]</td>
            <td>The value of a specific object property, e.g.: <em>@ResponsibleForNode[Inventory Number]</em>.</td>
        </tr>

    </table>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <ul>
            <li>Only objects that have the <em>Inventory Number</em> or <em>Evidence Number</em> property will be displayed in the table.</li>
            <li>If the table does not contain any data (e.g. the user is not responsible for any other assets), a dash (-) will be shown in the print report instead.</li>
        </ul>
</asp:Content>



<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Documents</h1>
    <p>You can register the following types of documents in Alvao:</p>
    <ul>
        <li><em>Invoices</em> - may relate to the purchase of tangible assets, software licenses, service, etc.</li>
        <li><em>Transfer Protocols</em> - a written record of the transfer of specific items (assets) between staff within the organisation</li>
        <li><em>Certificates</em> - a document confirming ownership of a specific software license</li>
        <li><em>License Agreement</em> - defines the rules for using a software license</li>
        <li><em>Contracts</em> - may relate to tangible assets, software licenses, service agreements, etc.</li>
        <li><em>General documents</em> - other unspecified types of documents</li>
    </ul>
    <p>
        To manage documents, go to <strong>WebApp -</strong> <a href="../list-of-windows/alvao-webapp/documents">Documents</a>, or <strong>AM Console -</strong> <strong>Tools - Lists -</strong> <a href="../list-of-windows/alvao-asset-management-console/tools/lists/documents">Documents</a>.
    </p>
    <p>
        Documents are stored in <strong>document folders</strong>.
You can manage the folders in <strong>WebApp - Administration - Asset Management -</strong> <a href="../list-of-windows/alvao-webapp/administration/asset-management/document-folders">Document folders</a>.
By default, there is a single <em>All Documents</em> folder that stores all documents. You can restrict user access to documents by setting access permissions to individual folders.
    </p>
    <p>The document index is mainly used as an index of common paper documents. You can search the database for document numbers that are related to an asset. It should then be possible to trace paper documents in the physical or electronic archive by number. Alternatively, you can have the documents converted to electronic form (scanned) and stored in the Alvao database.</p>
    <h2>Document Scanning</h2>
    <p>A paper document can be directly scanned and attached as an attachment to the document. When creating a new document above the attachment table, select <strong>Scan</strong> from the local menu. This will open a window with a selection of found scanners. After selecting a device, a window with scan settings appears. After confirming the options, scanning starts. The resulting image is saved as a document attachment in the database. Files with scanned documents are named Scan1.jpg, Scan2.jpg, etc.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The appearance and options of the scan settings window depend on the scanner you are using. For some types of scanners, scanning may start immediately without displaying the scan settings window.
    </div>

</asp:Content>

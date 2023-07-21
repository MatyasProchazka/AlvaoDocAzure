<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Signing with an electronic pen</h1>

    <p>
        In this method of signing the transfer protocol, both the recipient and the transferor sign the protocol with an electronic pen on a tablet or computer screen. Their handwritten signatures are then displayed directly in the PDF document and stored in the application, so there is no need to print the protocols on paper. 
    </p>

    <h2>Modifying a print report</h2>
    <p>
        Make sure the print report template contains the variables <a href="../../alvao-asset-management/implementation/customization/reports/html">@Model.Originator.Signature</a>
        and <a href="../../alvao-asset-management/implementation/customization/reports/html">@Model.Receiver.Signature</a>, in place of which the electronic pen signatures appear in the handover protocol preview. 
    </p>

    <h2>Publishing and signing the handover protocol</h2>
    <ol>
        <li>When <a href="../../alvao-asset-management/documents/transfer-protocols">building a transfer protocol</a> in <a href="../../list-of-windows/alvao-webapp/objects/object/print">forms</a>
            select <b>Signature method</b> <i>Electronic pen</i>.</li>
        <li>After pressing <b>OK</b>, you will see a <a href="../../list-of-windows/alvao-webapp/objects/object/print/preview">preview</a> of the print report where you can review the handover protocol.</li>
        <li>In the preview, use the <b>Sign</b> buttons sequentially.</li>
        <li>You will be taken to a <a href="../../list-of-windows/alvao-webapp/objects/object/print/sign">signature window</a> where you can sign using an electronic pen, finger, or mouse.</li>
        <li>After all signatures are complete, save the log using the <b>Save</b> command.</li>
    </ol>

</asp:Content>

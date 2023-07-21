<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Preview</h1>

  <p>On this page you can see the contents of the created print report.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command Panel</b>
  <ul>
  <li><b>Print</b> - download the report in PDF format, which you can then print on your printer.</li>
  <li><b>Send</b> - send the handover protocol to the asset recipient for confirmation on the <a href="../../../../../list-of-windows/alvao-webapp/search/persons/person">My Documents</a> page. The command is part of the <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> module and is only displayed if <i>Web-based</i> has been selected as the <a href="../print">handover signing method</a>.</li>
  <li><b>Save</b> - save the signed handover protocol. The command is part of the <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> module.
  and is only displayed if <i>Electronic pen</i> has been selected as the <a href="../print">handover protocol signing method</a>.</li>
  </ul>
  </li>
  </ul>

  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  If you close the internal transfer report preview window without creating a PDF document (i.e., without using the <b>Print</b>, or <b>Submit</b> or <b>Save</b> button), the created document will be marked as invalid when you confirm the message that you want to leave the page.  </div>

</asp:Content>

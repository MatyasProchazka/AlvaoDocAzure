<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Soubor</h1>

  <p>Nabídka zpřístupňuje funkce pro práci s <a href="../../../../modules/alvao-inventory-audits/stocktaking">inventářem</a>.</p>

  <p>Možnosti:</p>
  <ul>
  <li><a href="stocktakings">Otevřít kontrolu majetku</a> - zobrazí seznam inventáře a vybere z něj inventář.</li>
  <li><a href="../../../alvao-webapp/objects/export-xlsx">Export XLSX</a> - export souboru s příponou .xlsx jako podkladu pro inventuru.</li>
  <li><b>Import XLSX</b> - import souboru s příponou .xlsx po provedení inventury.</li>
  <li><b>Mobilní inventura ALVAO (zastaralá</b> ) - příkazy související s inventurou pomocí mobilní aplikace <a href="../../../../modules/alvao-inventory-audits/barcode-reader">Mobilní inventura ALVAO</a> <ul>
  <li><b>Export IXM</b> - export souboru s evidencí inventury do čtecího zařízení a jeho uložení na disk.</li>
  <li><b>Import IXM</b> - import souboru ze čtecího zařízení (uloženého na disku), které bylo použito k provedení inventury.</li>
  </ul>
  </li>
  <li><a href="../../software/license-and-install-overview/table/html-document">Tisk</a> - vytiskne informace o vybraném majetku (po výběru příslušné tiskové sestavy).</li>
  </ul>

</asp:Content>

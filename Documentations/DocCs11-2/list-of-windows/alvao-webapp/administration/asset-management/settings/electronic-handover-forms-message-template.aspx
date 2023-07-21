<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Šablona zprávy</h1>
<p>Toto okno umožňuje definovat obsah zpráv a oznámení zasílaných v souvislosti s podepisováním dokumentů přes web.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Předmět</strong> - zadejte předmět zprávy. <ul><li><strong>Vložit proměnnou</strong> - z nabídky vyberte proměnnou, kterou chcete vložit do předmětu na pozici kurzoru (více informací viz tabulka níže).</li></ul>
</li>
 <li><strong>Tělo zprávy</strong> - zadejte text e-mailu.   <ul>
  <li><strong>Vložit proměnnou</strong> - vyberte z nabídky proměnnou, kterou chcete vložit do textu zprávy na pozici kurzoru (další informace viz tabulka níže).</li>
  </ul></li>
	</ul>


 <p>V předmětu nebo těle e-mailu můžete použít následující proměnné. Nabídka proměnných závisí na tom, zda se jedná o zprávu pro příjemce nebo o upozornění pro příjemce, předávajícího technika nebo tým.</p>
 <table>
  <thead>
 <tr>
 <th>Proměnná</th>
 <th>Význam</th>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>[$Date$]</td>
 <td>Datum vystavení dokumentu.</td>
 </tr>
 <tr>
 <td>[$FromAlertDays$]</td>
 <td>Počet dní, po kterých je výstraha odeslána předkládajícímu technikovi.</td>
 </tr>
 <tr>
 <td>[$FromPersonName$]</td>
 <td>Jméno předávajícího technika.</td>
 </tr>
 <tr>
 <td>[$MyDocumentsURL$]</td>
 <td>Odkaz na stránku webové aplikace ALVAO s dokumenty uživatele.</td>
 </tr>

 <tr>
 <td>[$NotConfirmedDocuments$]</td>
 <td>Tabulka uživatelů, kteří ještě nepodepsali dokument, ve tvaru: <table>
  <thead>
  <tr>
 <th><strong>Datum předložení</strong></th>
	<th><strong>Uživatel</strong></th>
  <th><strong>Prodávající</strong></th>
  <th><strong>Dokument</strong></th>
	 </tr>
	  </thead>
 <tbody>
  <tr>
  <td>30.11.2014</td>
   <td>Mirek Veselý</td>
  <td>Jan Chalupa</td>
   <td>PP01189.pdf</td>
  </tr>
  <tr>
 <td>2.12.2014</td>
   <td>Veronica Palmer</td>
   <td>Jan Chalupa</td>
   <td>PP01190.pdf</td>
  </tr>
 </tbody>
 </table>
 </td>
 </tr>
 <tr>
 <td>[$TeamAlertDays$]</td>
 <td>Počet dnů, po kterých se odesílá týmové upozornění.</td>
 </tr>
 <tr>
 <td>[$Text$]</td>
 <td>Text (poznámka k dokumentu).</td>
 </tr>
 <tr>
 <td>[$ToAlertDays$]</td>
 <td>Počet dní, po kterých je výstraha odeslána příjemci.</td>
 </tr>
 <tr>
 <td>[$ToPersonName$]</td>
 <td>Jméno příjemce.</td>
 </tr>
 <tr>
 <td>[$TransferNumber$]</td>
 <td>Číslo dokladu.</td>
 </tr>
  </tbody>
  </table>
	
	<p>Texty zpráv můžete definovat ve více <a href="../../../../../modules/alvao-electronic-handover-forms/installation#multilanguage-environment">jazycích</a>.</p>

</asp:Content>

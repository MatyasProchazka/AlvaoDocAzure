<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Šablona zprávy</h1>
<p>Toto okno umožňuje definovat obsah upozornění zasílaných na nesrovnalosti v softwaru nainstalovaném v počítačích.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Předmět</strong> - zadejte předmět e-mailu. <ul><li><strong>Vložit proměnnou</strong> - z nabídky vyberte proměnnou, kterou chcete vložit do textu předmětu na pozici kurzoru (další podrobnosti viz tabulka níže)</li></ul></li>
 <li><strong>Tělo zprávy</strong> - zadejte text e-mailu.</li>
 <ul><li><strong>Vložit proměnnou</strong> - vyberte z nabídky proměnnou, kterou chcete vložit do textu zprávy na pozici kurzoru (více informací viz tabulka níže).</li></ul>
	</ul>


 <p>V předmětu nebo těle zprávy můžete použít následující proměnné:</p>
 <table>
  <thead>
 <tr>
  <th>Proměnná</th>
  <th>Význam</th>
 </tr>
 </thead>
 <tbody>
 <tr>
  <td>[$ComputerProductTable$]</td>
  <td>Tabulka s problémovými produkty, např  <table>
 <thead>
    <tr>
   <th><strong>Počítač</strong></th>
    <th><strong>Název softwaru</strong></th>
   <th><strong>Alternativní schválený software</strong></th>
   <th><strong>Odpovědný software</strong></th>
	 </tr>
	  </thead>
 <tbody>
 <tr>
 <td>PC10</td>
   <td>WinZip 11</td>
 <td>7-Zip, WinRar</td>
   <td>Jan Novák, Petr Svoboda</td>
 </tr>
 <tr>
  <td>PC11</td>
   <td>XnView</td>
   <td></td>
   <td>Petr Svoboda</td>
 </tr>
 </tbody>
  </table>
  Sloupec <strong>Alternativní schválený software</strong>se zobrazí pouze v případě, že je v databázi nastaven alespoň jeden výrobek s alternativním schváleným softwarem - viz <a href="../../../../../alvao-asset-management/software-management/software-regular-auditing#alternative-approved-sw">Nastavení alternativního schváleného SW</a></td>
 </tr>
 <tr>
  <td>[$Alert1SentDate$]</td>
  <td>Datum, kdy byla odeslána první výstraha.</td>
 </tr>
 <tr>
  <td>[$Alert2SentDate$]</td>
  <td>Datum, kdy byl nebo bude odeslán druhý záznam.</td>
 </tr>
 <tr>
  <td>[$Alert3SentDate$]</td>
  <td>Datum, kdy bylo nebo bude odesláno třetí upozornění.</td>
 </tr>
 <tr>
  <td>[$MyAssetURL$]</td>
  <td>Odkaz na stránku webové aplikace - <a href="../../../search/persons/person">My Assets</a>.</td>
 </tr>
 <tr>
  <td>[$DetectPeriod$]</td>
  <td>Nastavte (zrychlenou) dobu detekce (číslo - počet dní).</td>
 </tr>
 <tr>
  <td>[$AlertNo$]</td>
  <td>Pořadové číslo výstrahy (celé číslo).</td>
 </tr>
 <tr>
  <td>[$ComputerSwManager$]</td>
  <td>E-mailové adresy osob, které jsou zodpovědné za SW v počítači.</td>
 </tr>
 <tr>
  <td>[$ComputerSwManagersManager$]</td>
  <td>E-mailové adresy nadřízených, kteří jsou zodpovědní za SW v počítači.</td>
 </tr>
  </tbody>
  </table>
  

</asp:Content>

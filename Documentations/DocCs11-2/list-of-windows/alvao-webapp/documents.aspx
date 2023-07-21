<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Dokumenty</h1>

  <p>Na této stránce můžete pracovat s <a href="../../alvao-asset-management/documents">Dokumenty</a> v aplikaci ALVAO Asset Management.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Příkazový panel</b> <ul>
    <li><a href="documents/new-document">Nový dokument</a> - vytvoření nového dokumentu. </li>
          <li><a href="documents/document/edit">Upravit</a> - úprava vlastností vybraných dokumentů.</li>
          <li><strong>Odstranit</strong> - odstranění vybraných dokumentů.<br />
              Odstraněné dokumenty z tabulky zmizí, ale můžete je zobrazit otevřením rozevírací nabídky na kartě zobrazení tabulky a výběrem příkazu <em>Možnosti zobrazení - Zobrazit odstraněné</em>.</li>
          <li><strong>Obnovit smazané</strong> - obnoví vybrané dokumenty, které byly dříve smazány příkazem <em>Smazat</em>.</li>
  </ul>
  </li>
    <li><b>Tabulka dokumentů</b> - obsahuje všechny dokumenty. Tabulku můžete <a href="../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li> 
    <li><a href="documents/document">Vybraný dokument</a> - po výběru dokumentu v tabulce se vpravo zobrazí panel s vybraným dokumentem.</li>
  </ul>
 
</asp:Content>




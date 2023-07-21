<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Složka dokumentů - oprávnění</h1>
  <p>V tomto okně můžete přidat nebo upravit oprávnění uživatele nebo skupiny k vybrané složce dokumentů.</p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Složka dokumentu</strong> - název složky dokumentu, na kterou se oprávnění vztahuje. Hodnotu nelze měnit.</li>
  <li><strong>Vybrat osobu nebo skupinu</strong> - zadejte část jména osoby nebo názvu skupiny a poté z nabídky vyberte osobu nebo skupinu, které chcete nastavit oprávnění.</li>
  <li><strong>Oprávnění</strong><ul>
  <li><strong>Číst</strong> - zapněte, pokud má vybraná osoba nebo skupina vidět všechny dokumenty ve vybrané složce dokumentů.</li>
  <li><strong>Změnit</strong> - zapněte, pokud má mít vybraná osoba nebo skupina možnost upravovat všechny dokumenty ve vybrané složce dokumentů.</li>
  <li><strong>Odstranit</strong> - zapněte, pokud chcete, aby vybraná osoba nebo skupina mohla odstraňovat dokumenty ve vybrané složce dokumentů.</li>
  </ul>
  </li>
  </ul>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Správa</h1>
  <p>Na této stránce můžete vytvářet nové a upravovat stávající <a href="../../../alvao-service-desk/knowledge-base">znalosti</a></p>

  
  Možnosti:<ul>
  <li>Příkazový panel<ul>
  <li><a href="manage/new-knowledge">Nová znalost</a> - vytvoření nové znalosti</li>
  <li><strong>Zobrazit</strong> - zobrazení znalosti na nové kartě prohlížeče</li>
  <li><a href="manage/edit-knowledge">Upravit</a> - úprava vybrané znalosti</li>
  <li><strong>Odstranit</strong> - odstranění vybrané znalosti. Tím se znalost přestane normálně zobrazovat uživatelům, ale zůstane uložena v databázi. Odstraněné znalosti můžete zobrazit v tabulce na této stránce zrušením zaškrtnutí výchozího filtru ve sloupci <em>Odstraněno</em> nebo vytvořením nového zobrazení v tabulce s filtrem <em>Odstraněno = Ano</em>.</li>
  <li><strong>Obnovit odstraněné</strong> - obnoví první odstraněné znalosti. Ve sloupci <em>Odstraněno</em> se změní hodnota na <em>Ne</em> a znalosti se uživatelům opět zobrazí jako obvykle.</li>
  </ul>
  </li>
  <li>Tabulka znalostí - tabulka obsahuje všechny znalosti, které máte právo upravovat. <a href="../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>



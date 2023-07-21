<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Šablony požadavků</h1>
  <p>Na této stránce můžete spravovat <a href="../../alvao-service-desk/requests/ticket-templates">šablony požadavků</a>.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><a href="ticket-templates/new-template">Nová šablona</a> - vytvoření nové šablony požadavku</li>
  <li><a href="ticket-templates/edit-template">Upravit</a> - úprava vybrané šablony</li>
  <li><a href="ticket-templates/schedule-template">Naplánovat</a> - naplánování automatického vytváření požadavků podle vybrané šablony</li>
  <li><strong>Odstranit</strong> - odstranění vybrané šablony. Tím se šablona přestane normálně zobrazovat v aplikaci, ale zůstane uložena v databázi. V tabulce na této stránce si můžete smazané šablony zobrazit pomocí příkazu v nabídce zobrazení - <em>Zobrazit smazané</em>.</li>
  <li><strong>Obnovit smazané</strong> - obnoví první odstraněnou šablonu. Šablona se bude v aplikaci opět normálně zobrazovat.</li>
  </ul>
  </li>
  <li><strong>Tabulka šablon</strong> - tabulka obsahuje všechny šablony, které máte právo upravovat. <a href="../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


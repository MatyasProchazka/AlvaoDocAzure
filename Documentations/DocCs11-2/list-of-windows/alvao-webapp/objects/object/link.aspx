<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Vazba</h1>

  <p>V tomto okně můžete vytvářet nové vazby  mezi objekty nebo upravovat stávající vazby .</p>
  <p>Toto okno je součástí modulu <a href="../../../../modules/alvao-configuration-management">Správa konfigurace ALVAO</a>.</p>
  <p>Funkce:</p>
  <ul>
  <li><b>Výchozí objekt</b> - objekt, ze kterého vytváříte nové propojení nebo upravujete stávající propojení.</li>
  <li><b>Typ propojení</b> - výběr <a href="../../../../modules/alvao-configuration-management/object-links">typu propojení</a> mezi počátečním a koncovým objektem. Název typu propojení odpovídá čtení údajů v okně shora dolů.</li>
  <li><b>Konečný objekt</b> - zadejte část názvu hledaného objektu a poté z nabídky vyberte konkrétní objekt, který chcete propojit s počátečním objektem. Tímto způsobem můžete postupně vybrat několik finálních objektů a propojit je s výchozím objektem najednou. Objekty se vyhledávají stejným způsobem jako ve formuláři <a href="../../requests/request/add-object">Přidat objekt</a>     <ul><li><b>...</b> - v případě potřeby vyhledejte a vyberte objekt ve stromu objektů.</li></ul>
  </li>
  </ul>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Typy vazeb mezi objekty</h1>
<p>Na této stránce můžete spravovat <a href="../../../../modules/alvao-configuration-management/object-links">vazby  mezi objekty</a>. Tato stránka je k dispozici pouze v případě, že je povolen modul <a href="../../../../modules/alvao-configuration-management">Správa konfigurace ALVAO</a> </p>
<p>Funkce:</p>
<ul>
  <li><b>Příkazový panel</b><ul>
  <li><a href="link-types/new">Nový typ vazby</a> - vytvoření nového vlastního typu odkazu.</li>
  <li><b>Upravit</b> - úprava vybraného typu odkazu.</li>
  <li><b>Odstranit</b> - odstranění vybraného typu odkazu. Tento příkaz je k dispozici pouze pro vlastní typy vazeb.</li>
  </ul>
  </li>
  <li><b>Tabulka typů vazeb</b> - obsahuje všechny typy vazeb a jejich atributy. <a href="../../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
</ul>

</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Správa</h1>
<p>Sekce <em>Správa</em> slouží správcům systému Alvao k nastavení systému. Levá svislá lišta hlavní nabídky a horní vodorovná lišta jsou v této části aplikace černé, aby se lépe odlišily od běžné části aplikace.</p>
  <p>Levá svislá hlavní nabídka obsahuje příkazy:</p>
  <ul>
  <li><a href="administration/users">Uživatelé</a></li>
  <li><a href="administration/groups">Skupiny</a></li>
  <li><a href="administration/asset-management">Asset Management</a> - nastavení specifická pro produkt ALVAO Asset Management.</li>
  <li><a href="administration/service-desk">Service Desk</a> - specifická nastavení produktu ALVAO Service Desk.</li>
  <li><a href="administration/organization">Organizations (Organizace)</a> - správa organizací, ke kterým lze přiřadit uživatele.</li>
  <li><a href="administration/custom-items">Vlastní položka</a></li>
  <li><a href="administration/applications">Aplikace</a> - správa vlastních rozšíření</li>
  <li><a href="administration/data-queries">Datové dotazy</a> - správa datových dotazů</li>
  <li><a href="administration/periodic-alerts">Periodická upozornění</a></li>
  <li><a href="administration/settings">Nastavení</a></li>
  <li><a href="administration/licenses">Licence</a></li>
  <li><a href="administration/database-maintenance">Údržba databáze</a></li>
  <li><strong>Zpět do aplikace</strong> - návrat z <em>administrace</em> do běžné aplikace.</li>
  </ul>

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>


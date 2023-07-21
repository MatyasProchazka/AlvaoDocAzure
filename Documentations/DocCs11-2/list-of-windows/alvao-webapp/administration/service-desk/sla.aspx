<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SLA</h1>
<p>Na této stránce můžete nastavit <a href="../../../../alvao-service-desk/implementation/services/sla">dohodu o úrovni služeb</a> (SLA), kterou pak přiřadíte žadatelům o službu.</p>

<p>Možnosti:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nová SLA</strong> - vytvoření <a href="sla/create-sla">nové SLA</a>. </li>
  <li><strong>Upravit</strong> - úprava vybrané SLA. Nabídka obsahuje stejné příkazy jako bloky v <a href="sla/detail">náhledu</a> SLA.</li>
  <li><strong>Odstranit</strong> - odstranění vybrané SLA.</li>
  </ul>
  </li>
  <li><strong>Tabulka SLA</strong> - obsahuje všechny SLA a jejich vybrané atributy. Tabulku lze <a href="../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
  <li><strong>Vybrané SLA</strong> - po výběru SLA v tabulce se vpravo zobrazí <a href="sla/detail">náhled</a> s informacemi o vybraném SLA.  V každém bloku náhledu se zobrazí příkaz <em>Upravit</em>.</li>
  </ul>



	</asp:Content>

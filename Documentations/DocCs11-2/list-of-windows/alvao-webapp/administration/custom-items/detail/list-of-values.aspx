<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Seznam hodnot</h1>
  <p>Toto okno slouží k nastavení seznamu hodnot pro upravované <a href="../../../../../alvao-service-desk/implementation/custom-items">vlastní položky</a>, ze kterého pak uživatelé vybírají hodnotu vlastního pole ve formulářích v aplikaci. </p>

  <p>Možnosti:</p>

 <ul>
 <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nová hodnota</strong>- přidání <a href="customitems-valuedial">nové hodnoty</a> do seznamu.</li>
  <li><strong>Upravit</strong> - <a href="edit-customitems-valuedial">úprava</a> vybrané hodnoty v seznamu.</li>
  <li><strong>Odstranit</strong> - odstranění vybrané hodnoty ze seznamu.</li>
  <li><strong>Přesunout nahoru</strong> - přesun vybrané hodnoty o jednu pozici výše v seznamu.</li>
  <li><strong>Posunout dolů</strong> - přesun vybrané hodnoty v seznamu o jednu pozici níže.</li>
  <li><strong>Zvýšit úroveň</strong> - přesun vybrané hodnoty o jednu úroveň níže v hierarchii stromu.</li>
  <li><strong>Snížit úroveň</strong> - přesun vybrané hodnoty o jednu úroveň výše v hierarchii stromu.</li>
  </ul>
  </li>
  <li><strong>Seznam hodnot</strong> - hodnoty v seznamu. Hodnoty lze uspořádat do stromové hierarchie, viz příkazy <em>Zvýšit/snížit úroveň</em>.</li>
	</ul>
	  
</asp:Content>

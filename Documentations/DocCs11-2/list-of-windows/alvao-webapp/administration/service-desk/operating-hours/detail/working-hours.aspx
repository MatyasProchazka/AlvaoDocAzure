<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Intervaly provozních hodin</h1>
	<p>Toto okno slouží ke správě intervalů editovaných <a href="../../../../../../alvao-service-desk/implementation/services/operating-hours">provozních hodin</a>. Každý interval určuje dny v týdnu a denní dobu, kdy je služba v provozu. Provozní doba se obvykle skládá z více takových intervalů, např. jeden pro pondělí až pátek 8:00-12:00 a další pro pondělí až pátek 13:00-17:00 atd.</p> &lt;p<p>Varianty: &lt;p&gt;Volitelná místa, kde je možné se pohybovat, jsou určena pro uživatele, kteří se pohybují v rozmezí od 1 do 5 hodin:</p>
	<ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nový interval</strong> - vytvoření <a href="working-hour">nového intervalu</a> provozní doby.</li>
  <li><strong>Upravit</strong> - <a href="working-hour">úprava</a> vybraného intervalu provozních hodin.</li>
  <li><strong>Odstranit</strong> - odstranění vybraného intervalu provozních hodin.</li>
  </ul>
  </li>
  <li><strong>Tabulka intervalů</strong> - obsahuje intervaly editované provozní doby. Tabulku můžete <a href="../../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
  </ul>
  
	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  Pravidelné intervaly pro určité dny nebo období můžete změnit pomocí <a href="exceptions-operating-hours">výjimek</a>.</div>


	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  Změna pravidla servisního času se okamžitě aplikuje zpětně na všechny existující požadavky s SLA s daným servisním časem. Pokud nechcete změnu aplikovat zpětně, nastavte datum účinnosti <em>do pro</em> existující pravidlo a vytvořte nové pravidlo, které ho od tohoto data nahradí (viz část <em>Účinnost do</em>).</div>


	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	Jedno pravidlo by nemělo mít dobu trvání kratší než 1 hodinu. U pravidel s kratší dobou trvání nemusí být hodnota sloupce <em>Aktuální cíl (Zbývající)</em> v <a href="../../../../requests/table-of-requests">tabulce požadavků</a> vypočtena správně.</div>


</asp:Content>

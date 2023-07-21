<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Schvalovací režimy</h1>
<p>Tato stránka slouží ke správě <a href="../../../../alvao-service-desk/implementation/services/processes/request-approval">schvalovacích schémat</a>.</p>

<p>Možnosti:</p>
<ul><li><strong>Příkazový panel</strong><ul>
	<li><strong>Nové schéma</strong> - vytvoření <a href="approval-scheme/create-approval-scheme">nového schématu</a>. </li>
	<li><strong>Vytvořit kopii</strong> - vytvoření kopie vybraného schématu.</li>
  <li><strong>Upravit</strong> - úprava vybraného schématu. Nabídka obsahuje stejné příkazy jako bloky v <a href="approval-scheme/detail">náhledu schématu</a>. Schémata, která jsou právě schvalována, nelze upravovat. Chcete-li je upravit, použijte příkaz <em>Nahradit</em>.</li>
	<li><strong>Nahradit</strong> - chcete-li upravit schéma, které je uzamčeno pro úpravy, protože je právě schvalováno, použijte na toto schéma tento příkaz. Příkaz vytvoří kopii vybraného schématu, nahradí vybrané schéma touto kopií ve všech procesech a poté vybrané schéma odstraní, avšak probíhající schvalování proti němu bude probíhat. Výslednou kopii schématu můžete upravovat, dokud proti ní není spuštěno nové schvalování nebo dokud nové schvalování neprobíhá. Doporučujeme přejmenovat výslednou kopii schématu tak, aby z názvu byla zřejmá verze schématu, např. aby bylo uvedeno datum účinnosti.</li>
	<li><strong>Odstranit -</strong> odstranění vybraného schématu. Schémata, která se používají v nastavení <a href="../../../../alvao-service-desk/implementation/services/processes">procesů</a>, nelze odstranit. Pokud odstraníte schéma, pod kterým právě probíhá schvalování, schválení pod tímto schématem normálně skončí.</li> </ul>
	</li>
  <li><strong>Tabulka schémat schvalování-</strong> obsahuje všechna schémata schvalování. Tabulku <a href="../../../../alvao-asset-management/working-with-tables">si přizpůsobte</a> podle potřeby.</li>
  <li><strong>Vybrané schéma schvalování</strong> - po výběru schématu v tabulce se vpravo zobrazí <a href="approval-scheme/detail">náhled</a> s informacemi o vybraném schématu.  V každém bloku náhledu se zobrazí příkaz <em>Upravit</em>.</li>
	</ul>

</asp:Content>

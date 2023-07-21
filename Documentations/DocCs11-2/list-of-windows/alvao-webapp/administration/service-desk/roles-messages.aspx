<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pravidla pro příchozí zprávy</h1>
<p>Tato stránka slouží ke správě pravidel, která Service Desk ALVAO uplatňuje na příchozí e-mailové zprávy, které byly doručeny do <a href="../../../../alvao-service-desk/implementation/services">schránek služeb</a> a na jejichž základě byly vytvořeny nové požadavky.</p>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	  Zprávy, které v předmětu obsahují značku požadavku, jsou automaticky přiřazeny k existujícímu požadavku a tato pravidla se na ně nevztahují.</div>
  <p>Jednotlivá pravidla jsou na příchozí zprávu aplikována postupně ve stejném pořadí, v jakém se zobrazují na této stránce (při řazení podle sloupce <em>Pořadí</em> ). Každé pravidlo se skládá z <em>podmínky</em> a <em>akce</em>. Akce se provede pouze v případě, že je splněna podmínka. <br /> Jakmile je jedno z pravidel (je-li jich nastaveno více) vyhodnoceno pro zprávu jako pravdivé, zpracování se ukončí, nevyhodnocují se všechna.</p>



  <p>Možnosti:</p>
<ul>
 <li id="commands"><strong>Panel příkazů</strong><ul>
  <li><strong>Nové pravidlo</strong> - vytvoření <a href="roles-messages/create-roles-messages">nového pravidla</a>.</li>
  <li><strong>Upravit -</strong> upravit vybrané pravidlo.   </li>
  <li><strong>Odstranit</strong> - odstranění vybraného pravidla.  </li>
   <li><strong>Dolů</strong> - přesun vybraného pravidla o jednu pozici dolů.</li>
   <li><strong>Nahoru</strong> - přesun vybraného pravidla o jednu pozici nahoru.</li>
 </ul>
  
 </li>

 <li><strong>Tabulka pravidel -</strong> obsahuje všechna vytvořená pravidla. Tabulku lze <a href="../../../../alvao-asset-management/working-with-tables">přizpůsobit</a>.</li>
  
 <li><strong>Vybrané pravidlo</strong> - po výběru pravidla v tabulce se vpravo od tabulky zobrazí <a href="roles-messages/detail">náhled s</a> informacemi o vybraném pravidle.</li>
</ul>

  </asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová smlouva SLA</h1>
<p>Pomocí tohoto formuláře můžete vytvořit novou <a href="../../../../../alvao-service-desk/implementation/services/sla">dohodu SLA</a>.</p>
  <p>Možnosti:</p>
	<ul>
 <li><strong>Název SLA</strong> - zadejte název SLA, např. <em> Gold</em>, <em>Silver</em> atd.</li>
 <li><strong>Popis</strong> - zadejte slovní popis SLA. Tento popis se zobrazí žadatelům.</li>
 <li><strong>Parametry</strong><ul>
 <li><strong>Provozní doba</strong> - vyberte <a href="../../../../../alvao-service-desk/implementation/services/operating-hours">provozní dobu</a>. </li>
 <li><strong>Doba do první reakce</strong> - povolte, pokud chcete nastavit dobu, za kterou má řešitelský tým reagovat na nově podanou požadavek.<br/> Za odpověď se považuje odpověď žadateli prostřednictvím e-mailu (s výjimkou automatického oznámení o vytvoření požadavku) nebo záznam jakékoli události (například telefonického hovoru), která má žadatele uvedeného v poli <em>Komu</em>. Pokud je požadavek založen jménem žadatele hlavním řešitelem na základě telefonického hovoru nebo osobního setkání s žadatelem (viz položka <a href="../../../requests/new-request">Nový požadavek</a> - <em>způsob založení požadavku</em> ), je první odpověď splněna již samotným založením požadavku.<br /><ul>
  <li><strong>hodin od podání požadavku (v rámci provozní doby </strong> ) - zadejte počet hodin.</li>
  </ul>
  </li>
 <li><strong>Doba do vyřešení požadavku</strong> - povolte, pokud chcete nastavit maximální dobu od podání požadavku do jeho vyřešení. Položka <em>Termín</em> vyřešení se pak v požadavku automaticky nastaví ihned po jeho podání podle hodnoty uvedené v SLA.  <ul>
  <li><strong>hodiny od podání požadavku (v rámci provozní doby </strong> ) - zadejte počet hodin.</li>
  </ul>
  </li>
 <li><strong>Pozastavit SLA při čekání na žadatele požadavku</strong>- povolte, pokud nechcete počítat dobu případného <a href="../../../../../alvao-service-desk/requests/wait-for-response">čekání na žadatele požadavku</a> až do jeho vyřešení. Datum vyřešení požadavku zadané SLA se během čekání na žadatele automaticky posune. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Doporučujeme pravidelně kontrolovat požadavky s pozastaveným SLA (např. 1x/den nebo týden) a po určité době čekání požádat žadatele o spolupráci. V okně <a href="../../../requests/table-of-requests">Požadavky</a> můžete vytvořit zobrazení <em>čekajícího žadatele</em> s filtrem <em>Čekající žadatel</em> &gt; 0. </div>

 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Doba <em>čekání na požadavek žadatele</em> se přičítá ke lhůtě pouze v případě, že je datum řešení nastaveno podle SLA. Pokud je termín nastaven ručně, doba <em>čekání na žadatele</em> se k termínu nepřičítá </div>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 V okně <a href="../../../requests/table-of-requests">Požadavky</a> jsou při výchozím řazení podle sloupce <em>Ikony</em> požadavky s aktuálně pozastaveným SLA automaticky odsunuty na konec tabulky. </div></li>

  </ul>
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Změna parametru se použije i zpětně na všechny již vytvořené požadavky s danou SLA. Pokud chcete změnu aplikovat pouze na nově vytvořené požadavky, vytvořte nejprve novou SLA podle nových podmínek, přiřaďte ji žadatelům ve vybraných službách a starou SLA z žadatelů odstraňte. Do názvu odstraněných SLA je vhodné doplnit datum platnosti, například "Z2 - střední (platnost do 14.4.2014)".</div>
 </li>
 <li><strong>Další</strong><ul>
 <li><strong>Smlouva (číslo</strong> ) - zadejte označení fyzické smlouvy.</li>
 <li><strong>Index kvality</strong> - zadejte, pokud chcete SLA řadit podle kvality. Kvalita je určena číslem: čím vyšší číslo, tím vyšší kvalita.</li>
 <li><strong>Poznámky</strong> - v případě potřeby zadejte další interní poznámky.</li>
      <li>Zde lze umístit další vlastní vyplněné údaje.</li>
  </ul>
 </li>
	</ul>
</asp:Content>

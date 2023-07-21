<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nová zpráva</h1>
  <p>Tento formulář slouží k vytvoření nové <a href="../../../../alvao-service-desk/news">aktualizované zprávy</a>.</p>
  <p>Možnosti:</p>
  <ul>
  <li>Příkazový panel<ul>
  <li><strong>OK</strong> - odeslání formuláře</li>
  <li><strong>Příloha</strong> - připojení přílohy ke znalostem. Tento příkaz má stejnou funkci jako tlačítko <em>Přidat přílohu</em>. ve formuláři.</li>
  </ul>
  </li>
  <li><strong>Nadpis</strong> - zadejte nadpis zprávy</li>
  <li><strong>Text</strong> - zadejte text zprávy</li>
  <li><strong>Přílohy</strong> - seznam příloh ke zprávě<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu. Soubory můžete připojit také přetažením do formuláře.</li>
  </ul>
  </li>
  <li><strong>Zobrazit zprávu ve službách</strong> - zkrácený seznam služeb, ve kterých se zpráva zobrazí uživatelům.  <ul>
  <li><strong>Upravit -</strong> vyberte služby v tabulce, kde chcete zprávu zobrazit. </li>
  </ul>

  </li>
  <li><strong>Zobrazit žadatelům</strong> - zapněte, pokud chcete, aby se zpráva zobrazovala žadatelům vybraných služeb. Pokud je tato možnost vypnutá, zprávu uvidí pouze členové řešitelských týmů vybraných služeb.</li>
  <li><strong>Skrýt po</strong> - v případě potřeby zadejte datum a čas, po kterém se má zpráva automaticky přestat zobrazovat uživatelům. Skryté zprávy však lze stále nalézt na stránce <em>Aktuální zprávy</em> - <a href="../manage">Správa</a> v zobrazení <em>Archiv</em>.</li>
  <li><strong>Důležité</strong> - důležité zprávy se uživatelům zobrazují v záhlaví každé stránky aplikace ve vyhrazeném žlutém pruhu, dokud si je uživatelé nepřečtou nebo dokud nevyprší nastavené datum pro skrytí zprávy, viz <em>Skrýt po</em>.</li>
  <li><strong>Zobrazit všem nájemcům</strong> - zpráva se zobrazí všem uživatelům všech nájemců bez ohledu na přiřazení zprávy ke službě. Tato možnost je dostupná pouze pro <a href="../../../../alvao-asset-management/implementation/installation/multitenant">poskytovatele Alvao</a> v režimu více nájemců. Poskytovatel tak může informovat uživatele nájemců o plánovaných aktualizacích systému Alvao apod  </li>
  <li><strong>Pořadí zobrazení</strong> - pokud chcete tuto zprávu zobrazit přednostně na začátku seznamu zpráv, zadejte číslo menší než výchozí hodnota 10. Zprávy se zobrazují ve vzestupném pořadí podle hodnoty v této položce.<div class="tip">
 <div class="icon"></div>
  <div class="title">Tip: V případě, že se jedná o zprávu, která je v seznamu zpráv uvedena, je možné ji zadat do seznamu zpráv:</div>
  Použijte jednotnou stupnici hodnot pro všechny služby, např. 5=důležité, 10=normální, 15=nedůležité. Tím zajistíte správné pořadí zobrazování zpráv z různých služeb. </div>

  </li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


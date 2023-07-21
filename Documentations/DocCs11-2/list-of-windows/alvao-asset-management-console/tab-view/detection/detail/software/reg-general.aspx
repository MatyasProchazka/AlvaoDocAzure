<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Úprava pravidla pro rozpoznávání podle registru - Obecné</h1>
<p>Na této záložce můžete spravovat definici záznamu v registru, kterou používá pravidlo rozpoznávání produktů. Produkty jsou rozpoznávány pomocí <a href="../../../../../../alvao-asset-management/software-management/custom-swlib">Vlastní knihovny softwarových produktů</a>.<br/>Rozpoznávat se bude podle zadané položky. Žádná z položek není povinná.</p>

	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění: </div>
		</div>
 Pravidla pro produkty ze standardní softwarové knihovny nelze upravovat.

<p>Možnosti: V případě, že se jedná o knihovnu, která je součástí softwarové knihovny, je možné ji nastavit:</p>

	<ul>
 <li><strong>KLíčový identifikační záznam produktu</strong> - zapněte, pokud je pravidlo rozpoznávacím pravidlem softwarového produktu.
Pokud volbu vypnete, vytváříte pravidlo <em>vyškrtávací</em>, podle kterého se nerozpoznává produkt. Naopak je daný záznam z rozpoznávacího procesu vyřazen.</li>
 <li><strong>Produkt</strong> - zadejte název produktu.</li>
 <li><strong>Verze</strong> - zadejte verzi produktu.</li>
 <li><strong>Verze od</strong> - zadejte spodní hranici (nejnižší verzi produktu), která splňuje podmínku - např. hodnota &quot;5.1&quot; znamená všechny verze od &quot;5.1&quot; výše.</li>
 <li><strong>Verze do</strong> - zadejte horní hranici (nejvyšší verzi produktu), která splňuje podmínku - např. hodnota &quot;5.5&quot; znamená všechny verze až do &quot;5.5.255.255&quot;.</li>
 <li><strong>Jazyk</strong> - z nabídky vyberte jazyk produktu.</li>
 <li><strong>Vydavatel</strong> - zadejte výrobce softwarového produktu.</li>
 <li><strong>Cesta</strong> - zadejte klíč registru.</li>
 <li><strong>Komentář</strong> - zadejte komentář k produktu.</li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Ve vstupních polích můžete používat speciální znaky SQL, např. &quot;%&quot; znamená posloupnost libovolných znaků.</div>

	<h3>Odkazy </h3>
	
	<ul>
 <li><a href="../../../../../../alvao-asset-management/software-management/custom-swlib">
 Knihovna vlastních softwarových produktů</a></li>
	</ul>

</asp:Content>

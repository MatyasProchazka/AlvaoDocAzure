<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pravidlo pro rozpoznávání souborů - obecné</h1>
<p>Tato záložka umožňuje spravovat definici souboru používanou pravidlem rozpoznávání produktů. Produkty jsou rozpoznávány podle <a href="../../../../../../alvao-asset-management/software-management/custom-swlib">knihoven produktů vlastního softwaru</a>.<br/>Bude rozpoznán podle zadaných údajů.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění: V této záložce se zobrazí název produktu:</div>
 Pravidla pro produkty ze standardní softwarové knihovny nelze upravovat.</div>
<p>Možnosti: V případě, že se jedná o softwarovou knihovnu, můžete použít následující volby: 1:</p>
	<ul>
 <li><strong>Klíčový identifikační soubor produktu</strong> - Zapněte, pokud je pravidlo pravidlem pro rozpoznávání softwarových produktů.<br/>Pokud tuto možnost vypnete, vytvoříte <strong>pravidlo výběru</strong>, které produkt nerozpozná, ale naopak vyloučí soubor z procesu rozpoznávání.</li>
 <li><strong>Název souboru</strong> - zadejte název souboru.</li>
 <li><strong>Přípona souboru</strong> - zadejte příponu souboru.</li>
 <li><strong>Velikost souboru</strong> - zadejte velikost souboru v bajtech.</li>
 <li><strong>Společnost</strong> - zadejte název vydavatele produktu.</li>
 <li><strong>Název produktu</strong> - zadejte název produktu.</li>
 <li><strong>Jazyk</strong> - z nabídky vyberte jazyk produktu.</li>
 <li><strong>Verze produktu</strong> - zadejte verzi produktu.</li>
 <li><strong>Verze produktu od</strong> - zadejte spodní hranici (nejnižší verzi produktu), která splňuje podmínku - např. hodnota &quot;5.1&quot; znamená všechny verze od &quot;5.1&quot; výše.</li>
 <li><strong>Verze produktu do</strong> - zadejte horní hranici (nejvyšší verzi produktu), která splňuje podmínku - např. hodnota &quot;5.5&quot; znamená všechny verze až do &quot;5.5.255.255&quot;.</li>
 <li><strong>Verze souboru</strong> - zjišťování podle verze souboru</li>
 <li><strong>Verze souboru od</strong> - zadejte verzi souboru.</li>
 <li><strong>Verze souboru do</strong> - zadejte nejnižší číslo verze souboru - spodní hodnotu intervalu.</li>
 <li><strong>Původní název souboru</strong> - zadejte nejvyšší číslo verze souboru - horní hodnota intervalu.</li>
 <li><strong>Interní název</strong> - zadejte interní název.</li>
 <li><strong>Komentáře</strong> - zadejte komentář.</li>
 <li><strong>Popis souboru</strong> - zadejte popis souboru.</li>
	</ul>

	

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Ve vstupních polích můžete používat speciální znaky SQL, např. &quot;%&quot; znamená posloupnost libovolných znaků. </div>

</asp:Content>

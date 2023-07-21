<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Podrobnosti o detekci softwaru</h1>
	<p>V tomto okně najdete podrobnosti o <a href="../../../../../alvao-asset-management/implementation/detection#SW_det">detekci softwaru</a>. Soubory jsou detekovány podle informací v <a href="../../../../../alvao-asset-management/software-management/custom-swlib">Knihovně softwarových produktů</a>. Ve výchozím zobrazení souborů je okno rozděleno do pěti částí (zobrazení registru používá pouze první tři):</p>
	<ul>
	<li><b>Seznam nerozpoznaných souborů</b> (nahoře) - zobrazuje soubory, které nebyly rozpoznány podle žádného pravidla.<br/></li><li><b>Strom složek</b> (vlevo uprostřed) - zobrazení disku detekovaného počítače. Pokud je složka označena zaškrtnutím, znamená to, že se v ní nacházejí detekované soubory.<br/></li><li><b>Seznam souborů ve vybrané složce</b> (uprostřed vpravo) - zobrazení souborů nalezených ve složce, která je aktuálně vybrána ve stromu složek. Soubory označené ikonou zaškrtnutí jsou rozpoznány a ve sloupci <strong>produktu</strong></li>je<li>uveden název rozpoznaného softwarového produktu.<br/></li><li><b> Seznam produktů</b> (vlevo dole) - zobrazení produktů podle kategorií <ul>
 <li><em>Nalezené</em> - zobrazení všech nalezených softwarových produktů.</li>
 <li><em>Vše</em> - zobrazení všech dostupných softwarových produktů (toto zobrazení je užitečné při navrhování vlastních pravidel rozpoznávání)</li>
	</ul>
	<li><b>Seznam pravidel</b> (vpravo dole) - pravidla pro rozpoznávání produktu, který je aktuálně vybrán v seznamu produktů. Seznam obsahuje buď pouze pravidla pro soubory, nebo pouze pravidla pro registry, v závislosti na režimu zobrazení okna</li></ul>
	<p>Možnosti: V nabídce jsou k dispozici následující možnosti: - V případě, že se jedná o soubor, který se nachází v systému, je možné jej nastavit jako soubor, který se nachází v systému:</p>
	<ul>
 <li><a href="software/edit">Upravit</a></li>
 <li><a href="software/view">Zobrazit</a></li>
 <li><a href="software/actions">Akce</a></li>
 <li><a href="software/tools">Nástroje</a></li>
	</ul>
	
</asp:Content>

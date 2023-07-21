<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
<p>Na této kartě můžete upravovat základní informace o produktu.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 U produktů ze <a href="../../../../../alvao-asset-management/software-management/custom-swlib">standardní softwarové knihovny</a> lze měnit pouze pole cena. </div>
<p>Možnosti: V nabídce je možné zadat cenu za produkt:</p>
	<ul>
 <li><strong>Vydavatel</strong> - výběrem z nabídky vydavatelů produktů nebo pomocí <a href="../../tools/lists/organization/organization">.</a>.. vytvoříte v systému nového vydavatele.</li> <li><strong>Název</strong> - zadejte nebo vyberte název produktu. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámky:</div>
 K dispozici jsou pouze produkty od vybraného vydavatele. Pokud není vybrán žádný vydavatel, jsou v nabídce všechny produkty. V závislosti na vybraném produktu se zobrazí seznamy <strong>Verze</strong>, <strong>Verze</strong>, <strong>Edice</strong> a <strong>Platforma</strong> pouze se známými hodnotami vybraného produktu. <li><strong>Verze</strong> - zadejte verzi produktu.</li> <li><strong>Edice</strong></li>- <li>zadejte edici (vydání) produktu.</li> <li><strong>Platforma</strong> - zadejte platformu (operační systém), pro kterou je produkt určen (např. Windows).</li> <li><strong>Jazyk</strong> - z nabídky vyberte jazyk produktu. <em>&lt;žádný&gt;</em> znamená, že tato hodnota není zadána.</li> <li><strong>Cena</strong> - zadejte cenu produktu. <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka</div>: Toto pole funguje ve spojení s auditem softwaru v části <a href="../../license-and-install-overview">Přehled licencí a instalací</a>, kde sloupec <em>Riziko</em> vypočítává riziko, které představuje instalace nelicencovaných produktů. (Riziko = počet nelicencovaných instalací x cena produktu).</div> </li> <li><strong>Licencování</strong> - vyberte <ul> <li><strong>Komerční</strong> - komerční (placený) produkt včetně OEM verzí.</li> <li><strong>Shareware/Trial</strong> - čas</li> </ul> </li>ově <li> <ul> <li>omezená (zkušební) verze produktu.</li> <li><strong>Freeware</strong> - plná verze produktu distribuovaná zdarma.</li> <li><strong>Nespecifikováno</strong> - neznámé.</li> </ul> </li> <li><strong>Kategorie produktu</strong> <ul> <li>Operační systém - zapněte, pokud je produkt operačním systémem.</li> </ul> </li> <li><strong>Přidat do standardní knihovny softwarových produktů</strong>- ponechte zapnuto, pokud chcete produkt přidat do standardní <a href="../../../../../alvao-asset-management/software-management/custom-swlib">knihovny softwarových produktů</a></li>. <li> <div class="caution"> <div class="icon"></div><div class="title">Upozornění:</div> </div> </li>Aby mohly být <li> <div class="caution">požadavky odesílány, musíte v nastavení Kolektoru povolit odesílání požadavků. </div>
  
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka</div>: Proces přidávání začíná vygenerovaným požadavkem na přidání nového produktu do standardní knihovny softwarových produktů. Požadavek odešle Collector přes internet pracovníkům knihovny softwarových produktů. Jakmile je tento nový produkt přidán do standardní knihovny, je uživatelský produkt nahrazen novým produktem ze standardní knihovny.<br/>Tato funkce je užitečná například v případě, že máte licenci na produkt, který není ve standardní knihovně, a potřebujete jej zapsat do systému. Stačí vytvořit vlastní produkt a pak jej normálně používat. Po vytvoření produktu ve standardní knihovně bude automaticky spárován a nahrazen novým produktem ze standardní knihovny. </div> </li> 
 
	</ul>
</asp:Content>

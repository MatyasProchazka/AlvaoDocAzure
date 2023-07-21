<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Upravit</h1>
<p>Nabídka Editace slouží k práci s databází, analytickým excelem a <a href="../../alvao-asset-management">správou majetku ALVAO</a>.</p>
<p>Funkce:</p>
	<ul>
 <li><strong>Vrátit poslední pohyb...</strong> - vrátit zpět poslední přesun objektu ve stromu.</li>
 <li><a href="edit/new-object">Nový objekt</a>- vytvoření nového <a href="../../alvao-asset-management/objects-and-properties">objektu</a> (jako podobjektu objektu vybraného ve stromu).</li>
 <li><a href="edit/new-computer">Nový počítač</a>- vytvoření nového počítače (jako podobjektu objektu vybraného ve stromu).</li>
 <li>
<a href="tools/lists/properties-definition">Nová vlastnost</a> - přidání nové <a href="../../alvao-asset-management/objects-and-properties">vlastnosti</a> k objektu vybranému ve stromu.</li>
 <li><a href="edit/note">Nová poznámka</a> - zápis nové poznámky do <a href="tab-view/diary">protokolu</a> objektu vybraného ve stromu.</li>
 <li>
<a href="tools/lists/documents/document">Nový dokument</a> - přidání nového <a href="../../alvao-asset-management/documents">dokumentu</a> k objektu vybranému ve stromu.</li>
 <li><strong>Vybrat vše</strong> - výběr všech položek zobrazených v tabulce.</li>
 <li><strong>Vyjmout</strong> - odstranění (zkopírování a odstranění z původního umístění) položky vybrané ve stromu.</li>
 <li><strong>Kopírovat</strong> - zkopíruje vybraný objekt ve stromu nebo položku vybranou v tabulce (například na kartě Vlastnosti).</li>
 <li><strong>Vložit</strong> - vložení položky ze schránky do stromu nebo do tabulky (například na kartě Vlastnosti).</li>
 <li><strong>Odstranit</strong> - odstranění (přesunutí do koše) vybrané položky ve <a href="object-tree">stromu</a> nebo v tabulce.</li>
 <li><a href="edit/object/choose-icon">Změnit ikonu</a>- změna ikony vybraného objektu ve stromu.</li>
 <li><a href="edit/object/general">Upravit</a> - úprava vybraného objektu ve stromu.</li>
 <li><a href="edit/find">Vyhledat</a> - vyhledávání ve Správě majetku.</li>
 <li><strong>Filtr</strong> - zobrazení/skrytí filtru v tabulce.</li>
	</ul>
</asp:Content>

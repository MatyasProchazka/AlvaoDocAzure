<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová číselná řada</h1>
<p>V tomto okně můžete definovat novou <a href="../../../../../alvao-asset-management/documents/sequences">číselnou posloupnost</a>. Poslední dvě možnosti se zobrazí pouze v případě, že jste vybrali řadu pro Vlastnost.</p>
<p>Volby:</p>
	<ul>
 <li><strong>Použít tuto posloupnost</strong> - zapněte, pokud chcete použít řadu pro automatické generování hodnot.</li>
 <li><strong>Typ posloupnosti</strong> - z nabídky vyberte, zda řada generuje hodnoty (vybráno níže) <a href="../../../../../alvao-asset-management/objects-and-properties#rep">vlastností objektů</a>, nebo čísla dokladů předávacích sestav (tj. <a href="../../../../../alvao-asset-management/implementation/customization/reports">Tiskové sestavy</a>).</li>
 <li><strong>Název řady</strong> - zadejte název číselné řady.</li>
 <li><strong>Předpona</strong> - zadejte textovou předponu, která se bude zobrazovat před automatickým číslem.</li>
 <li><strong>Další číslo</strong> - zadejte číslo, od kterého bude zahájeno automatické číslování řady. Číslo zadané do pole bude respektováno v zadaném formátu (i s nulami na začátku) - je možné např. generovat čísla: <em>IC0001ALVAO</em>, <em>IC0002ALVAO</em>, ... V případě &quot;přetečení&quot; čísla se jeho délka zvětší o jeden znak. Tím se naruší původní formátování - např. za <em>IC999ALVAO</em> bude následovat <em>IC1000ALVAO</em>.</li>
 <li><strong>Rozšíření</strong> - zadejte textovou příponu, která se bude zobrazovat za automatickým číslem.</li>
 <li><strong>Použití této řady pro generování hodnot vlastností:</strong>- z nabídky vyberte Vlastnost (typu Text), pro kterou bude tato řada generovat hodnoty.</li>
 <li><strong>Pro druhy objektů</strong> - do seznamu můžete vložit jeden nebo více druhů objektů. Řada pak bude generovat hodnoty vybrané vlastnosti pouze pro vybrané typy objektů. Pokud je seznam prázdný, bude hodnota vybrané vlastnosti generována pro všechny typy objektů. <br />Hodnoty do tohoto seznamu přidáte výběrem typu objektu v pravém vyhledávacím menu a stisknutím tlačítka <strong>&lt;&lt;Přidat</strong>. Pokud se vybraný typ objektu v seznamu ještě nenachází, bude do seznamu přidán. Přidáním <strong>&lt;všechny&gt;</strong>se ze seznamu odstraní všechny typy objektů (prázdný seznam se použije pro všechny typy objektů). <strong> Tlačítko</strong> můžete použít také k <strong> odstranění Odebrat</strong> - odstraní vybraný typ objektu ze seznamu.</li>
	</ul>

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 { color: blue; text-decoration: underline;}</style>

</asp:Content>


<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Majetek</h1>
<p>V tomto okně můžete zapsat nebo upravit nalezené údaje o majetku <a href="../../../../modules/alvao-inventory-audits/stocktaking">Inventura majetku</a>.</p>
	<ul>
 <li><strong>Druh objektu</strong> - zobrazí typ upravovaného objektu.</li>
 <li><strong>Název objektu</strong> - zobrazí název objektu ve stromu.</li>
 <li><strong>Druh majetku, Název majetku, Inventární číslo,</strong>...<a href="../../../../alvao-asset-management/objects-and-properties">(vlastnosti objektu</a>) <ul>
 <li><strong>Načtené (upravené) hodnoty</strong> - zadejte platné hodnoty vlastností objektu (majetku). Zobrazují se hodnoty zjištěné při inventarizaci.</li>
 <li><strong>Načtené (původní) hodnoty</strong> - zobrazí hodnoty vlastností objektu (majetku) zadané v záznamech před zahájením inventury.</li>
 </ul>
 </li>
 <li><strong>Datum kontroly majetku</strong> - zobrazte datum inventury.</li>
 <li><strong>Stav kontroly majetku</strong> - zobrazí výsledek inventury.</li>
 <li><strong>Uzamčeno pro editaci</strong> - zapněte, pokud chcete zabránit další editaci této položky inventury.</li>
 <li><strong>Předáno</strong> - volba je zapnuta, pokud byl majetek na základě zjištění předán jinému uživateli.</li>
 <li><strong>Zpracováno</strong> - zapněte, pokud již byla položka zpracována a zjištěné změny byly zaneseny do evidence. Pokud se tak již stalo, je volba povolena.</li>
 <li><strong>Poznámka</strong> - v případě potřeby přidejte libovolnou poznámku.</li>
	</ul>
</asp:Content>

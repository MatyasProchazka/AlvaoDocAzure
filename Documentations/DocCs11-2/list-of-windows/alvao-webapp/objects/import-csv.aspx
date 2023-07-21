<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Import CSV</h1>

<p>Tento formulář slouží k načtení objektů ze souboru CSV do stromu objektů. Strukturu vstupního souboru CSV naleznete v části <a href="../../../alvao-asset-management/import-export-data/import-util#csvstructure">ImportUtil</a>.</p>
<ul>
	<li><strong>Vstupní soubor</strong> - Vyberte vstupní soubor CSV z disku, ze kterého chcete načíst objekty. Nové objekty se vytvoří ve stromu objektů jako podobjekty pod aktuálně vybraným objektem ve stromu.</li>
	<li><strong>Druh objektu</strong> - pokud vstupní soubor neobsahuje sloupec <em>Třída</em> (nebo <em>Typ)</em>, vyberte typ objektů, které chcete vytvořit. Pokud vstupní soubor obsahuje sloupec <em>Class</em> (nebo <em>Species</em>), vyberte možnost <em>&lt;all in input file (vše ve vstupním souboru</em> )] nebo, pokud chcete ze souboru načíst pouze řádky pro určitý druh objektu, vyberte typ.</li>
	<li><strong>Klíčové sloupce</strong> - vyberte sloupce ve vstupním souboru, které jednoznačně identifikují objekty. Pokud ve stromu objektů již existuje objekt se stejnými hodnotami vlastností podle klíčových sloupců, nevytvoří se ve stromu nový objekt, ale pouze se aktualizují hodnoty ostatních načtených vlastností v existujícím objektu.</li>
	<li><strong>Rozšířené</strong><ul>
        <li><strong>Search Discarded Assets (Prohledat vyřazený majetek</strong> ) - pokud tuto možnost povolíte, budou při importu prohledána a aktualizována také objekty ve složce <a href="../../../alvao-asset-management/objects-and-properties/scrapped-asset">Discarded Assets (Vyřazená aktiva)</a>.</li>
        <li><strong>Formát sloupců s daty</strong> - formát data v textových řetězcích (např. dd/MM/rrrr). Pokud není zadán, formát se při načítání zjistí automaticky. Podrobný popis formátů naleznete v části <a href="https://msdn.microsoft.com/en-us/library/8kb3ddd4%28v=vs.110%29">Vlastní formátovací řetězce data a času</a><div class="note">
                <div class="icon">
                </div>
                <div class="title">
                    Poznámka:</div>
 Formáty data se řídí místním nastavením jazyka na serveru. 
            </div>
        </li>
        <li><strong>Oddělovač sloupců</strong> - zadejte oddělovač sloupců použitý v importovaném souboru CSV, např. čárka (,) nebo středník (;).</li>
        </ul>
    </li>
	<li><strong>Zkontrolovat</strong> - zkontrolujte obsah vstupního souboru. Případné nedostatky budou zapsány do formuláře.</li>
	<li><strong>Číst</strong> - načte objekty ze vstupního souboru do stromu objektů.</li>
</ul>
	

</asp:Content>

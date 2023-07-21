<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Nastavení automatického přidělování licencí</h1>
V tomto dialogovém okně můžete nastavit filtr pro zúžení množiny počítačů, kterým bude licence přidělena. <br/>
Filtr se nastavuje pomocí podmínek syntaxe SQL a musí mít následující formát:<br/><p>[@ObjectKind] | [@ObjectName] | [@ObjectPath] | [&lt;název vlastnosti objektu&gt;]&lt;operátor&gt;&lt;hodnota&gt;.</p>

<p>[@ObjectKind] - druh objektu<br/>[@ObjectName] - název objektu ve stromu<br/>[@ObjectPath] - cesta ve stromu (zadává se jako: objekt1/objekt2/...)<br/>[&lt;název vlastnosti objektu&gt;] - název libovolné vlastnosti objektu (i zděděné)</p>
  &lt;operator&gt; - Lze použít následující operátory SQL:<ul>
<li>= - rovná se</li>
<li>!=,&lt;&gt; - nerovná se </li>
<li>IN - určuje, zda se zadaná hodnota nachází v poddotazu/seznamu</li>
<li>LIKE - porovnávání řetězců s možností použití jednoduchých regulárních výrazů</li>
<li>NOT - negace operátoru - spojování s jiným operátorem (IN, LIKE)</li>
<li>IS NULL - hodnota je NULL - např. objekt nemá určitou vlastnost</li>
</ul>
&lt;hodnota&gt; - N'string', kde předpona N určuje, že řetězec je v kódování Unicode<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div><br/>
	Porovnávání hodnot může být citlivé na velikost písmen. <br/>
	Podmínky lze kombinovat pomocí operátorů AND a OR.</div>

Příklady filtrů:<ul>
<li><strong>[@ObjectKind] = N'Computer/Server'<br/></strong>Přiřazení licence pouze počítačům typu &quot;Computer/Server&quot;.</li>
<li><strong>[@ObjectPath] LIKE N'Organization/Brno%'<br/></strong> Přiřazení licence pouze v určité části stromu podle cesty ve stromu.</li>
<li>[<strong>Branch] IN (N'Praha',N'Brno')<br/></strong>Přidat pouze počítačům, které jsou v určitých větvích.</li>
<li><strong>ISNULL([Branch],'') != N'Ostrava'<br/></strong>Přidat ke všem počítačům, které nejsou ve větvi Ostrava. Poznámka: Pokud by nebyla použita funkce ISNULL, nebyly by zahrnuty počítače, které nejsou v žádné pobočce.</li>
<li>[<strong>Branch] IS NULL<br/></strong>Přidělujte pouze počítačům, které nejsou v žádné větvi.</li>
<li>[<strong>Location] NOT IN (N'IT Warehouse',N'Central Warehouse') AND [Software Responsible]=N'PC software managers'<br/></strong>Příklad filtru složeného z více podmínek - počítače, které nejsou v konkrétních skladech AND za software na počítači je zodpovědná skupina &quot;PC software managers&quot;.</li>
<li>[<strong>Location] NOT LIKE N'Stock%'<br/></strong>Všechny počítače, u nichž hodnota vlastnosti &quot;Location&quot; nezačíná slovem &quot;Warehouse&quot;.</li>
</ul>


</asp:Content>

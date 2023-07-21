<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Dotaz SQL</h1>
	<p>V tomto okně můžete spouštět <a href="../../../../alvao-asset-management/searching/database-sql">SQL dotazy nad databází Alvao</a>.</p>
  <p>Možnosti:</p>
	<ul>
 <li>Hlavní nabídka<ul>
  <li><strong>Soubor</strong><ul>
  <li><a href="query">Nový</a> - vytvoření nového SQL dotazu.</li>
  <li><strong>Otevřít</strong> - načtení SQL dotazu ze souboru na disku.</li>
  <li><strong>Uložit</strong> - uložení aktuálního SQL dotazu do souboru na disku.</li>
  <li>...</li>
  </ul>
  </li>
  <li><strong>Upravit</strong><ul>
  <li><a href="query">Upravit dotaz</a> - úprava aktuálního SQL dotazu.</li>
  <li>...</li>
  </ul>
  </li>
  <li><strong>Zobrazit</strong> - nabídka obsahuje příkazy pro <a href="../../../../alvao-asset-management/working-with-tables">práci s tabulkou</a> výsledku dotazu.</li>
  </ul>
  </li>
  <li><strong>Tabulka</strong> - tabulka výsledků provedeného dotazu SQL. Obsah tabulky lze dále <a href="../../../../alvao-asset-management/working-with-tables">upravovat</a>.</li>
	</ul>
	
 </asp:Content>

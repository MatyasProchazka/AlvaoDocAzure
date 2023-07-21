<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Zobrazit</h1>
<p>Výběr režimu zobrazení žádostí, tabulek a objektů správy aktiv:</p>

<ul>
	<li><strong>Požadavky</strong><ul>
			<li><strong>Zvýraznit nepřečtené požadavky v seznamech požadavků</strong> - vyberte, které nepřečtené požadavky chcete v seznamech požadavků zvýraznit. Nepřečtený požadavek je požadavek, který obsahuje novou událost nebo zprávu nebo je nově vytvořeným požadavkem<ul>
					<li><strong>Žádné</strong> - nebudou zvýrazněny žádné nepřečtené požadavky. </li>
					<li><strong>Relevantní pro mě</strong> - zvýrazněny budou všechny nepřečtené požadavky, které se vás nějakým způsobem týkají, tj<ul>
							<li>jste hlavním řešitelem ve službě požadavků nebo jste aktuálně řešitelem požadavku (tj. ve sloupci <em>K řešení</em> je <em>Ano</em>).</li>
							<li>jste zadavatelem požadavku nebo účastníkem požadavku.</li>
							<li>sledujete požadavek (tj. ve sloupci <em>Sledujete požadavek</em> je hodnota <em>Ano</em>).</li>
							<li>jste aktuálně schvalovatelem požadavku (tj. hodnota ve sloupci Ke schválení je <em>Ano</em>).</li>
						</ul>
					</li>
					<li><strong>Všechny</strong> - zvýrazní se všechny nepřečtené požadavky.</li>
				</ul>
			</li>
			<li><strong>Podrobné dlaždice</strong> - tuto možnost povolte, pokud chcete v dlaždicích zobrazit také podrobnější informace o požadavku.   Dlaždice pak navíc zobrazí hodnoty z několika prvních sloupců tabulky (v závislosti na nastavení zobrazení v režimu <a href="../requests/table-of-requests">Zobrazení tabulky</a> ).</li>
			<li><strong>Zobrazit vybrané požadavky</strong> - vyberte, ve které části stránky <a href="../../../list-of-windows/alvao-webapp/requests">Požadavky</a> chcete zobrazit podrobnosti o aktuálně vybraném požadavku.</li>
		</ul>
	</li>
	<li><strong>Tabulky</strong> - vyberte velikost písma v tabulkách. Pomocí možnosti <em>Zobrazit řádky mezi řádky</em> rozdělte řádky.</li>
	<li><strong>Můj svěřený majetek</strong> - vyberte režim zobrazení objektů na stránce <a href="../my-asset">Můj svěřený majetek</a>.</li>
</ul>

</asp:Content>

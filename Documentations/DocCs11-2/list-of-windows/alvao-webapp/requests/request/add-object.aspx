<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přidat objekt</h1>
  <p>V tomto okně můžete na <a href="../request">záložce Objekty</a> vybrat <a href="../../../../alvao-asset-management/objects-and-properties">objekt</a> ze ALVAO Asset Management, který chcete přidat do vybraného požadavku.</p>
  <p>Volby: V nabídce se zobrazí položka Objekt:</p>

	<ul>
  <li><strong>Objekt</strong> - z rozbalovací nabídky vyberte objekt, kterého se požadavek týká. Ve výchozím nastavení nabídka obsahuje majetek svěřený Zadavateli požadavku. Pokud chcete vybrat jiný objekt, zadejte do vstupního řádku část jeho názvu nebo sériové, inventární či evidenční číslo. Můžete také zadat typ objektu, např. zadáním &quot;monitor: dell&quot; můžete vyhledat všechny objekty typu <em>Monitor</em>, jejichž název začíná řetězcem <em>dell</em>.<ul>
  <li><strong>...</strong> - vyhledejte objekt a vyberte jej ve stromu objektů.</li>
  </ul>
  </li>
	</ul>
	

</asp:Content>

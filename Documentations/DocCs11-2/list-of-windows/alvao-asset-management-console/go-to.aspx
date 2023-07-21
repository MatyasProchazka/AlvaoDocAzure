<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přejít</h1>
<p>Pomocí nabídky Přejít je možné se snadněji pohybovat ve <a href="object-tree">stromu</a>, tj. v hierarchii objektů.</p>
<p>Volby: V nabídce je možné vybrat si z následujících možností: 1:</p>
	<ul>
 <li><strong>Zpět</strong> - výběr objektu, který byl vybrán před aktuálně vybraným objektem.</li>
 <li><strong>Další</strong> - výběr objektu, který byl vybrán před použitím možnosti <strong>Zpět</strong>.</li>
 <li><strong>O úroveň výš</strong> - výběr objektu, který je ve stromu výše než vybraný objekt.</li>
 <li><strong>Na nadřazený objekt</strong> - přesun na nadřazený <a href="../../alvao-asset-management/objects-and-properties">objekt vybrané vlastnosti</a>. Nadřazený objekt je vybrán ve stromu objektů a vlastnost je vybrána na kartě <strong>Vlastnosti</strong> <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Tato volba je k dispozici pouze v případě, že je vybrána vlastnost, která je zděděná po nadřazeném objektu.<br/><em>Nadřazený objekt</em> je objekt s původní vlastností. Je to první výskyt vlastnosti, od kterého podřazené objekty vlastnost dědí. Vlastnost lze na tomto místě upravit. </div>
</li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Zabezpečení objektu - Oprávnění</h1>
<p>Okno umožňuje nastavit uživatelská oprávnění k <a href="../../../../../alvao-asset-management/objects-and-properties">objektu</a>. Objekty jsou spravovány v systému <a href="../../../../../alvao-asset-management">ALVAO Asset Management</a><br/></p>
<p>Možnosti: V nabídce jsou uvedeny možnosti, které lze použít k nastavení oprávnění:</p>
	<ul>
 <li><strong>Uživatel/skupina</strong> - vyberte uživatele nebo skupinu, pro kterou chcete nastavit oprávnění.</li>
 <li><a href="securityobject-authorization/select-object">Objekt</a> - vyberte konkrétní objekt. Nastavená oprávnění budou omezena na vybraný objekt a případně na všechny jeho podřazené objekty.</li>
 <li><strong>Včetně podřízených objektů</strong> - povolte, pokud chcete nastavit oprávnění pro <a href="../../../../../alvao-asset-management/glossary">podřazené objekty</a> vybraného objektu.</li>
 <li><strong>Objects of the kind</strong> - vyberte ze seznamu <a href="../../../../../alvao-asset-management/objects-and-properties">typ objektu</a>, pro který chcete nastavit oprávnění.</li>
 <li><strong>Oprávnění</strong> - viz <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">Zabezpečení objektu</a>.</li>
	</ul>

</asp:Content>

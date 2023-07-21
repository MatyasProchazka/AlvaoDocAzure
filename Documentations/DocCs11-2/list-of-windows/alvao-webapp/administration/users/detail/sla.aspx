<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SLA</h1>

<p>Toto okno slouží k přiřazení <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>a <a href="../../../../../alvao-service-desk/implementation/services">služeb</a> vybranému uživateli. Uživatel může zadávat požadavky pouze na služby, u kterých má přiřazenou alespoň jednu SLA. Přiřazením SLA ve službě se uživatel stává <a href="../../../../../alvao-service-desk/implementation/services/service-roles">žadatelem</a> v této službě.</p>

<p>Možnosti:</p>
	<ul>
 <li><strong>Příkazový panel</strong><ul>
  <li><a href="sla-sla">Přidat</a> - přidá do tabulky další SLA.</li>
  <li><strong>Odebrat</strong> - odebere vybrané SLA z tabulky.</li>
  </ul>
  </li>
  <li><strong>Tabulka</strong> - obsahuje kombinace <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>a <a href="../../../../../alvao-service-desk/implementation/services">služeb</a>, které jsou k dispozici vybranému uživateli. Obsah tabulky můžete <a href="../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
	</ul>

</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SLA</h1>
<p>Tato stránka slouží k přiřazení <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a> žadatelům o <a href="../../../../../../alvao-service-desk/implementation/services">upravovanou službu</a>. <br/>
  Uživatelé, kteří zde nemají přiřazeno SLA, nemohou zadávat požadavky na službu.</p>


<p>Možnosti:</p>
	<ul>
 <li><strong>Příkazový panel</strong><ul>
  <li><a href="sla-assignment">Přidat</a> - přidání SLA pro upravovanou službu.</li>
  <li><a href="rewrite-sla-authorization">Přepsat</a> - přepíše všechna nastavení SLA editované služby podle jiné služby.</li>
  <li><a href="sla-assignment">Upravit</a> - upraví vybraná oprávnění v tabulce.</li>
  <li><strong>Odebrat</strong> - odebrání vybraného oprávnění v tabulce.</li>
  </ul>
  </li>
  <li><strong>Tabulka</strong> - tabulka obsahuje seznam uživatelů a skupin uživatelů a jim přiřazených SLA. Tabulku lze <a href="../../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
 
 
	</ul>
</asp:Content>

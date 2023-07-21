<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Služba</h1>
 <p>Na této stránce, resp. panelu, můžete zobrazit informace o vybrané <a href="../../../../../alvao-service-desk/implementation/services">službě</a>. Informace zobrazené v jednotlivých blocích můžete upravit pomocí příkazu <em>Upravit</em> v daném bloku.</p>

	<p>Možnosti: V nabídce jsou možnosti, které můžete použít pro výběr služby:</p>
  


	<ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../service">Služby</a>.</li>
  <li>Blok <ul>
  <li><a href="detail/edit">Vlastnosti</a> - základní informace o službě a její nastavení.</li>
  <li><a href="detail/new-ticket-items">Formulář pro nový požadavek</a> - rozložení formuláře pro nový požadavek.</li>
  <li><a href="detail/authorization">Oprávnění</a> - oprávnění pro uživatele a skupiny v této službě.</li>
  <li><a href="detail/sla">SLA</a> - SLA přiřazené uživatelům a skupinám pro vyžádání přístupu k této službě. </li>
  </ul>
  </li>
 
</ul>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 { color: #0072BC;}</style>

</asp:Content>


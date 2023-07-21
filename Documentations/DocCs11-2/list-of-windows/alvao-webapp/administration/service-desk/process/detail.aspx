<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Proces</h1>

<p>Na této stránce nebo panelu můžete zobrazit informace o vybraném <a href="../../../../../alvao-service-desk/implementation/services/processes">procesu</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>
<p>Možnosti: V nabídce jsou možnosti, které můžete použít, abyste se dostali do kontaktu s procesem:</p>
  <ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../process">Procesy</a> </li>
  <li>Blok <ul>
  <li><strong>Název</strong> - <a href="detail/edit">obecné informace o</a> procesu.</li>
  <li><a href="detail/request-items">Položky požadavku</a> - všechny požadavky ve službách využívajících tento proces mají tyto datové položky.</li>
  <li><a href="detail/workflow">Řešení procesu</a> - definuje stavy požadavků a přechody mezi nimi.</li>
  </ul>
  </li>
	</ul>

</asp:Content>

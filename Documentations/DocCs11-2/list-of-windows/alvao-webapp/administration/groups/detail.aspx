<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Skupina</h1>

<p>Na této stránce nebo panelu se zobrazují informace o vybrané skupině. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>

<p>Volby: 1. Vložte do skupiny, která se nachází v bloku:</p>

<ul>
	<li><a href="detail/edit">Vlastnosti</a> - obecné informace o skupině.</li>
	<li><a href="detail/members">Členové</a> - seznam <a href="../../../../alvao-asset-management/implementation/users">uživatelů</a> a skupin, kteří patří do vybrané skupiny.</li>
  <li><a href="detail/membership">Členství ve skupinách</a> - zobrazí skupiny, jejichž členem je vybraná skupina.</li>
  <li><a href="detail/group-rights">Oprávnění</a> - oprávnění členů vybrané skupiny v systému ALVAO Service Desk.</li>
  <li><a href="detail/sla">SLA</a> - SLA přidělené členům vybrané skupiny pro žadatelský přístup ke službám v ALVAO Service Desk. </li>
	<li><a href="detail/security-object">Zabezpečení objektů</a> - seznam objektů v ALVAO Asset Management, ke kterým mají členové skupiny oprávnění.</li>
  <li><strong>Datové dotazy</strong> - seznam <a href="../data-queries">datových dotazů</a> přístupných členům skupiny.</li>

</ul>

<div class="tip">
  <div class="icon">
  </div>
  <div class="title">
  Tip: V případě, že se jedná o aplikaci ALVA, můžete si vybrat, zda je možné ji použít:</div>
  Informace o tom, proč a jak přidávat skupiny do skupin, najdete v části <a href="../../../../alvao-service-desk/implementation/users/my-team">Můj tým</a>.</div>
  

</asp:Content>

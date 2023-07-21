<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přidat odkaz</h1>
<p>Toto okno slouží k úpravě nebo vytvoření nového <a href="../../alvao-asset-management/software-management/licenses-links">propojení mezi dvěma licencemi</a>.<br/>První licence je již předvyplněna a nelze ji měnit (jedná se o licenci, kterou právě upravujete), takže vyberete druhou licenci a odkaz, kterým chcete obě licence propojit.</p>
<p>Volby: Vyberte licenci, kterou chcete používat, a zvolte, zda ji chcete používat:</p>
<ul>
	<li><strong>Licence</strong> - právě upravovaná licence.</li>
	<li><strong>Typ odkazu</strong> - vyberte <a href="../../alvao-asset-management/software-management/licenses-links#link_type"> z nabídky typ vazby</a>.</li>
	<li><strong>Licence</strong> - z nabídky vyberte licenci. <ul>
  <li><a href="software/license-registry">...</a> - nebo vyberte licenci z rejstříku licencí.</li>
 </ul>
	</li>
</ul>

</asp:Content>

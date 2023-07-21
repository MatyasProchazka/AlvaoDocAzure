<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Příkaz</h1>
<p>Možnosti:</p>
	<ul>
 <li><strong>Název</strong> - zadejte název, pod kterým se bude příkaz zobrazovat v nabídce.</li>
 <li><strong>Skupina</strong> - zadejte název skupiny, do které příkaz patří. V nabídce jsou příkazy řazeny podle <strong></strong>Skupiny</strong> a ve skupině abecedně podle <strong>Názvu</strong>.</li>
 <li><strong>Příkaz</strong> - zadejte <a href="../../../../alvao-asset-management/implementation/commands">příkaz, který</a> se má provést.</li>
 <li><strong>Vložit proměnnou</strong> - v případě potřeby vložte do příkazu proměnnou nebo hodnotu vlastnosti objektu. Podrobnější popis proměnných najdete v části <a href="../../../../alvao-asset-management/implementation/commands">Příkazy</a>.</li>
 <li><strong>Spustit v adresáři</strong> - zadejte adresář, ve kterém bude příkaz spuštěn. V adresáři můžete použít proměnné operačního systému. Například <span class="console">%ProgramFiles%</span>.</li>
	</ul>
</asp:Content>

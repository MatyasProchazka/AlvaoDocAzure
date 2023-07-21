<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová hodnota</h1>
<p>Toto okno slouží k vytvoření jedné hodnoty v seznamu hodnot <a href="../../../../../alvao-service-desk/implementation/custom-items">vlastních polí</a>.</p>
	<ul>
 <li><strong>Hodnota</strong> - zadejte hodnotu.</li>
 <li><strong>Pořadí</strong> - zadejte číslované pořadí hodnoty. Hodnoty se v seznamu zobrazují ve vzestupném pořadí.</li>
 <li><strong>Extra1</strong> - toto pole je určeno pro použití v rozšířeních softwaru systému Alvao. Jinak se nedoporučuje jej používat.</li>
  <li><strong>Service (Služba)</strong> - toto pole je k dispozici pouze pro vlastní hodnoty položky požadavku, slouží pro zpětnou kompatibilitu a nedoporučuje se používat nově. Upravená hodnota seznamu hodnot se zobrazí v nabídce hodnot vlastního pole pouze v požadavcích, které jsou ve vybrané službě.</li>
 
	</ul>

</asp:Content>

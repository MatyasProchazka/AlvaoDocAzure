<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Zrušení platnosti licence - licence</h1>
<p>V tomto okně můžete zrušit platnost licence registrované v <a href="../../../../../alvao-asset-management/software-management/licenses">registru licencí</a>. Vybrané licence se zneplatní například při jejich prodeji.</p>
<p>Volby:</p>
	<ul>
 <li><strong>Datum</strong> - zadejte datum, od kterého je licence zneplatněna. Změna se však v počtu licencí projeví okamžitě bez ohledu na zadané datum. Proto doporučujeme zadávat zneplatnění licencí v registru až v okamžiku, kdy k němu došlo.</li>
 <li><strong>Počet licencí ke zneplatnění</strong> - zadejte počet licencí, které chcete zrušit (zneplatnit).</li>
 <li><strong>Maximální počet licencí, které lze zneplatnit</strong> - zobrazte celkový počet platných licencí, které lze zneplatnit.</li>
 <li><strong>Vybrat položky licencí, které chcete zrušit</strong>- vyberte položky, které chcete zrušit.</li>
 <li><strong>Poznámka</strong> - zadejte poznámku ke zrušení licence.</li>
	</ul>
</asp:Content>

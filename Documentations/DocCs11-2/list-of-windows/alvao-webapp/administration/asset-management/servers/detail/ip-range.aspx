<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Rozsah IP adres</h1>
<p>Toto okno slouží k nastavení rozsahu IP adres, ve kterém budou vyhledávány nové počítače v síti.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>IP od</strong> - zadejte počáteční adresu rozsahu.</li>
 <li><strong>IP do</strong> - zadejte koncovou adresu rozsahu.</li>
 <li><strong>Jedna IP adresa</strong> - vyberte, pokud nechcete zadat rozsah, ale pouze jednu konkrétní IP adresu.</li>
 <li><strong>Collector Name</strong> - vyberte název serveru, který bude tento rozsah prohledávat.</li>
 <li><strong>Scan every __ h</strong> - zadejte dobu v hodinách, po které má server začít znovu skenovat tento rozsah.</li>
	</ul>
</asp:Content>


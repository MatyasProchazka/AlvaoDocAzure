<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Rozsah IP adres</h1>
<p>Toto okno slouží k vytvoření nebo úpravě rozsahu IP adres počítačů, pro které bude při přihlašování do webové aplikace ALVAO povoleno integrované ověřování uživatelů.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Od</strong> - zadejte první (počáteční) adresu rozsahu.</li>
 <li><strong>Do</strong> - zadejte poslední (koncovou) adresu rozsahu.</li>
 <li><strong>Jedna IP adresa</strong> - povolte, pokud nechcete zadat rozsah, ale pouze jednu konkrétní IP adresu. Místo polí <em>Od</em> a <em>Do</em> se zobrazí pole <strong>IP adresa</strong>.</li>
	</ul>
</asp:Content>

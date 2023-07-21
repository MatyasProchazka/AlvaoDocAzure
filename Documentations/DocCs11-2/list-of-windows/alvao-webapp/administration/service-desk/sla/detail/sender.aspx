<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Odesílatel</h1>
<p>V tomto okně můžete nastavit e-mailovou adresu, ze které budou zasílána souhrnná oznámení SLA. Toto nastavení je společné pro všechna pravidla SLA.</p>
	<ul>
 <li><strong>E-mail pro zasílání souhrnných upozornění</strong> - Zadejte e-mailovou adresu, ze které budou upozornění zasílána.<br />
  Například: <span class="console">ALVAO &lt;alvao@domain.com&gt;</span><br />
     <p>Doporučujeme zadat stávající schránku služby, která se používá pro <a href="../../service/loading-messages">příjem zpráv do Service Desku</a>.</p>
<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	SMTP server používaný k odesílání zpráv (viz <em>Správa - Správa - Nastavení -</em><a href="../../../settings/messaging">Odesílání zpráv</a>) musí být autorizován k odesílání zpráv z této adresy se zadanými pověřeními.</div></li>
	</ul>
	

</asp:Content>

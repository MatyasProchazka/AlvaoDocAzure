<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová organizace</h1>
<p>Pomocí tohoto formuláře můžete vytvořit novou <a href="../../../../alvao-service-desk/implementation/users/companies">organizaci</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Název -</strong> zadejte název organizace.</li>
  <li><strong>IČO organizace</strong> - zadejte případně identifikační číslo organizace.</li>
  <li><strong>DIČ</strong> - zadejte DIČ organizace, pokud je to relevantní.</li>
 <li><strong>Kontaktní údaje</strong> - zadejte následující kontaktní údaje organizace, je-li to vhodné.  <ul>
 <li><strong>Telefon</strong></li>
 <li><strong>Telefon 2</strong></li>
 <li><strong>E-mail</strong></li>
 <li><strong>E-mail 2</strong></li>
 <li><strong>Fax</strong></li>
 <li><strong>Web</strong></li>
 <li><strong>Adresa</strong> - pro zadání adresy použijte odkaz <a href="address">Upravit</a>.</li>
 <li><strong>Adresa 2</strong> - pomocí odkazu <a href="address">Upravit</a> zadejte adresu.</li>
  </ul>
 </li>
 <li><strong>Ostatní</strong> - v případě potřeby vyplňte hodnoty dalších položek. Tento blok se ve formuláři zobrazí pouze v případě, že jsou pro organizaci definovány <a href="../../../../alvao-service-desk/implementation/custom-items">vlastní položky</a>.</li>

	</ul>
</asp:Content>

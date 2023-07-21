<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Organizace</h1>
<p>Na této kartě můžete vyplnit (upravit) kontaktní údaje organizace nebo společnosti.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Údaje o organizaci získané z <a href="../../../../../alvao-asset-management/software-management/custom-swlib">knihoven softwarových produktů</a>nelze upravovat</div>

<p>Možnosti: V nabídce jsou uvedeny možnosti, které se týkají organizace:</p>
	<ul>
 <li><strong>Název</strong> - zadejte jedinečný název společnosti/organizace.</li>
 <li><strong>Web (http://..</strong> ) - zadejte webovou adresu společnosti.</li>
 <li><strong>Phone (Telefon)</strong> - zadejte telefonní číslo společnosti.</li>
 <li><strong>Adresa</strong><ul>
 <li><strong>Street (Ulice)</strong> - zadejte adresu společnosti.</li>
 <li><strong>Město</strong> - zadejte město, ve kterém se společnost nachází.</li>
 <li><strong>PSČ</strong> - zadejte poštovní směrovací číslo společnosti.</li>
 <li><strong>Země</strong> - zadejte zemi, ve které se společnost nachází.</li>
  </ul>
 </li>
 <li><strong>Typ organizace</strong><ul>
 <li><strong>Publisher (Vydavatel)</strong> - povolte, pokud je společnost výrobcem softwaru.</li>
 <li><strong>Dodavatel</strong> - zapněte, pokud je společnost dodavatelem softwaru.</li>
  </ul>
 </li>
	</ul>
	

</asp:Content>

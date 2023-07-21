<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nové počítače</h1>
<p>V tomto okně můžete upřesnit svá zjištění a vytvořit nové počítače v síti.</p>
	<ul>
 <li><strong>Všechny okolní počítače</strong> - výběrem naleznete všechny nové počítače v síti a přidáte je do databáze.</li>
 <li><strong>Počítače v doméně/skupině</strong> - vyberte a zadejte název <strong>domény</strong> nebo <strong>pracovní skupiny</strong>, na kterou chcete omezit vyhledávání nových počítačů.</li>
 <li><strong>Prohledat rozsah IP adres</strong> - vyberte, pokud chcete vyhledat pouze počítače v určitém rozsahu IP adres. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div> Vyhledává se také počáteční a koncová IP adresa. </div>
  <ul>
 <li><strong>Počáteční adresa</strong> - zadejte první adresu intervalu.</li>
 <li><strong>Konečná adresa</strong> - zadejte poslední adresu intervalu.</li>
 <li><strong>Zapsat IP adresu do</strong> vlastnosti <strong>&quot;IP adresa</strong> &quot; - povolte, pokud se má nalezená IP adresa počítače uložit do <strong>IP adresy</strong> nově vytvořeného počítače. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br />
 IP adresa bude uložena pouze v případě, že šablona počítače obsahuje vlastnost <strong>IP adresa</strong>.</div></li>
 </ul></li>
 <li><strong>Počítače z adresáře Active Directory</strong> - Zaškrtněte, chcete-li najít všechny nové počítače ve složce v adresáři Microsoft Active Directory, a zadejte cestu <strong>LDAP</strong> k této složce. <ul>
 <li><strong>Prohledat podsložky</strong> - zapněte, pokud chcete vyhledávat nové počítače v celém podstromu zadané složky.</li>
 </ul></li>
	</ul>
</asp:Content>

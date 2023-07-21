<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení instalace</h1>
	
	<ul>
 <li><strong>Server SMTP</strong><br />Pokud nepoužíváte oznámení, můžete nastavení serveru SMTP přeskočit.  <ul>
 <li><strong>Server SMTP pro odesílání e-mailů a oznámení</strong> - zadejte název serveru SMTP. Například: smtp.company.com:25.</li>
 <li><strong>Použít SSL</strong> - zajišťuje šifrovanou komunikaci.</li>
 <li><strong>Přihlášení k serveru SMTP</strong><ul>
 <li><strong>Integrované ověřování systému Windows</strong>- možnost použít integrované ověřování systému Windows.</li>
 <li><strong>Uživatel</strong> - možnost zadat uživatelské jméno.</li>
 <li><strong>Heslo</strong> - možnost zadání uživatelského hesla.</li>
 </ul>
 </li>
 <li><strong>Adresa odesílatele zprávy</strong> - možnost zadat e-mailovou adresu odesílatele. Např: Viz také <em>Správa - Nastavení - </em><a href="../../alvao-webapp/administration/settings/messaging">Odesílání zpráv</a><em> - Odesílatel zpráv</em>.</li>
 <li><strong>E-mailová adresa pro testování spojení se serverem SMTP</strong> - možnost zadání e-mailové adresy pro testování spojení se serverem SMTP. Například: info@company.com.</li>
  </ul>
 </li>
 <li><strong>Ověřování služby Active Directory</strong><ul>
 <li><strong>Adresa serveru Active Directory pro ověřování uživatelů</strong> - možnost zadání adresy serveru Active Directory pro ověřování uživatelů. Například: LDAP://domainserver. Pokud chcete použít výchozí server AD, zadejte pouze "LDAP://"<div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud potřebujete použít LDAPS, musíte přidat název hostitele a port serveru AD. Např: "LDAP://domainserver<b>:636</b>"    </div>
 </li>
 <li><strong>Výchozí přihlašovací doména</strong> - Zadejte název výchozí přihlašovací domény. Například: company.local.</li>
  </ul>
 </li>
	</ul>
</asp:Content>

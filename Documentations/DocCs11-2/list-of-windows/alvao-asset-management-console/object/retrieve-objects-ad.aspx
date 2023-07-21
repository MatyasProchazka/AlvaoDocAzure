<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Načtení objektů ze služby Active Directory</h1>
<p>V tomto okně můžete načíst objekty ze služby Microsoft Active Directory (AD).</p>
	<ul>
 <li><strong>Cesta LDAP</strong> - Zadejte cestu ke složce Active Directory, ze které chcete načíst objekty.</li>
 <li><strong>Přihlášení</strong><ul>
 <li><strong>Use Windows Integrated Authentication (Použít integrované ověřování systému Windows</strong>) - Vyberte, zda se chcete do adresáře ActiveDirectory přihlásit pod aktuálně přihlášeným uživatelem systému Windows,</li>
 <li><strong>Použít jméno a heslo</strong> - vyberte, chcete-li se ke službě přihlásit pomocí jména a hesla, a vyplňte tyto údaje.</li>
  </ul>
 </li>
 <li><strong>Načíst objekty</strong> - povolte typy objektů, které chcete načíst:<ul>
 <li><strong>Počítač</strong> - třída AD: computer,</li>
 <li><strong>Uživatel</strong> - třída AD: uživatel,</li>
 <li><strong>Organizační jednotka</strong> - třída AD: organizationalUnit.</li>
 </ul>
 </li>
 <li><strong>Search in</strong> - vyberte úroveň vyhledávání ve stromu AD: <ul>
 <li><strong>Pouze v zadané cestě</strong> - vyhledávání objektů pouze v zadané cestě (složce).</li>
 <li><strong>Včetně podsložek</strong> - vyhledávání objektů v zadané cestě (složce) a ve všech podsložkách.</li>
  </ul>
 </li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
<p>Na této stránce můžete nastavit obecné parametry pro <a href="../../../../../alvao-service-desk">ALVAO Service Desk</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Výchozí metoda pro odesílání požadavků jménem jiného uživatele</strong> - vyberte hodnotu, která se při <a href="../../../../../alvao-service-desk/requests/new-request-manual">ručním zápisu požadavku</a> předvyplní ve formuláři <a href="../../../requests/new-request">Nový požadavek</a> v poli <em>Způsob odeslání požadavku</em> <div class="tooltip">
 <div class="icon"></div>
 <div class="title">Tip: V případě, že se jedná o požadavek, která byla podána na základě požadavku na zadání požadavku, je možné zvolit následující možnosti: - Zvolte, zda chcete zadat požadavek na zadání požadavku:</div>
 Pokud chcete, aby operátoři museli při psaní požadavku jménem uživatele vždy vybírat metodu podání požadavku, vyberte prázdnou hodnotu. </div>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Při psaní požadavku prostřednictvím <a href="../../../../../alvao-service-desk/requests/new-request-call-center">telefonní ústředny</a> je hodnota <em>telefon</em> předvyplněna bez ohledu na toto nastavení. </div>
 </li>
 <li><strong>Písmo textů v HTML</strong> - Pokud pro písemnou komunikaci používáte <a href="../../../../../alvao-service-desk/implementation/html-text-style">jednotný firemní styl</a>, zadejte definici písma ve formátu CSS. Například: <span class="console">font-size: 10pt; font-family: 'Segoe UI',Calibri,Tahoma; color: #000000</span></li>
<li> <strong>Zobrazit přítomnost uživatelů</strong> - zapnutím této možnosti zobrazíte ikonu označující aktuální přítomnost každého uživatele v aplikaci. Tato možnost je k dispozici pouze při <a href="../../../../../alvao-asset-management/implementation/users/authentication/aad">ověřování uživatelů Azure AD</a>.  </li>
</ul>

</asp:Content>

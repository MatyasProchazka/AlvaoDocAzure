<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Active Directory a Azure Active Directory</h1>
<p>Na této stránce můžete nastavit adresu serveru služby Active Directory a výchozí doménu pro generování tajného klíče potřebného k importu uživatelů ze služby Azure Active Directory.</p>
<p>Možnosti:</p>
	<ul>
		<li><strong>Active Directory</strong><ul>
				<li><strong>Active Directory Server</strong> - adresa serveru LDAP, na kterém se ověřují uživatelé importovaní ze služby Active Directory při formálním přihlašování do aplikací Alvao. Ve výchozím nastavení &quot;LDAP://&quot; se pro ověřování uživatelů automaticky použije kořenový řadič AD v síti. Pokud je tato hodnota prázdná, je ověřování prostřednictvím služby Active Directory zakázáno.</li>
				    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Pokud potřebujete použít LDAPS, musíte zadat hostitelské jméno a port serveru AD: "LDAP:<b>//&lt;název hostitele serveru AD&gt;:636</b>"           </div>
				<li><strong>Výchozí doména</strong> - zadejte název nejběžnější síťové domény ve vaší organizaci. Uživatelé z této domény se budou moci přihlašovat do aplikací Alvao svým uživatelským jménem bez názvu domény. Uživatelé z jiných domén budou muset zadat své uživatelské jméno včetně domény.</li>
			</ul>
		</li>
		<li><strong>Azure Active Directory</strong><ul>
				<li><strong>Generovat nový klíč</strong> - stiskněte, pokud chcete vygenerovat nový tajný klíč potřebný k <a href="../../../../alvao-asset-management/implementation/users/authentication/aad">importu uživatelů z Azure Active Directory</a>. Nový tajný klíč se okamžitě uloží do databáze a zneplatní předchozí klíč. </li>
			</ul>
		</li>
	</ul>

</asp:Content>

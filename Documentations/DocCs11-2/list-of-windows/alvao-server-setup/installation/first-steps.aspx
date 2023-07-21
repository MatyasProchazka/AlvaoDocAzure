<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>První kroky</h1>
	<ul>
 <li><strong>Import uživatelů ze služby Active Directory</strong><ul>
 <li><strong>Cesta LDAP</strong> - možnost zadání cesty LDAP. Například: LDAP://dc=company,dc=com    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud potřebujete použít LDAPS, musíte před zadáním variant přidat název hostitele a port serveru Active Directory. Například: "LDAP://domainserver<b>:636/dc=company</b>,dc=com"    </div>
 </li>
 <li><strong>Vytvořit naplánovanou úlohu pro pravidelný import uživatelů (1x/den</strong> ) - možnost naplánovat pravidelný import uživatelů 1x/den. Vytvořená úloha má název "ALVAO Import Users".</li>
 <li><strong>Další nastavení</strong><ul>
 <li><strong>Odebrat uživatele, kteří neexistují v AD</strong>- možnost odebrat uživatele, kteří neexistují v AD.</li>
 <li><strong>Šablona jména osoby</strong> - určuje, které atributy z AD budou použity pro sestavení jména osoby v systému ALVAO.</li>
 <li><strong>Atribut záznamu Active Directory</strong>- předdefinovaný výběr atributů. Vyberte atribut a kliknutím na tlačítko <strong>. vlož</strong> it jej vložte do horního řádku.</li>
 </ul>
 </li>
  </ul>
 </li>
 <li><strong>Import portrétů</strong><ul>
 <li><strong>Vytvoření naplánované úlohy pro pravidelný import portrétů ze složky (1x/den</strong> ) - možnost pravidelného importu portrétů. Vytvořená úloha má název "ALVAO Import portrétů".</li>
 <li><strong>Další nastavení</strong><ul>
 <li><strong>Cesta ke složce s portréty</strong> - možnost zadat cestu k portrétům.</li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>
</asp:Content>

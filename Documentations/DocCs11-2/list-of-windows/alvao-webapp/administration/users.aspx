<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Uživatelé</h1>
<p>Na této stránce můžete spravovat uživatele Alvao.</p>
<p>Možnosti:</p>
<ul>
	<li><strong>Příkazový panel</strong><ul>
  <li><strong>Nový uživatel</strong> - vytvoření <a href="users/create-user">nového uživatele</a>.</li>
  <li><strong>Upravit </strong>- úprava vlastností a oprávnění vybraného uživatele. Nabídka obsahuje stejné příkazy jako bloky v <a href="users/detail">panelu</a> vybraného uživatele vpravo.</li>
  <li><strong>Odstranit</strong> - odstranění vybraného uživatele.<br />
 Odstraněné uživatele pak můžete zobrazit v tabulce příkazem <a href="../../../alvao-asset-management/working-with-tables/removing-values">Zobrazit odstraněné</a> a případně obnovit příkazem <em>Obnovit skryté</em>.</li>
  <li><strong>Skrýt</strong> - skryje vybraného uživatele v nabídkách. Uživatelé se zapnutou volbou <em>Skrýt v nabídkách</em> se nadále zobrazují v tabulce uživatelů na této stránce. Stav této volby vidíte ve sloupci <em>Skrýt v nabídkách</em>, který můžete použít k filtrování a řazení uživatelů v tabulce. 
      Další informace naleznete v části <a href="users/create-user">Skrýt v nabídkách</a>.</li>
  <li><strong>Obnovit skryté</strong> - deaktivuje možnost <a href="users/create-user">Skrýt v nabídkách</a>. Tento příkaz je k dispozici pouze v případě, že je v tabulce vybrán skrytý uživatel.</li>
  <li><strong>.</strong>. <ul>
 <li><a href="users/detail/outofoffice">Nastavit osobu jako Out of office (nepřítomnou</a>) - nastaví nepřítomnost vybrané osoby.</li>
 <li><a href="users/detail/settings-profile">Nastavit profil</a> - přepíše profil zobrazení vybraného uživatele profilem zobrazení jiného uživatele.</li>
 <li><a href="users/detail/password">Změnit heslo</a> - nastaví vybranému uživateli heslo pro přihlášení do celého systému Alvao.</li>
 </ul>
  </li>
 </ul>
	</li>
	<li><strong>Tabulka uživatelů</strong> - obsahuje všechny uživatele systému Alvao a jejich vybrané atributy. Tabulku můžete <a href="../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
	<li><strong>Vybraný uživatel</strong> - po výběru uživatele v tabulce se vpravo zobrazí <a href="users/detail">panel s</a> informacemi o vybraném uživateli, o jeho oprávněních a dalších nastaveních.  V každém bloku panelu se zobrazí příkaz <em>Upravit</em>, který umožňuje upravit nastavení uživatele.</li>
</ul>
</asp:Content>

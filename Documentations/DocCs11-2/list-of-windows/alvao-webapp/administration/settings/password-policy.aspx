<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pravidla pro zadávání hesel</h1>
<p>Tato stránka slouží k nastavení zásad hesel pro uživatele, kteří nejsou členy služby Active Directory.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Složitost hesla</strong><ul>
  <li><strong>Minimální délka hesla (počet znaků</strong> ) - Určete, kolik znaků může mít nejkratší povolené heslo. <ul>
 <li>Povolený rozsah: 1: 0 - 14.</li>
 </ul>
  </li>
  <li><strong>Hesla musí splňovat požadavky na složitost</strong> - Tuto možnost povolte, pokud chcete, aby hesla musela splňovat následující požadavky: <ul>
 <li>Musí mít alespoň šest znaků.</li>
 <li>Musí obsahovat znaky alespoň ze tří z následujících skupin znaků:<ul>
  <li>velká písmena</li>
  <li>malá písmena</li>
  <li>číslice</li>
  <li>symboly (například !, $, #, %)</li>
  </ul>
  </li>
 <li>Nesmí obsahovat uživatelské jméno nebo zobrazované jméno uživatele.</li>
 </ul>
  </li>
 </ul>
 </li>
 <li><strong>Historie hesel</strong><ul>
 <li><strong>Minimální stáří hesla (dny</strong> ) - Zadejte minimální počet dní, které musí uplynout mezi změnami hesla. <ul>
 <li>Přípustný rozsah: 0 - 998.</li>
 </ul>
 </li>
 <li><strong>Maximální stáří hesla (dny)</strong> - Zadejte maximální stáří hesla ve dnech. Po uplynutí této doby bude muset uživatel heslo změnit. <ul>
 <li>Povolený rozsah: 0 - 999.</li>
 <li>hodnota 0 znamená, že hesla jsou platná neomezeně dlouho.</li>
 </ul>
 </li>
 <li><strong>Velikost historie hesel (číslo</strong> ) - zadejte počet hesel, která si systém bude zpětně pamatovat pro každého uživatele a nedovolí uživateli nastavit stejné heslo znovu.  
 <ul>
 <li>Povolený rozsah: 1: 0 - 24.</li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>
</asp:Content>

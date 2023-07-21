<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Integrované ověřování</h1>
<p>Na této stránce můžete zadat rozsahy IP adres počítačů, na kterých mají být uživatelé při přihlašování do webové aplikace ALVAO ověřováni integrovaným způsobem. Zadané rozsahy budou použity pouze při <a href="../../../../alvao-asset-management/implementation/installation/installation-server-manual">integrovaném ověřování Windows a při použití formulářů (současně)</a>.</p>

<p>Možnosti: V případě potřeby můžete zadat následující možnosti: 1:</p>
	<ul>
 <li><strong>Příkazový panel</strong><ul>
  <li><strong>Add (Přidat)</strong> - <a href="new-IP-range">přidání</a> nového rozsahu IP adres nebo jedné adresy.</li>
  <li><strong>Upravit</strong> - <a href="new-IP-range">úprava</a> vybraného rozsahu.</li>
  <li><strong>Odstranit</strong> - odstranění vybraného rozsahu.</li>
  </ul>
  </li>
  <li><strong>Tabulka rozsahů IP adres</strong> - zobrazí rozsahy IP adres pro integrované ověřování uživatelů.</li>
	</ul>

</asp:Content>

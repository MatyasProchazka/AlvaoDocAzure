<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Heslo</h1>
  V tomto okně můžete změnit heslo aktuálně přihlášeného uživatele<p>Možnosti:</p>
	<ul>
 <li><strong>Zadejte nové heslo</strong> - zadejte heslo, které budete používat pro přihlášení do celého systému Alvao.</li>
 <li><strong>Opakované zadání hesla pro ověření</strong> - opakované zadání stejného hesla (ochrana proti překlepům).</li>
</ul>

  <div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění: V případě, že se vám nepodařilo zadat heslo Alvao, zadejte heslo Alvao:</div>
	Tímto způsobem si mohou heslo změnit pouze uživatelé, kteří se přihlašují prostřednictvím formuláře (nikoli v Active Directory)</div>
<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:</div>
	Nové heslo musí odpovídat zásadám nastaveným v nabídce Správa webové aplikace - Nastavení - <a href="../../alvao-webapp/administration/settings/password-policy">Zásady hesel</a></div>
</asp:Content>

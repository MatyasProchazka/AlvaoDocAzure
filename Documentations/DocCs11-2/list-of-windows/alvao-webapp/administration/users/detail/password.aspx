<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Změna hesla</h1>

<p>Okno umožňuje nastavit heslo vybraného uživatele pro přihlášení do aplikací Alvao.</p>

<p>Možnosti:</p>
	<ul>
 <li><strong>Nové heslo</strong> - zadejte nové heslo.</li>
 <li><strong>Znovu zadat nové heslo</strong> - zadejte nové heslo znovu pro kontrolu.</li>
	</ul>

<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění: V případě, že chcete zadat nové heslo, můžete jej zadat do systému:</div>
	Nové heslo musí odpovídat zásadám nastaveným v <em>aplikaci ALVAO WebApp - Administration - Settings</em>- <a href="../../settings/password-policy">Password Policies</a></div>

<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div><br/>
	Heslo si mohou změnit pouze uživatelé, kteří byli vytvořeni v systému Alvao.  Uživatelé, kteří byli do Alvao načteni z Active Directory (AD), nemají v Alvao uloženo své heslo.  Své heslo zadávají z AD během ověřování formuláře.</div>

</asp:Content>

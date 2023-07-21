<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Heslo</h1>
<p>V tomto okně můžete změnit heslo aktuálně přihlášeného uživatele. Následuje <a href="password-new">zadání nového hesla</a>.</p>
<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:</div>
	Tímto způsobem mohou heslo změnit pouze uživatelé, kteří se přihlašují prostřednictvím formuláře (nikoli v Active Directory)</div>

<p>Možnosti: V nabídce je možné zadat heslo, které je v seznamu přihlášených uživatelů:</p>
	<ul>
 <li><a href="password-new">Zadejte aktuální heslo</a>- Zadejte heslo, které jste použili při přihlášení do konzoly AM.</li>
	</ul>

</asp:Content>

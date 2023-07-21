<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Média</h1>
<p>Tabulka obsahuje knihovnu instalačních <a href="../../../../alvao-asset-management/software-management/licenses#media">médií</a> a dokumentaci související s registrovaným hardwarem nebo softwarem.</p>
<p>Možnosti:</p>
	<ul>
 <li><a href="media/medium-edit">Nové</a> - přidání nových médií do knihovny.</li>
 <li><a href="media/medium-edit">Upravit</a> - úprava vybraných médií.</li>
 <li><strong>Odstranit</strong> - odstranění vybraných médií z knihovny.</li>
 <li><strong>Půjčit/vrátit</strong> - půjčení vybraného média uživateli nebo naopak vrácení vypůjčeného vybraného média do knihovny. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Historie výpůjček se ukládá do uživatelského protokolu. Získáte tak přehled o tom, která média má který uživatel v držení a zda byla vrácena.  </div>
 </li>
	</ul>
</asp:Content>


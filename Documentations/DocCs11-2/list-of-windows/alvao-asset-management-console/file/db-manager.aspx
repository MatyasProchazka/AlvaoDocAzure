<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Správce databáze</h1>
<p>V tomto okně se zobrazí seznam databází, které byly otevřeny v minulosti. Všechna zaznamenaná data jsou uložena v databázi.</p>


<p>Volby: V nabídce je možné zobrazit databázi, která je v databázi uložena:</p>
	<ul>
 <li><a href="open-existing-database">Přidat</a> - přidání do seznamu a připojení k jiné databázi.</li>
 <li><a href="db-modify">Upravit</a> - úprava údajů o vybrané databázi.</li>
 <li><strong>Odebrat</strong> - odstranění vybraného připojení k databázi ze seznamu.</li>
 <li><strong>Otevřít</strong> - otevření vybrané databáze.</li>
	</ul>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Podrobnější informace o připojení k <a href="../../../alvao-asset-management/implementation/architecture">databázi</a> získáte od správce.</div>
</asp:Content>

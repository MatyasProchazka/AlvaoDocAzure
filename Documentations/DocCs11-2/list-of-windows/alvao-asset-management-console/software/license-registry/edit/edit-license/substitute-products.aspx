<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Náhradní produkty</h1>
<p>V tabulce jsou uvedeny produkty, na které se licence může vztahovat. V těchto případech se licence čerpá tak, že primárně pokrývá produkt uvedený v licenci a zbývající volné licence se použijí na pokrytí náhradních produktů. Pořadí, v jakém jsou náhradní produkty pokryty, nelze nastavit. </p>
<p>Možnosti: V případě, že se jedná o licenci, která se vztahuje na produkty, které jsou předmětem licence, je možné ji použít:</p>
	<ul>
 <li><a href="../../../products">Přidat</a>- přidání produktů do seznamu.</li>
 <li><strong>Upravit</strong> - upraví popis vybraného produktu.</li>
 <li><strong>Odebrat</strong> - odebere vybraný produkt ze seznamu.</li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Změna množství</h1>
	<p>V tomto okně můžete změnit vlastnost <em>Množství</em> u objektů, které tuto vlastnost mají. Jedná se o správce spotřebního materiálu, který se používá pro výdej a příjem skladových materiálů.</p>
<p>Možnosti: V nabídce je možné nastavit, zda se jedná o zásoby, které se mají skladovat:</p>
	<ul>
 <li><strong>Příjem/výdej</strong> - vyberte, zda byl výrobek vydán nebo přidán.</li>
 <li><strong>Množství</strong> - zadejte množství spotřebního materiálu, který má být vydán nebo přijat.</li>
 <li><strong>Od koho/kým</strong> - vyberte uživatele, který spotřební materiál přidal nebo odebral z nabídky. Operace výdeje a příjmu se zaznamená do <strong>deníku</strong> pro vybraného uživatele.</li>
	</ul>
</asp:Content>

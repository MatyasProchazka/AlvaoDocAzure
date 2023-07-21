<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nový požadavek z e-mailu </h1>
	<ul>
 <li><strong>Žadatel</strong> - vyberte žadatele, pro kterého chcete vytvořit požadavek.</li>
 <li><strong>Neregistrovaný uživatel</strong> - pokud chcete vytvořit požadavek pro žadatele, který v SD neexistuje, vyberte tuto možnost a vyplňte kontaktní údaje žadatele.</li>
 <li><strong>Service (Služba)</strong> - vyberte službu, pro kterou má být požadavek vytvořena.</li>
 <li><strong>Název požadavku</strong> - zadejte název požadavku.</li>
 <li><strong>OK</strong> - poté stiskněte toto tlačítko pro vytvoření nové žádosti.</li>
	</ul>

<div class="note">
 <div class="icon"></div>
  <div class="title">Poznámky: V případě, že je požadavek podána na základě zákona o ochraně osobních údajů, je možné ji odeslat na adresu uvedenou v čl:</div>
 Pokud vybíráte požadavky z více zpráv, pole <strong>Request name (Název požadavku)</strong> se nezobrazí a vedle zadavatele požadavku se zobrazí možnost <strong>Message sender (Odesílatel zprávy)</strong>.<br />
 Možnost <strong>Message sender (Odesílatel zprávy)</strong> vyberte, pokud chcete jako zadavatele požadavku vybrat odesílatele zprávy.<br />
  </div>

</asp:Content>

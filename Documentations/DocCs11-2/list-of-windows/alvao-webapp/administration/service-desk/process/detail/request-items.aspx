<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Položky požadavku</h1>
<p>V tomto okně můžete do požadavků přidat další datová pole, která jsou řízena upravovaným procesem. Zde jsou uvedena datová pole všech požadavků ve všech službách, které využívají upravovaný proces.</p>
  <p>Datová pole zde uvedená jsou <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">členům řešitelských týmů</a> těchto služeb, včetně výjimečných řešitelů a čtenářů, automaticky zobrazena v požadavku na kartě <em>Obecné</em> a také ve formulářích <em>Nový požadavek</em> a <em>Upravit</em> (požadavek).</p>

<p>Možnosti: V případě, že se jedná o požadavek na vyřešení problému, je možné jej vyřešit pomocí tzv:</p>
	<ul>
 <li><strong>Příkazový panel</strong><ul>
  <li><a href="request-item">Přidat</a> - přidání nového pole požadavku do procesu.</li>
  <li><strong>Odebrat</strong> - odebere vybrané pole z procesu.</li>
  </ul>
  </li>
  <li><strong>Tabulka položek</strong> - tabulka zobrazuje pole, která jsou aktuálně zahrnuta do procesu. Tabulku můžete <a href="../../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
	</ul>

<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	Pro každý stav pracovního postupu nastavte povinná pole, která musí být vyplněna, aby se požadavek mohl přesunout do tohoto stavu<em>(ALVAO WebApp - Administration - Service Desk - Processes - Process - solving process - Status - </em><a href="status-request/edit">Edit</a><em> - General - Required items</em>).</div>
</asp:Content>

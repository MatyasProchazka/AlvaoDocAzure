<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Požadavky na sloučení</h1>
<p>Pomocí tohoto formuláře můžete sloučit více <a href="../../../../alvao-service-desk/requests/duplicate-requests">duplicitních žádostí</a> do jedné.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Požadavky</strong> - zadejte číslo, značku nebo část názvu požadavku, který chcete sloučit, a poté vyberte požadavek z rozevírací nabídky. Tím se požadavek přidá do seznamu požadavků pod vstupním polem. <div class="caution">
 <div class="icon"></div>
  <div class="title">Upozornění:</div>
	  Všechny požadavky v tomto seznamu budou nenávratně odstraněny!  </div></li>

 <li><strong>Sloučit v požadavku -</strong> zadejte číslo, značku nebo část názvu požadavku, do kterého chcete sloučit všechny požadavky v horním seznamu. Do zadaného požadavku budou přeneseny následující informace ze všech požadavků v horním seznamu:<ul>
  <li>Záznamy o požadavcích</li>
  <li><a href="../../../../alvao-service-desk/requests/relations">Vazby na jiné požadavky</a></li>
  <li>Vazby na objekty</li>
  <li><a href="../../../../alvao-service-desk/requests/subscribers">Následovníci</a></li>
  </ul>
  <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	  Toto pole se automaticky vyplní požadavkem, nad kterým jste spustili příkaz <a href="../../requests">Sloučit požadavky</a>, nebo nejstarším z vybraných požadavků, pokud jich je více. Ostatní vybrané požadavky jsou uvedeny v horním seznamu.</div>
  </li>
	</ul>

  
</asp:Content>

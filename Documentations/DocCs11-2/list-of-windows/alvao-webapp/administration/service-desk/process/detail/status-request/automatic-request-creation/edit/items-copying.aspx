<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Zkopírované položky</h1>
  <p>V tomto okně vyberte pole zdrojového požadavku, jejichž hodnoty chcete zkopírovat do nově vytvořeného propojeného požadavku.</p>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
Pole se zobrazí pouze v případě, že byla přidána jak do služby procesu použité ve zdrojovém požadavku, tak do služby procesu, ze které je vytvořen nový propojený požadavek</div>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Hodnoty nevyplněných (prázdných) položek se nekopírují, i když jsou v tomto okně vybrány</div>

</asp:Content>

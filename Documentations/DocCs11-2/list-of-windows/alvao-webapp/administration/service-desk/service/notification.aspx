<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Oznámení</h1>
<p>Tato část formuláře <a href="create-service">Nová služba</a> slouží k nastavení automatických oznámení o vytvoření a průběhu požadavků na upravovanou službu.</p>

  <p>Možnosti:</p>
  <ul class="style1">
 <li><b>Oznámení pro řešitele</b></li>
 <li><strong>Oznámení žadateli</strong></li>
 <p>Další informace o typech oznámení naleznete na stránce <a href="../../../../../alvao-service-desk/implementation/services/notifications">Oznámení</a>.</p>
	
	<p>Nastavení má tři stavy:</p>
	<ul>
  <li><strong>Zapnuto</strong> - oznámení je odesláno.</li>
  <li><strong>Vypnuto</strong> - oznámení se neodesílá.</li>
  <li><strong>Nenastaveno</strong> - nastavení oznámení se řídí společným nastavením pro všechny služby, viz tabulka na stránce <a href="../../../../../alvao-service-desk/implementation/services/notifications">Oznámení</a>.</li>
  
 </ul>

 
 </ul>
  <ul class="style1">
	
	<p>Možnosti nastavení:</p>
 <ul>
  <li><strong>Odeslat standardní oznámení</strong> - je odesláno standardní systémové oznámení.</li>
  <li><strong>Odeslat vlastní oznámení</strong>- je odesláno vlastní oznámení. Definujte obsah vlastního oznámení pomocí tlačítka <em>Definovat</em>, které otevře <a href="../../../../../list-of-windows/alvao-webapp/administration/service-desk/service/message-template">šablonu zprávy</a>.</li>
 </ul>

  </ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Jednotliví uživatelé si mohou přizpůsobit nastavení oznámení, viz <a href="../../../../../alvao-service-desk/implementation/services/notifications">Oznámení</a>.</div>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 { margin-bottom: vpravo nahoře: 19px;}</style>

</asp:Content>


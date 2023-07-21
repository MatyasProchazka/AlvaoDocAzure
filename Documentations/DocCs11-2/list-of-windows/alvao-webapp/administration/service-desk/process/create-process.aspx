<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nový proces</h1>
<p>Toto okno slouží k vytvoření nového <a href="../../../../../alvao-service-desk/implementation/services/processes">procesu</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Název</strong> - zadejte název procesu. <div class="tooltip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Doporučujeme pojmenovat procesy názvem procesní entity (v jednotném čísle), kterou proces zpracovává, např.<em>"Incident</em>", "<em>Požadavek na změnu</em>" atd. Názvy procesů se uživatelům zobrazují v názvech oken <em>Nový požadavek</em> a <em>Upravit</em>(požadavek) </div></li>
 <li><strong>Popis</strong> - zadejte popis procesu.</li>
 <li><strong>Vliv na stav objektů</strong> - vyberte, jak požadavky ve službách s tímto procesem ovlivňují <a href="../../../../../modules/alvao-configuration-management/object-health">stav</a> objektů, které jsou s požadavky spojeny. Tato možnost je k dispozici pouze v případě, že je aktivován modul <a href="../../../../../modules/alvao-configuration-management">správy konfigurace ALVAO</a>.</li>
	</ul>




</asp:Content>

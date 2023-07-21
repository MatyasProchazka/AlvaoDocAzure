<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Webová aplikace</h1>

<p>Tato stránka slouží ke konfiguraci aplikace WebApp a jejího vzhledu.</p>

<p>Možnosti:</p>
	<ul>
 <li><strong>WebApp (URL</strong> ) - zadejte kořenovou adresu URL aplikace ALVAO WebApp.<br/><span class="console">Např</span>. http://app.company.com/alvao   <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Aplikace používají tuto kořenovou adresu při vytváření odkazů na aplikaci ALVAO WebApp. </div></li>

  <li><strong>Horní navigační panel</strong><ul>
  <li><strong>Logo image (Obrázek loga</strong> ) - náhled aktuálního obrázku loga <ul>
  <li><strong>Nahrát logo</strong> - výběr souboru s obrázkem loga na disku, který se má zobrazit v horním navigačním panelu aplikace.  Soubor musí být ve formátu png, jpg, jpeg nebo bmp. Maximální rozlišení obrázku je 200x30px.   
  </li>
  </ul>
  </li>
  </ul>
  </li>

  <li><strong>Hlavní stránka</strong> - nastavení obsahu <a href="../../main">Hlavní stránky</a><ul>
  <li><strong>Pozadí</strong> - náhled aktuálního obrázku na pozadí <ul>
  <li><strong>Změna pozadí</strong> - výběr souboru obrázku na disku, který se má zobrazit na pozadí <i>hlavní stránky</i>. Soubor musí být ve formátu png, jpg, jpeg nebo bmp. Doporučujeme zvolit obrázky o velikosti do 1 MB, aby obrázek nezpomaloval načítání hlavní stránky do webového prohlížeče.   Doporučený poměr šířky a výšky obrázku je 5:1. Na hlavní stránce se v závislosti na velikosti okna prohlížeče zobrazí co největší středový výřez obrázku.  </li>
  </ul>
  </li>
  <li><strong>Nastavit vazby </strong> - zobrazí stránku <i>Správa - Service Desk - <a href="../service-desk/service">Služby</a></i>, kde v katalogu služeb ve složce <i>Vazby na hlavní stránce</i> vytvoříte služby, které chcete zobrazit jako vazby  na hlavní stránce. </li>
  </ul>
  </li>
	
	</ul>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Ikony objektů</h1>
  <p>
      Na této stránce můžete spravovat ikony objektů a také ikony vlastností (které se zobrazují pouze v AM Console). Zatímco <a href="../../../../alvao-asset-management/webApp">webová aplikace</a> používá vektorové ikony ve formátu SVG, <a href="../../../../alvao-asset-management/console">AM Console</a> zobrazuje rastrové ikony ve formátu BMP. </p>
  <p>Volby: Vyberte ikony, které chcete zobrazit:</p>
  <ul>
  <li><b>Příkazový panel</b><ul>
  <li><b>Nová ikona</b> - vytvoření nové ikony. Nejprve připravte soubor ikony ve vektorovém formátu SVG. Můžete použít některou z volně dostupných ikon, např. z <a href="https://www.flaticon.com">adresy https://www.flaticon.com</a>, nebo si nakreslit vlastní ikonu v grafickém editoru, např. v programu <a href="https://inkscape.org/">INKSCAPE</a>. Poté pomocí tohoto příkazu nahrajte soubor do systému Alvao. Z vektorové ikony se automaticky vygeneruje její rastrová verze.  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Pokud chcete použít jinou než vygenerovanou rastrovou ikonu, vyberte při nahrávání soubory SVG i BMP. Pokud chcete použít pouze rastrovou ikonu, vyberte pouze soubor BMP. Webová aplikace pak zobrazí výchozí ikonu objektu. Rastrová ikona musí mít velikost 16x16 pixelů a barevnou hloubku 24 bitů. Bílá barva (R=255, G=255, B=255) je považována za průhlednou.  </div>
  </li>
  <li><b>Upravit</b> - upraví vybranou ikonu.</li>
  <li><b>Odstranit</b> - odstranění vybraných ikon. Odstranit lze pouze vlastní ikony, které se nepoužívají. Systémové ikony nelze odstranit.</li>
  <li><b>Stáhnout</b> - uloží vybrané ikony do souboru ZIP. Soubory s ikonami pak můžete upravit v grafickém editoru a pomocí příkazu <em>Upravit</em> je nahrát zpět do příslušných ikon v systému Alvao nebo je nahrát do jiné instance systému Alvao jako nové ikony pomocí příkazu <em>Nová ikona</em>.</li>
  </ul>
  </li>
  <li><b>Tabulka ikon</b> - obsahuje všechny ikony a jejich vybrané atributy. <a href="../../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
  </ul>

  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
      Ikony mohou být uloženy v paměti, a proto se změna nemusí projevit okamžitě. Pro aktualizaci je třeba AM Console restartovat.  </div>

</asp:Content>

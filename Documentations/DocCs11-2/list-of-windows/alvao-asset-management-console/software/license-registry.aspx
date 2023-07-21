<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Evidence licencí</h1>
<p>Toto okno zobrazuje všechny záznamy o nákupu nebo prodeji licencí a umožňuje s nimi pracovat. Další informace naleznete v části <a href="../../../alvao-asset-management/software-management/licenses">Evidence licencí</a>.</p>
<p>Možnosti:</p>
  <ul>
 <li><strong>Hlavní nabídka</strong>: <ul> <li><a href="license-registry/edit">Upravit</a></li> <li><a href="license-registry/view">Zobrazení</a></li> <li><a href="license-registry/tools">Nástroje</a></li></ul></li> <li> <strong>Filtry</strong><ul>
 
 <li><b>Počítač/uživatel</b> - pokud chcete, aby se v <em>Registru licencí</em> zobrazovaly pouze záznamy pro konkrétní počítač/uživatele, nastavte tento filtr.<ul>
  <li><b>Tlačítko &quot;.</b>..&quot; - otevře okno se seznamem počítačů a uživatelů, ve kterém můžete vybrat jeden filtrovaný objekt.</li>
  </ul>
  </li>
 <li><strong>Produkt</strong> - pokud chcete, aby se v <em>Auditu licencí</em> zobrazovaly pouze záznamy pro konkrétní produkt, nastavte jej na tento filtr.<ul>
  <li><b>Tlačítko &quot;.</b>..&quot; - otevře okno se seznamem produktů, ve kterém můžete vybrat jeden filtrovaný produkt.</li>
  </ul>
  </li>
  </ul>
  
 <li><strong>Licenční tabulka</strong> - tabulka obsahuje záznamy o nákupu nebo zrušení (např. prodeji) jednotlivých softwarových licencí. <li><img src="../../alvao-asset-management-console/LicIn.GIF" />Platná licence nebo <img src="../../alvao-asset-management-console/LicInInvalid.gif" />pro licenci, která je vydána pro produkt, který je v knihovně softwarových produktů neplatný.</li> <li><img src="../../alvao-asset-management-console/LicOut.GIF" />Zrušení nebo zneplatnění licence, např. prodej části licence, vyřazení počítače, darování počítače s OEM softwarem.   Tyto záznamy slouží k záznamu historie změn v registru licencí.</li> <li><img src="../../alvao-asset-management-console/LicInItem.GIF" /> Ikona pro platnou položku licence nebo <img src="../../alvao-asset-management-console/LicInItemInvalid.gif" />pro položku, která je vydána pro produkt, který je v knihovně softwarových produktů neplatný.</li> <li><img src="../../alvao-asset-management-console/LicOutItem.GIF" /> Ikona pro položku s neplatnou, odvolanou licencí</li></ul>
 </li>

  </ul>
  </li>


 </li>
 
 



</asp:Content>

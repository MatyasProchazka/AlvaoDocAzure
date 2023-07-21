<%@ Page masterpagefile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový detekční profil</h1>
  <p>Tento formulář slouží k vytvoření nového <a href="../../../../../alvao-asset-management/implementation/detection">detekčního profilu</a>.</p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Název profilu</strong> - zadejte název profilu.</li>
  <li><strong>Default Profile (Výchozí profil)</strong> - povolte, pokud má být profil brán jako výchozí pro nově přidané počítače.</li>
  <li><strong>Období automatického plánování detekce (dny</strong> ) - zadejte počet dní, po kterých se má automaticky provádět zjišťování. Hodnota 0 znamená, že plánování bude zakázáno a detekce se nebudou provádět opakovaně. </li>
  <li><strong>Použít stejnou metodu detekce pro detekci hardware a software</strong> - vyberte, zda chcete detekovat hardware a software stejným způsobem.  <ul>
  <li><strong>Způsob detekce</strong> - vyberte <a href="../../../../../alvao-asset-management/implementation/detection/detection-way">metodu detekce, kterou</a> chcete použít pro detekci počítačů.</li>
  <li><strong>Číslo portu agenta</strong> - pokud používáte metodu detekce <em>Agent přes TCP/IP</em>, zadejte číslo portu pro datovou komunikaci TCP/IP s agentem.</li>
  </ul>
  </li>
  <li><strong>Hardware</strong><ul>
  <li><strong>Detect Hardware (Zjistit hardware)</strong> - povolte, pokud chcete detekovat hardware počítače. </li>
  <li><strong>Aktualizovat objekty ve stromu</strong> - zapněte, pokud chcete automaticky aktualizovat objekty ve stromu podle výsledku detekce, viz <a href="../../../../../alvao-asset-management/implementation/detection">Detekce hardware</a>. </li>
  </ul>
  </li>
 <li><strong>Software</strong><ul>
  <li><strong>Detekovat software</strong> - zapněte, pokud chcete detekovat software počítače.   <ul>
  <li><strong>Normální (registr, služby a vybrané soubory</strong> ) - zvolte, pokud vám vyhovuje detekce SW pomocí normální detekce.   <div class="note">
  <div class="icon"></div>
   <div class="title">Poznámka:</div> <em>Normální</em> detekce zjišťuje údaje z registru systému Windows a údaje o souborech spouštěných z nabídky Start nebo z plochy. Tato možnost je rychlejší a v praxi obvykle plně vyhovuje.</div>
  </li>
  <li><strong>Kompletní (jako Normální a také všechny soubory na místních pevných discích</strong> ) - vyberte, pokud chcete detekovat SW s úplnou detekcí.  <ul>
  <li><strong>Zahrnout soubory</strong> - zadejte masku pro názvy složek a souborů, které mají být při detekci prohledávány. Chcete-li například vyhledávat pouze soubory s příponami exe a dll, zadejte masku "*.exe;*.dll". Ve výchozím nastavení se vyhledávají soubory s příponami exe a com. </li>
  <li><strong>Vynechat soubory</strong> - zadejte masku pro názvy složek a souborů, které mají být při detekci vynechány. Chcete-li například vynechat složku <em>System Volume Information</em>, zadejte "*\System Volume Information\*". Pokud si masky pro zahrnutí a vynechání souborů odporují, má přednost maska pro vynechání. </li>
  </ul>
  <div class="caution">
  <div class="icon"></div>
   <div class="title">Upozornění:</div> <em>Kompletní</em> detekce shromažďuje informace ze systémového registru systému Windows a informace o všech spustitelných souborech na pevných discích počítačů, což může být časově náročné.</div>
  </li>
  <li><strong>Aktualizovat instalační registr</strong> - tuto možnost povolte, pokud chcete, aby se informace o detekovaném softwaru automaticky zapisovaly do <em>instalačního protokolu</em>.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>
 
</asp:Content>

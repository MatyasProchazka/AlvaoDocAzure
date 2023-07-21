<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Oblast působnosti</h1>
<p>Na této kartě můžete zadat rozsah, ve kterém budou počítače zjišťovány.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Detekovat hardware</strong> - zapněte, pokud chcete detekovat hardware počítače.  <ul>
 <li><strong>Aktualizovat objekty ve stromu</strong> - zapněte, chcete-li automaticky zapisovat detekované hardwarové objekty do stromu objektů.</li>
  </ul>
 </li>
 <li><strong>Detekovat software</strong> - zapněte, pokud chcete detekovat software počítače.  <ul>
 <li><strong>Normální (registr, služby a vybrané soubory</strong> ) - zvolte, pokud vám vyhovuje detekce SW pomocí normální detekce. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 <em>Normální</em> detekce zjišťuje údaje z registru systému Windows a údaje o souborech spouštěných z nabídky <strong>Start</strong> nebo z plochy. Tato možnost je rychlejší a v praxi obvykle plně vyhovuje.</div></li>
 <li><strong>Úplná (registr a všechny soubory na místních pevných discích</strong> ) - vyberte, pokud chcete detekovat SW pomocí úplné detekce. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění: V případě, že se jedná o počítač, v němž je možné vyhledávat soubory, je možné zvolit tuto možnost:</div>
 Při <em>úplné</em> detekci se shromažďují údaje z registru systému Windows a údaje o všech spustitelných souborech na pevných discích počítačů, což může být časově náročné.</div></li>
 <li><strong>Zahrnout soubory</strong> - zadejte masku pro názvy složek a souborů, které mají být při detekci prohledávány. <br />Chcete-li například vyhledávat pouze soubory s příponou <em>exe</em> a <em>dll</em>, zadejte masku <em>&quot;*.exe;*.dll</em>&quot; <br />Ve výchozím nastavení se vyhledávají soubory s příponami <em>exe</em>, <em>com</em>, <em>dll</em>, <em>ocx</em>, <em>drv</em> a <em>scr</em></li>
 <li><strong>Vynechat soubory</strong> - zadejte masku pro názvy složek a souborů, které mají být při detekci vynechány. <br />Chcete-li například vynechat složku <em>System Volume Information</em>, zadejte <em>&quot;*\System Volume Information\*&quot;</em>. <br />
 Pokud jsou masky zahrnutí a vynechání souborů ve vzájemném rozporu, má přednost maska vynechání. </li>
 <li><strong>Aktualizovat protokol o instalaci</strong> - Povolte automatický zápis informací o nalezeném softwaru do protokolu o instalaci.</li>
  </ul>
 </li>
 <li><strong>Možnosti </strong> <ul>
 <li><strong>Použít různé způsoby detekce</strong> - Zaškrtněte toto políčko, pokud chcete detekovat hardware a software různými způsoby.</li>
 <li><strong>Obnovit všechny počítače</strong> - Zaškrtněte toto políčko, pokud chcete obnovit nastavení detekce pro všechny počítače v inventáři. Všechna jednotlivá nastavení detekce počítačů budou odstraněna a tato nastavení budou v budoucnu použita pro nové detekce.</li>
  </ul>
 </li>
 <li><strong>Automatické plánování detekce</strong><ul>
 <li><strong>Období detekce hardware a software</strong>- Zadejte počet dní, po kterých se má automaticky provádět detekce. Hodnota 0 znamená, že plánování bude zakázáno a detekce se nebudou provádět opakovaně.</li>
  </ul>
 </li>
 <li><strong>Ověřování agenta</strong><ul>
 <li><strong>Ověřovací kód agenta</strong> - Zadejte kód používaný k ověření autonomních agentů při komunikaci s webovou službou. Stejný kód musíte zadat při instalaci Agentů. Tento kód může být také prázdný.</li>
  </ul>
 </li>
	</ul>

</asp:Content>

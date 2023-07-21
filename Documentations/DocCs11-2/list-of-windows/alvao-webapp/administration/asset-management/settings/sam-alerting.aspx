<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SAM - oznámení</h1>
<p>Nastavení upozornění uživatelů v rámci <a href="../../../../../itil/sam">správy softwarových prostředků</a> na nesrovnalosti týkající se sw produktů, které mají nainstalovány ve svých počítačích. Upozornění se odešle, pokud k instalaci v počítači není přiřazena žádná licence nebo se na instalaci nevztahuje jiný způsob ochrany (např. sdílená licence, speciální instalace).</p>
<p>Možnosti: V případě, že se jedná o licenci, která je součástí systému, je možné ji použít:</p>
	<ul>
 <li><strong>Zprávy</strong> - nastavení obsahu výstrah, výběr příjemců a definování podmínek, za kterých jsou výstrahy zasílány.  <ul>
 <li><strong>První upozornění</strong> - zapněte, pokud si přejete odeslat první upozornění e-mailem.  <ul>
 <li><strong>Upozornění</strong>: V případě, že se jedná o <strong>výstrahu, která je zasílána na e-mailovou adresu, je možné vybrat možnost Upozornění</strong><ul>
 <li><strong>Osoba odpovědná za SW v počítači</strong>- zapněte, pokud chcete první upozornění zaslat osobě odpovědné za software v počítači, viz vlastnost <a href="../../../../../alvao-asset-management/software-management/software-regular-auditing">Software Responsible</a>.</li>
 <li><strong>Přímý nadřízený osoby odpovědné za software na PC</strong> - povolte, pokud chcete první upozornění zaslat přímému nadřízenému osoby odpovědné za software na PC.</li>
 <li><strong>Členové skupiny</strong> - první oznámení se odešle všem členům vybrané <a href="../../users/detail/membership">skupiny uživatelů</a></li>
 </ul>
 </li>
 <li><a href="sam-alerting-message-template">Upravit šablonu zprávy</a> - upravte šablonu odesílaných zpráv.</li>
 <li><strong>Detection period after first notification (days) (Doba detekce po prvním oznámení (dny)</strong>) - zadejte počet dní po odeslání prvního upozornění, po které má být software počítače opakovaně detekován, dokud nebude opraven. Tato doba by měla být kratší než doba do odeslání druhého upozornění. </li>
 </ul>
 </li>
 
 <li><strong>Druhé upozornění</strong> - zapněte, pokud si přejete dostávat druhé upozornění e-mailem.  <ul>
 <li><strong>Pokud nebude opraveno do (dnů</strong> ) - zadejte počet dnů. Pokud po tomto počtu dní nebude zjednána náprava, bude zasláno druhé upozornění.</li>
 <li><strong>Upozornění</strong>: V případě, že se jedná o chybu, která byla odstraněna, můžete zadat následující údaje <ul>
 <li><strong>Osoba odpovědná za SW v PC</strong>- zapněte, pokud chcete zasílat druhé upozornění osobě odpovědné za SW v PC.</li>
 <li><strong>Přímý nadřízený osoby odpovědné za SW na PC</strong> - zapněte, pokud chcete zaslat druhé upozornění přímému nadřízenému osoby odpovědné za SW na PC.</li>
 <li><strong>Členové skupiny</strong> - druhé upozornění se odešle všem členům vybrané <a href="../../users/detail/membership">skupiny uživatelů</a></li>
 </ul>
 </li>
 <li><a href="sam-alerting-message-template">Upravit šablonu zprávy -</a> upravte šablonu zasílaných zpráv.</li>
 
  </ul>
 </li>

 
 <li><strong>Třetí upozornění</strong> - zapněte, pokud chcete dostávat třetí upozornění e-mailem.  <ul>
 <li><strong>If not corrected until (days)</strong> - zadejte počet dní. Pokud po tomto počtu dní od druhého upozornění nebude zjednána náprava, bude odesláno třetí upozornění.</li>
 <li><strong>Upozornění</strong>: V případě, že se nepodařilo odstranit chybu, je třeba provést opravu <ul>
 <li><strong>Osoba odpovědná za SW v PC</strong>- zapněte, pokud chcete třetí upozornění zasílat osobě odpovědné za SW v PC.</li>
 <li><strong>Přímý manažer osoby odpovědné za SW na PC</strong> - zapněte, pokud chcete třetí upozornění zaslat přímému manažerovi osoby odpovědné za SW na PC.</li>
 <li><strong>Členové skupiny</strong> - třetí upozornění se odešle všem členům vybrané <a href="../../users/detail/membership">skupiny uživatelů</a></li>
 </ul>
 </li>
 <li><a href="sam-alerting-message-template">Upravit šablonu zprávy</a> - upravte šablonu zasílaných zpráv.</li>
 
  </ul>
 </li>
</ul>



 <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
 <a href="../../users/detail"> Supervisor</a> v nastavení uživatele v aplikaci ALVAO WebApp - Administration. </div>
 
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>

 Vygenerované e-mailové zprávy budou odeslány všem příjemcům najednou (v poli "Komu" budou uvedeny adresy všech příjemců)  </div>
  
 </li>
 <li><strong>Další</strong><ul>
 <li><strong>Čas odeslání zprávy</strong> - zadejte čas, kdy má být upozornění odesláno (ve formátu hh:mm)  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Čas odeslání je uložen v UTC a nerespektuje přechod mezi letním a zimním časem. Pokud například zadáte čas v létě, bude v zimě posunutý o jednu hodinu a takto se zobrazí v nastavení. </div>

 </li>
 <li><strong>Opakovat poslední upozornění automaticky po (počet dní od posledního upozornění</strong>) - zapněte, pokud chcete upozornění odesílat opakovaně, a zadejte dobu odesílání (ve dnech).</li>
 <li><strong>Upozorňovat pouze na počítače, jejichž detekce SW není starší než (dnů</strong> ) - zapněte, pokud chcete zasílat upozornění pouze na počítače s aktuální detekcí SW, a zadejte maximální přípustné stáří detekce ve dnech.</li>
	</ul>

 </li>
	</ul>


</asp:Content>

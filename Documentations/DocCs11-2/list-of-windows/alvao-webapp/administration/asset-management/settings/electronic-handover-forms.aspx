<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Podepisování dokumentů přes web</h1>
  Tento formulář slouží k nastavení podepisování předávacích protokolů a dalších dokumentů přes web a k upozornění uživatelů na nepodepsané dokumenty. Formulář je součástí modulu <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> <p>Funkce: Vložte formulář pro předávání a přebírání dokumentů:</p>

<ul>
<li><strong>Zpráva pro příjemce</strong><ul>
	<li><a href="electronic-handover-forms-message-template">Upravit šablonu zprávy</a> - upravte šablonu zprávy, která bude zaslána příjemci majetku po vystavení dokladu.</li>
	</ul>
</li>
<li><strong>Vyžadovat přihlašovací heslo při podpisu</strong> - povolte, pokud chcete, aby příjemce majetku musel při podpisu dokumentu zadat své přihlašovací heslo. Tato funkce funguje pouze pro uživatele, kteří se ověřují prostřednictvím služby Active Directory nebo pomocí hesla nastaveného v aplikaci WebApp - Administration - <a href="../../users">Users</a>.</li>
<li><strong>Upozornit příjemce</strong> - zapněte, pokud chcete přebírajícímu zasílat oznámení, když dokument není podepsán.<ul>
	<li><strong>Pokud příjemce dokument nepodepíše do (dnů)</strong> - zadejte počet dnů. Pokud dokument nebude podepsán po uplynutí tohoto počtu dní, bude příjemci zasláno upozornění.</li>
	<li><a href="electronic-handover-forms-message-template">Upravit šablonu zprávy</a> - upravte šablonu oznámení.</li>
	</ul>
</li>
<li><strong>Notify Handing Technician (Upozornit předávajícího technika)</strong> - zapněte, pokud si přejete zaslat oznámení předávajícímu technikovi, když dokument není podepsán.<ul>
	<li><strong>Pokud příjemce dokument nepodepíše do (dnů)</strong> - zadejte počet dnů. Není-li dokument podepsán ani po tomto počtu dní, odešle se oznámení předávajícímu technikovi.</li>
	<li><a href="electronic-handover-forms-message-template">Upravit šablonu zprávy</a> - upravte šablonu oznámení.</li>
	</ul>
</li>
<li><strong>Upozornit přímého nadřízeného příjemce</strong> - zapněte, pokud si přejete zaslat oznámení přímému nadřízenému, když dokument není podepsán.<ul>
	<li><strong>Pokud příjemce dokument nepodepíše do (dnů)</strong> - zadejte počet dnů. Pokud dokument není podepsán ani po uplynutí tohoto počtu dní, odešle se oznámení přímému nadřízenému příjemce.</li>
	<li><a href="electronic-handover-forms-message-template">Upravit šablonu zprávy</a> - upravte šablonu oznámení.</li>
	</ul>
</li>
<li><strong>Upozornit tým</strong>- zapněte, pokud chcete zasílat oznámení členům určité skupiny uživatelů.<ul>
	<li><strong>Pokud příjemce nepodepíše dokument do (dnů)</strong> - zadejte počet dnů. Pokud dokument nebude podepsán ani po tomto počtu dní, bude upozornění zasláno vybrané skupině uživatelů.</li>
	<li><strong>Upozornit členy skupiny</strong> - vyberte skupinu uživatelů. <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	  V odeslané zprávě jsou v poli <em>Komu</em> uvedeni všichni členové skupiny, takže každý příjemce ví, kdo oznámení obdržel.</div>

  </li>
	<li><strong>Automaticky opakovat toto upozornění po (dnů od posledního upozornění</strong> ) - povolte, pokud chcete upozornění zasílat opakovaně, a zadejte dobu zasílání ve dnech).</li>
	<li><a href="electronic-handover-forms-message-template">Upravit šablonu zprávy</a> - upravte šablonu upozornění.</li>
	</ul>
</li>
<li><strong>Čas odeslání upozornění</strong> - zadejte čas, kdy mají být upozornění odeslána (ve formátu hh:mm).</li>
</ul>


<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Upozornění předkládajícímu inženýrovi, týmu a přímému nadřízenému se zasílají hromadně pro všechny nepodepsané dokumenty.</div>

</asp:Content>

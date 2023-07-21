<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Webová inventura</h1>
<p>Formulář slouží k nastavení modulu<a href="../../../../../modules/alvao-inventory-audits">ALVAO Inventory Audits</a>.</p>

<p>Možnosti:</p>
	<ul>
 <li><strong>Příkazový panel</strong><ul>
  <li><strong>Uložit</strong> - uloží nastavení a zavře formulář.</li>
  <li><strong>Obnovit výchozí text</strong><ul>
 <li><strong>Oznámení</strong> - do pole <em>Text oznámení</em> vloží výchozí text.</li>
 <li><strong>Formuláře</strong> - do pole <em>Text formuláře</em> vloží výchozí text.</li>
  </ul>
   </li>
  </ul>
 </li>
  <li><strong>Oznámení</strong> - šablona zprávy odeslané uživatelům na začátku a případně v průběhu inventury. Text můžete upravit před odesláním každé zprávy.<ul>
 <li><strong>Od</strong> - zadejte e-mailovou adresu, ze které budou oznámení zasílána. Můžete zadat pouze e-mailovou adresu nebo zobrazit jméno a e-mailovou adresu, například <span class="console">Alvao DontReply &lt;do-not-reply@domain.com&gt;</span>.</li>
 <li><strong>Předmět</strong> - zadejte předmět oznámení.</li>
 <li><strong>Text</strong> - zadejte text oznámení. V textu doporučujeme vždy uvést odkaz na webový formulář pro inventuru v aplikaci ALVAO WebApp.<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip: V případě, že se v systému ALVAO objevují chyby, které by mohly být způsobeny v souvislosti se zpracováním osobních údajů, je třeba uvést následující údaje:</div>
   Text oznámení můžete vrátit do výchozího stavu pomocí příkazu <em>Obnovit výchozí text - Oznámení</em>.</div>
	  </li>
  </ul>
 </li>
 <li><strong>Formulář</strong><ul>
 <li><strong>Text formuláře</strong> - zadejte vysvětlující text, který se zobrazí uživatelům v horní části webového inventárního formuláře. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
   Tento text můžete vrátit do výchozího stavu pomocí příkazu <em>Obnovit výchozí text - Formulář</em>.</div>
	  </li>
  </ul>
 </li>
	</ul>
	
	<div class="note">
  <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Ve <a href="../../../../../alvao-service-desk/implementation/multi-languages">vícejazyčném prostředí</a> je po změně <em>předmětu</em>, &lt;em <em>textu oznámení</em> nebo <em>textu formuláře</em> nutné aktualizovat i překlady do ostatních jazyků. Pokud překlady neaktualizujete, uživatelé uvidí neaktualizovaný překlad nebo text v jazyce systému</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová služba</h1>
<p>Tento formulář slouží k vytvoření nové <a href="../../../../../alvao-service-desk/implementation/services">služby</a>.</p>
<p>Možnosti:</p>
  <ul>
  <li><strong>Obecný</strong><ul> <li><strong>název služby</strong> - zadejte název služby. </li>
</ul><ul> <li> <div class="tip"> <div class="icon"></div>
</div> </li> <li> <div class="tip"> <div class="title">Tip</div></div> </li>: <li> <div class="tip">Služby, které obsahují požadavky (nikoli pouze složky ve stromu služeb), doporučujeme pojmenovat množným číslem</div> </li>, např. <li> <div class="tip"> <em>žádosti o dovolenou</em>, <em>nápady na zlepšení</em> atd</div> </li>. <li><strong>E-mail</strong> - zadejte e-mail služby, ze kterého budou žadatelům a členům výzkumného týmu zasílána oznámení. E-mail lze zadat jako <em>e-mailovou adresu</em> (např. support@alvao. <em>com</em>)<em> </em>nebo</em>název služby &lt;emailová adresa&gt; </em>(např. <em>Technická podpora &lt;support@alvao.com&gt;)</em><em>.</em> </li> <li>Víceslovné názvy oddělujte mezerou, nepoužívejte čárky, středníky ani jiná interpunkční znaménka.</li></ul><ul> <li> <div class="note"> <div class="icon"></div><div class="title">Poznámka:</div> Nepoužívejte e-mail, který je již přiřazen uživateli.</div> </li> <li><strong>Telefon</strong> - zadejte telefonní číslo hlavního poskytovatele služby.</li> <li><strong>Popis</strong> - zadejte stručné informace o službě.</li> <li>Popis služby se zobrazuje žadatelům v katalogu služeb</li>. <li><strong>Zpracovat</strong> - vyberte z nabídky proces, který bude použit pro zpracování žádostí ve službě. </li>
 </ul><ul> <li> <div class="note"> <div class="icon"></div>
 </div> </li> <li> <div class="note"> <div class="title">Poznámka:</div> <a href="../../../../../alvao-service-desk/implementation/services/processes">Proces</a> mimo jiné definuje <a href="../process/detail/workflow">proces řešení</a> a viditelné <a href="../process/detail/request-items">položky požadavků</a></div> </li> </ul><ul> <li> <div class="note"><a href="../process/detail/workflow">.</a></div> </li> <li><strong>Předpona značky požadavku</strong> - zadejte předponu značky požadavku</li>. <li>Značka požadavku má formát <span class="console">&lt;prefix&gt;číslo požadavku&lt;prefix&gt;</span>, například T123ALVAO.</li> <li>Značka požadavku se automaticky uvádí v řádku předmětu oznámení a dalších zpráv a slouží k přiřazení zprávy ke správnému požadavku.</li> <li><strong>Přípona značky požadavku</strong> - zadejte příponu značky požadavku, viz <em>Přípona značky požadavku</em>.</li> <li><strong>Preferovaný jazyk</strong> - jazyk služby, ve kterém budou zasílána oznámení zadavatelům služby.</li> <li><strong>Časové pásmo</strong> - časové pásmo, ve kterém budou uváděna všechna data a časy v oznámeních zasílaných zadavatelům služby.</li> <li><strong>Složka (do služby nelze zadávat požadavky</strong></li>) <li>- povolte, pokud chcete zakázat vytváření požadavků v této službě</li>. <li>Složka může mít podřízené služby, do kterých lze vkládat požadavky</li>. <li><b>Vyžadovat licenci řešitele</b> - povolte, pokud chcete zajistit, aby služba vyžadovala licenci řešitele bez ohledu na přiřazení SLA uživateli <em>Hostitel</em>. Pokud služba vyžaduje licenci na řešitele, musí se licence vztahovat na všechny členy řešitelského týmu. Žadatelé pak nevyžadují žádnou licenci.</li> <li>Další informace naleznete v části <a href="../../../../../alvao-service-desk/implementation/users/sd-licenses">Licence Service Desk</a>.</li> <li><strong>Zástupce služby</strong> - Pokud chcete vytvořit pouze zástupce, který odkazuje na jinou službu, povolte tuto možnost a vyberte cílovou službu. <em>Oprávnění</em> a <em>SLA</em> se na zástupce použijí podle cílové služby. <li><strong>..</strong></li>. <li>- nebo vyberte službu ze stromu služeb</li> </ul><div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div> Po vytvoření služby nelze tuto možnost změnit.</div>
 </li>
	</ul>
	
	<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>Pole <em>Service Name</em>, &lt;em Email</em>, <em>Prefix, Suffix</em> a menu<em> Process, Language, Time Zone</em> jsou povinná. </div>
</li>
<li><a href="catalog">Katalog služeb</a> - Nastavení vzhledu dlaždice v katalogu služeb ve webové aplikaci, nastavení klíčových slov, pořadí ve stromu a výchozích šablon požadavků.</li>
<li><a href="objects">Objekty</a> - výběr objektů, na kterých se bude služba zobrazovat v nabídce služeb pro vytvoření nového požadavku.</li>
<li><a href="loading-messages">Načítání zpráv</a> - nastavení načítání zpráv ze schránky. </li>
<li><a href="extended">Rozšířený</a> - nastavení průběhu zpracování požadavku. </li>
<li><a href="notification">Oznámení</a> - nastavení zasílání automatických oznámení o výskytu a průběhu požadavků pro upravovanou službu. </li>
<li><a href="other">Ostatní</a> - správa vlastních položek služby</li>
	
</ul>
	
</asp:Content>

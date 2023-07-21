<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Upravit</h1>
<p>Tato nabídka obsahuje příkazy pro práci s licencemi v okně <a href="../license-registry">Evidence licencí</a>.</p>
<p>Možnosti:</p>
	<div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
		Pokud potřebujete najít počítač/uživatele, kterému je přiřazeno konkrétní inventární číslo licence, zapněte možnost <strong>Zobrazit položky licence</strong> a do sloupce <strong>Inventární číslo</strong> zadejte filtr pro požadovanou hodnotu</div>
	<ul>
 <li><a href="edit/new-license">Nová licence</a>- vytvoření nové licence.</li>
 <li><a href="edit/license-upgrade">Upgrade</a>- zápis upgradu licence - v prvním kroku vyberte položky pro upgradovanou licenci. Ve druhém kroku zadáte nákup nové platné licence, která nahradí upgradovanou licenci.</li>
 <li><strong>Povolit downgrade</strong> - povolí instalaci starší verze produktu.</li>
  <li><strong>Přidat odkaz na dokument</strong> (místní nabídka) - pomocí příkazu provedete hromadné propojení dokumentů nad vybranými licencemi.</li>
  <li><strong>Odebrat licenci</strong>- odebere vybranou licenci.</li>
 <li><a href="../../tab-view/software/license-transfer">Přenést licenci</a> - přesun vybrané licence.</li>
  <li><a href="edit/void-license">Zneplatnit licenci</a> - příkaz Zneplatnit licenci použijte, pokud chcete zaznamenat vypršení platnosti nebo odprodej části nebo celé licence. Pokud nechcete zaznamenávat platnost nebo historii nákupu jednotlivých licencí, odstraňte neplatné licence pomocí příkazu <strong>Odstranit</strong>.</li>
  
 
 <li><strong>Odstranit z registru majetku</strong> - odstraní vybranou licenci z registru licencí.</li>
 <li><a href="edit/edit-license">Upravit</a>- upraví vybranou licenci.</li>
	</ul>

  

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
  Při zneplatnění licence a při zápisu aktualizace se do záznamů jednotlivých licencí zapíší vazby  na příslušné odpovídající licence. Tyto vazby  lze prohlížet nebo upravovat v okně Evidence licencí - Upravit v části <a href="edit/edit-license/links">Vazby </a></div>
	

</asp:Content>

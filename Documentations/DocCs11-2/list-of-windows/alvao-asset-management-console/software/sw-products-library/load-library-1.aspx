<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Načítání knihovny softwarových produktů - krok 1</h1>
<p>V tomto okně můžete zvolit, kam se má načíst <a href="../../../../alvao-asset-management/software-management/custom-swlib">knihovna softwarových produktů</a>, kterou chcete použít.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Internet</strong> - načtení knihovny softwarových produktů z Internetu.</li>
 <li><strong>Soubor</strong> - pokud nemáte na tomto počítači přístup k Internetu, stáhněte si nejprve aktuální <a href="https://www.alvao.com/downloads/swlib2.swl" target="_top">soubor na jiném počítači s přístupem k Internetu.</a> https://www.alvao.com/downloads/swlib2.swl</a>, uložte jej na disk a poté v tomto okně zadejte cestu k souboru.</li>
	</ul>
<div class="tip">
<div class="icon"></div>
<div class="title">Tip: V případě, že se jedná o soubor, který se nachází v databázi, zadejte jeho název:</div>
Pokud zapnete kartu <strong>Nastavení</strong> programu <a href="../../tools/settings/general">Obecné</a> a povolíte možnost <strong>Automaticky kontrolovat aktualizace knihovny softwarových produktů</strong>, bude systém při spuštění konzoly AM automaticky kontrolovat aktualizace knihovny na internetu.</div>
</asp:Content>

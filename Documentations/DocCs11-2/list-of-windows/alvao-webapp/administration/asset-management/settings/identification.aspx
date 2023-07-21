<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Identifikace počítače</h1>


	<p>Na této stránce můžete vybrat informace, které jednoznačně identifikují počítače v síti při detekci HW a SW.</p>
	<p>Automatická aktualizace evidence po detekci se zastaví, pokud:</p>
	<ul>
 <li>je v identifikačních údajích nalezena jakákoli nesrovnalost, nebo</li>
 <li>některá klíčová komponenta již existuje v záznamech jiného počítače.</li>
	</ul>

	<p>To může odhalit například náhradní počítač nebo součást.</p>
	<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Pokud vyměňujete klíčové součásti počítače, zaznamenejte do evidence také příslušné operace. Vyhnete se tak pozdějším komplikacím při odhalování. </div>


<p>Možnosti: V případě, že se jedná o počítač, který se nachází v počítači, je možné použít tzv:</p>
	<ul>
 <li><b>Počítač - název sítě (vždy)</b> - počítač je vždy identifikován názvem sítě, takže tuto možnost nelze vypnout.</li>
 <li><b>Computer - BIOS Serial Number (Počítač - sériové číslo systému BIOS</b> ) - tuto možnost zapněte, pokud chcete počítače identifikovat také podle sériového čísla systému BIOS. <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Tento atribut se obvykle zjišťuje pouze u značkových počítačů (Dell, HP, ...) nebo virtuálních počítačů.</div>
 </li>
 <li>Počítače je možné identifikovat také podle jejich komponent. Následující možnosti se zobrazí pouze v případě, že je komponenta součástí <a href="general">výchozí šablony typu objektu pro počítače</a><ul>
 <li><b>Pevný disk - Sériové číslo, Název, Kapacita</b> - zapněte, pokud chcete počítače identifikovat také podle parametrů pevného disku.<br/>Klíčovým atributem pevných disků je <b>Sériové číslo</b>. Pokud není sériové číslo u pevného disku zjištěno, systém při detekci a registraci sleduje shodu s atributy <b>Název</b> a <b>Velikost</b>.</li>
 <li><b>Síťová karta - MAC adresa</b> - Povolte, pokud chcete identifikovat počítače také podle MAC adresy síťové karty.  <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Notebooky se mohou připojovat více způsoby (LAN, WiFi, ...).<br/>Energeticky úsporné počítače někdy deaktivují nepoužívané síťové karty, které proto nejsou vůbec detekovány.<br />
 Proto systému stačí, když se při detekci a protokolování shoduje <b>MAC adresa</b> alespoň jedné ze síťových karet.</div>
 </li>
 <li><b>Základní deska - Sériové číslo, Výrobce, Typ</b> - povolte, pokud chcete počítače identifikovat také podle parametrů základní desky.<br/>Klíčovým atributem základních desek je <b>Sériové číslo</b>. Pokud sériové číslo není detekováno, systém při detekci a registraci sleduje, zda se shodují atributy <b>Manufacturer (Výrobce)</b> a <b>Type (Typ)</b> <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Sériové číslo je detekováno pouze u některých základních desek - obvykle se jedná o značkové počítače (Dell, HP, ...).</div></li>
  </ul>
 </li>
	</ul>



</asp:Content>

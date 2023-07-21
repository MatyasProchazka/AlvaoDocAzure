<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
	<ul>
 <li><strong>Protokol</strong><ul>
 <li><strong>Zápis protokolu do souboru</strong> - tato možnost aktivuje generování protokolu činnosti agenta do zadaného souboru. </li>
 <li><strong>Detail</strong> - hodnota určuje podrobnost generovaného protokolu. Hodnota <strong>Stav a chyby</strong> znamená stručný protokol (do protokolu se zapisuje pouze pravidelné hlášení o &quot;živosti&quot; detekčních a skenovacích vláken a případné chyby). Tato úroveň je pro běžný provoz systému dostačující. Hodnota <strong>Střední</strong> generuje podrobnější protokol detekce. Hodnotu <strong>Detailní</strong> se doporučuje nastavit pouze v případě řešení problémů. </li>
 <li><strong>Okamžitý zápis na disk (pomalý)</strong> - Tato možnost vypíná vyrovnávací paměť pro zápis protokolu do souboru. </li>
  </ul>
 </li>
 <li><strong>Zobrazit ikonu na hlavním panelu</strong> - zobrazí ikonu agenta na hlavním panelu (pouze Windows 95/98/ME) </li>
	</ul>
<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud nastavíte podrobnost protokolu v souboru na hodnotu <strong>Podrobné</strong>, bude Agent generovat velké množství dat do souboru LOG a rychlost detekce bude velmi pomalá. Nastavení na hodnotu <strong>Podrobné</strong> by se proto mělo používat pouze při vyhledávání problémů. V běžném provozu jej nedoporučujeme používat vůbec.</div>

<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud povolíte možnost <strong>Okamžitý zápis na disk (pomalý</strong> ), bude agent zapisovat protokol v reálném čase bez vyrovnávací paměti a rychlost detekce bude velmi pomalá. Výhodou je, že v případě neočekávaného ukončení aplikace bude do protokolu zapsán i poslední záznam. Okamžitý zápis používejte pouze při řešení problémů. V běžném provozu jej nedoporučujeme používat.</div>

</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Ikona objektu</h1>
  <p>Tento formulář slouží k vytvoření nové nebo úpravě stávající ikony objektu.</p>
  <p>Možnosti:</p>
  <ul><li><b>Název</b> - v případě potřeby upravte název ikony.</li>
  <li><b>SVG</b> - náhled vektorové ikony ve formátu SVG. Tato ikona objektu bude zobrazena ve webové aplikaci.</li>
  <li><b>Převést</b> - automatické vygenerování rastrové ikony (BMP) z nahrané vektorové ikony (SVG). </li>
  <li><b>BMP</b> - náhled rastrové ikony ve formátu BMP. Tato ikona se zobrazí v AM Console.</li>
  <li><b>Nahrát ikony</b> - změna vektorové nebo rastrové ikony. Vyberte jeden soubor SVG nebo jeden soubor BMP nebo oba.</li>
  </ul>
  
</asp:Content>

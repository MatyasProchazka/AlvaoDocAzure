<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Soubor čtečky</h1>
  
  <p>Na této kartě můžete upravit záznam souboru čtenáře pro provedení <a href="../../../../modules/alvao-inventory-audits/stocktaking">inventury</a>.</p>
  <ul>
  <li><b>Název</b> - zadejte název souboru čtenáře, např. <i>Čtenář 1</i>.</li>
  <li><b>Uživatel</b> - z nabídky vyberte uživatele, který bude se čtečkou pracovat.</li>
  <li><b>Kontrola webového majetku</b> - povolte, pokud se jedná o soubor čtenáře pro webovou inventuru. Obsah souboru se pak uživatelům zobrazí v okně <i>ALVAO WebApp - Inventura majetku</i>.</li>
  <li><b>Popis</b> - v případě potřeby vložte poznámky o čtečce.</li>
  <li><b>Exportovaný soubor</b> - zobrazte datum exportu souboru pro čtecí zařízení.</li>
  <li><b>Importovaný soubor</b> - zobrazte datum importu souboru s inventárními údaji ze čtecího zařízení.</li>
  </ul>
</asp:Content>

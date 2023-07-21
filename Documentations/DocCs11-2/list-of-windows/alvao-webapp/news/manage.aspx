<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Správa</h1>
  <p>Na této stránce můžete vytvářet a upravovat <a href="../../../alvao-service-desk/news">aktuální zprávy</a></p>
  

  
  <p>Možnosti:</p>
  <ul>
  <li>Příkazový panel<ul>
  <li><a href="manage/new-news">Nová zpráva</a> - vytvoření nové zprávy</li>
  <li><a href="current-news">Zobrazit</a> - zobrazení zprávy na nové kartě prohlížeče</li>
  <li><a href="manage/edit-news">Upravit</a> - úprava vybrané zprávy</li>
  <li><a href="manage/send-news">Odeslat</a> - odeslání vybrané zprávy e-mailem<ul>
  <li><a href="manage/send-to-all-tenants">Odeslat všem nájemcům</a> - odeslání vybrané zprávy e-mailem uživatelům všech nájemců. Tento příkaz je k dispozici pouze pro zprávy s povolenou možností <a href="manage/new-news">Zobrazit všem nájemcům</a>.</li>
  </ul>
  </li>
  <li><strong>Skrýt všem</strong> - skrytí vybrané zprávy všem uživatelům. Do položky <em>Skrýt po</em> bude ve vybrané zprávě zadáno aktuální datum a čas.</li>
  </ul>
  </li>
  <li>Tabulka zpráv - obsahuje všechny zprávy, které máte právo zobrazit nebo upravit. Ve výchozím nastavení jsou v tabulce definována následující zobrazení:<ul>
  
 <li><strong>Všechny</strong> - všechny zprávy, které máte právo zobrazit nebo upravit.</li>
 <li><strong>Aktivní</strong> - zprávy, které se aktuálně zobrazují žadatelům</li>
 <li><strong>Archiv -</strong> skryté zprávy, které se již žadatelům nezobrazují, tj. mají v poli <em>Skrýt po</em> nastaveno minulé datum.</li>

  </ul>


  Tabulku si přizpůsobte <a href="../../../alvao-asset-management/working-with-tables">podle potřeby</a>.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


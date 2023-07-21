<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení</h1>
<p>Toto okno slouží k povolení a nastavení automatického skenování sítě a vytváření nových počítačů nalezených v definovaných rozsazích IP adres.</p>
<p>Možnosti:</p>
 
  <ul>
 <li><strong>Scan the network and create new computers (Prohledávání sítě a vytváření nových počítačů</strong> ) - Povolte, pokud chcete, aby upravený server prohledával síť a vytvářel nové počítače. </li>
  <li><strong>Zapsat IP adresu do vlastnosti "IP adresa</strong> " - zapněte, pokud chcete, aby se IP adresa nevyhledaného počítače zapsala do objektu počítače ve vlastnosti <em>IP adresa</em> <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
 IP adresa se zapíše pouze v případě, že šablona příslušného typu objektu počítače obsahuje vlastnost <em>IP adresa</em> </div>
  </li>
  </ul>
 
</asp:Content>


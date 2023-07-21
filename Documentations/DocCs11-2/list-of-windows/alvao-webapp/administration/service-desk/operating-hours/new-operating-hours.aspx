<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nová provozní doba</h1>
  <p>Formulář slouží k vytvoření nové <a href="../../../../../alvao-service-desk/implementation/services/operating-hours">provozní doby</a>.</p>
  <ul>
  <li><strong>Název</strong> - zadejte název provozní doby, např. <em>7x24</em>, <em>5x8</em>, <em>úřední hodiny</em> atd.</li>
 <li><strong>Popis</strong> - v případě potřeby zadejte slovní popis provozní doby.</li>
 
 <li><strong>Časové pásmo</strong> - vyberte časové pásmo, ve kterém bude provozní doba zadávána a zobrazována.</li>
 <li><strong>Vyloučit státní svátky</strong> - vyberte oblast, podle které budou státní svátky automaticky vyloučeny z provozní doby. Při každé aktualizaci databáze budou svátky vyloučeny na 3 roky dopředu.</li>
  <li><strong>Poznámky</strong> - volitelně zadejte případné interní poznámky k provozní době.</li>
  </ul>

</asp:Content>

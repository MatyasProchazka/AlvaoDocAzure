<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Softwarové profily</h1>
<p>Na této stránce můžete spravovat <a href="../../../../alvao-asset-management/software-management/software-profiles">softwarové profily</a>.</p>
<p>Možnosti:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nový profil -</strong> vytvoření <a href="software-profiles/create-profile">nového softwarového profilu</a>. </li>
  <li><strong>Upravit-</strong> upravit vybraný softwarový profil. Nabídka obsahuje stejné příkazy jako bloky v <a href="software-profiles/detail">náhledu</a> vybraného softwarového profilu.</li>
  <li><strong>Odstranit-</strong> odstranění vybraného softwarového profilu. </li>
  </ul></li>
  <li><strong>Tabulka softwarových profilů-</strong> obsahuje všechny vytvořené softwarové profily a jejich vybrané atributy. Tabulku si můžete přizpůsobit <a href="../../../../alvao-asset-management/working-with-tables">podle potřeby</a>.</li>
  <li><strong>Vybraný softwarový profil-</strong> po výběru softwarového profilu v tabulce se vpravo zobrazí <a href="software-profiles/detail">náhled</a> s informacemi o tomto profilu. V jednotlivých blocích náhledu se zobrazuje příkaz <em>Upravit</em>, který umožňuje upravit nastavení profilu.</li>
  </ul>
</asp:Content>

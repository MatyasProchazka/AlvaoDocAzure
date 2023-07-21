<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Aktuální zprávy</h1>
  <p>Na této stránce si můžete přečíst <a href="../../alvao-service-desk/news">aktuální zprávy</a>. </p>
  <p>
  Možnosti:</p>
  <ul>
  <li>Příkazový panel<ul>
  <li><a href="news/manage/new-news">Nová zpráva</a> - vytvoření nové zprávy</li>
  <li><a href="news/manage">Správa</a> - vytvoření nové a úprava stávající zprávy</li>
  </ul>
  </li>
  <li>Seznam zpráv - zprávy, které jste ještě nečetli, jsou zvýrazněny svislým pruhem na levém okraji a zobrazují se vždy v horní části seznamu. Klikněte na nepřečtené zprávy a přečtěte si je jednu po druhé.</li>
  
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


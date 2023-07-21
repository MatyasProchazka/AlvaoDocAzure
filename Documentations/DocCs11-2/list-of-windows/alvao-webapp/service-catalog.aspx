<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Katalog služeb</h1>
  <p>Na této stránce najdete seznam <a href="../../alvao-service-desk/implementation/services">služeb, které</a> si můžete vyžádat.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li><strong>Vyhledávání ve službách...</strong> - pokud hledáte konkrétní službu, zadejte alespoň část názvu služby a poté vyberte hledanou službu z rozbalovací nabídky. Tím se dostanete přímo na stránku služby v katalogu nebo na její formulář pro zadání nového požadavku, aniž byste museli procházet katalog od začátku.</li>
  <li>Záhlaví služby - ikona, název a popis aktuálně zobrazené služby v katalogu<ul>
  <li><strong>Nový požadavek</strong> - odeslání nového požadavku na zobrazenou službu</li>
  </ul>
  </li>
  <li><strong>výběr požadované služby</strong> - vyberte podřízenou službu a klikněte na její dlaždici. Tím se dostanete na její stránku v katalogu nebo, pokud zobrazená služba již neobsahuje žádné podřízené služby, na její formulář pro zadání nového požadavku.</li>
  <li><strong>Aktuální novinky služby</strong> - klikněte a přečtěte si aktuální zprávy vydané poskytovatelem služby.</li>
  <li><strong>Znalosti této služby</strong> - zobrazte si znalosti vydané poskytovatelem služby a případně na ně klikněte a přečtěte si je.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


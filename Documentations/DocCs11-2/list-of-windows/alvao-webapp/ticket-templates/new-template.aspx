<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nová šablona</h1>
  <p>Pomocí tohoto formuláře můžete vytvořit novou <a href="../../../alvao-service-desk/requests/ticket-templates">šablonu požadavku</a></p>

  <p>
  Možnosti:</p>
  <ul>
  <li><strong>Název šablony</strong> - zadejte název, podle kterého budou uživatelé vybírat šablonu z nabídky šablon.</li>
  <li><strong>Popis šablony</strong> - v případě potřeby zadejte podrobnější popis šablony a jejího použití.</li>
  <li><strong>Služba</strong> - zadejte alespoň část názvu služby a poté z nabídky vyberte službu, pro kterou chcete šablonu požadavků vytvořit. </li>
  <li><strong>Název požadavku</strong> - zadejte název požadavku. Toto pole je k dispozici pouze v případě, že název požadavku není skrytý ve <a href="../administration/service-desk/service/detail/new-ticket-items">formuláři new-request-submission (nový požadavek)</a>.</li>
  <li><strong>Popis</strong> - zadejte podrobný popis požadavku, je-li to vhodné.</li>
  <li><strong>Attachments (Přílohy)</strong> - seznam příloh k požadavku<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu. Soubory můžete připojit také přetažením do formuláře.</li>
  </ul>
  </li>
  <li><strong>SLA</strong> - vyberte <a href="../../../alvao-service-desk/implementation/services/sla"> z nabídky SLA</a> požadavku.</li>
  <li>Další položky - v závislosti na službě a nastavení jejího procesu se mohou ve formuláři zobrazit další položky.</li>
  <li><strong>Přiřadit</strong> - pokud chcete nový požadavek vytvořený pomocí této šablony okamžitě přiřadit konkrétnímu řešiteli nebo skupině řešitelů, povolte tuto možnost a zadejte název řešitele nebo název skupiny.</li>
  
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


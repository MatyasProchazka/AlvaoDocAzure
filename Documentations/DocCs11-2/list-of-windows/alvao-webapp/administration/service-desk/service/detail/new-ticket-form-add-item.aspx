<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Přidat položku</h1>
  <p>V tomto okně vyberte položku, kterou chcete přidat do <a href="new-ticket-items">formuláře Nový požadavek</a>.</p>

  <p>Možnosti:</p>
  <ul>
  <li>V nabídce <strong>položek</strong> dvakrát klikněte na položku, kterou chcete do formuláře přidat, nebo položku vyberte a stiskněte tlačítko <em>OK</em>. Položky požadavku, které jsou nastaveny v <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">průběhu</a> editace služby, jsou umístěny na začátek seznamu. Za nimi následují všechna vlastní pole požadavku bez ohledu na nastavení procesu.<br />
V nabídce se zobrazují pouze položky, které ještě nejsou ve formuláři. <br />
Systémová pole, která nejsou nastavena v procesu, se v nabídce nezobrazují  <ul>
  <li><strong>Hledat</strong> - zadejte alespoň část názvu hledané položky.</li>

  </ul>
  </li>
  <li><strong>Nová položka</strong> - vytvořte <a href="new-ticket-form-new-item">nové vlastní pole</a>.</li>
  </ul>
</asp:Content>

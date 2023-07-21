<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový systém schvalování</h1>
  <p>Pomocí tohoto formuláře můžete vytvořit nové <a href="../../../../../alvao-service-desk/implementation/services/processes/request-approval">schvalovací schéma</a>.</p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Název</strong> - zadejte název schvalovacího schématu.</li>
  <li><strong>Popis</strong> - zadejte popis schvalovacího schématu.</li>
  <li><strong>Automaticky schvalovat kroky schvalovatele z předchozích kroků</strong> - zapněte, pokud se jedná o vícekrokové schéma, v němž mohou některé kroky schvalovat stejné osoby, a nechcete, aby schvalovatel, který již schválil požadavek v jednom kroku, musel požadavek schvalovat znovu v následujících krocích. Tyto následné kroky pak budou schváleny automaticky.</li>
  </ul>

</asp:Content>

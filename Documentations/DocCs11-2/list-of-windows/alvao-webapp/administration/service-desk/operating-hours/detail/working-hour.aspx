<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

 <h1>Interval provozní doby</h1>

  <p>Toto okno slouží k vytvoření a úpravě intervalu provozní doby. </p>

  <p>Možnosti:</p>
  <ul>
  <li><strong>Pondělí, úterý, ...</strong> - vyberte dny, pro které zadáváte interval.</li>
   <li><strong>Otevřít od</strong> - zadejte čas začátku intervalu, např. 8:00.</li>
  <li><strong>Otevřít do</strong> - zadejte čas ukončení intervalu, např. 17:00.</li>
  <li><strong>Platí od</strong> - zadejte datum, od kterého bude interval platit, vč.</li>
  <li><strong>Platí do</strong> - zadejte datum, od kterého již interval nebude platit.</li>
  </ul>

 </asp:Content>

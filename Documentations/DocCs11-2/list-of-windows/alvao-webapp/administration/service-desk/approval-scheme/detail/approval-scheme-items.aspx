<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Kroky schvalování</h1>
<p>Toto okno slouží ke správě kroků <a href="../../../../../../alvao-service-desk/implementation/services/processes/request-approval">schvalovacího schématu, které upravujete</a>.</p>

<p>Možnosti:</p>
<ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nový krok</strong> - vytvoření nového <a href="approval-scheme-item">kroku schvalování</a>.</li>
  <li><strong>Upravit</strong> - úprava vybraného kroku.</li>
  <li><strong>Odstranit</strong> - odstranění vybraného kroku.</li>
  <li><strong>Přesunout nahoru</strong> - přesun vybraného kroku o jeden řádek nahoru.</li>
  <li><strong>Dolů</strong> - přesun vybraného kroku o jeden řádek níže.</li>
  </ul>
  </li>
  <li><strong>Tabulka Kroky</strong> - obsahuje kroky schématu. schvalování začíná prvním krokem. Pokud je požadavek schválena v prvním kroku, automaticky se přesune do dalšího kroku atd. Pokud je požadavek v některém kroku zamítnuta, v dalším kroku se nepokračuje a celé schéma je ukončeno s výsledkem <em>zamítnuto</em>. <a href="../../../../../../alvao-asset-management/working-with-tables">Tabulku si</a> můžete <a href="../../../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
</ul>

</asp:Content>

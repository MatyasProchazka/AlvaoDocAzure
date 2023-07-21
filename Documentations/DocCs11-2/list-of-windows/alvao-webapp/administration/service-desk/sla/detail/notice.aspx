<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pravidla varování</h1>
<p>Toto okno slouží ke správě pravidel, podle kterých se řešitelskému týmu v seznamu požadavků a na stránce požadavku zobrazují upozornění na termíny SLA, aby se předešlo případnému nedodržení <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a>, nebo se upozornění automaticky zasílají uživatelům e-mailem.</p>
<p>Možnosti:</p>

<ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><a href="notice-notice">Nové pravidlo</a> - přidání nového pravidla.</li>
  <li><a href="notice-notice">Upravit</a> - úprava vybraného pravidla pro oznámení.</li>
  <li><strong>Odstranit</strong> - odstranění vybraných pravidel oznámení.</li>
  </ul>
  </li>
  <li><strong>Tabulka</strong> - pravidla upozornění pro dané SLA. Tabulku můžete <a href="../../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
</ul>

</asp:Content>

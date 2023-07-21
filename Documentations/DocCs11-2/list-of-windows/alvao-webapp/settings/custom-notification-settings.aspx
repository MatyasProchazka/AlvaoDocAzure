<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Oznámení</h1>
  <p>
  Nastavení <a href="../../../alvao-service-desk/implementation/services/notifications">oznámení</a></p>
  <p>
  Možnosti:</p>
  <ul>
  <li>Tuto možnost povolte, pokud chcete, aby vám oznámení řešitelů, žadatelů a schvalovatelů byla zasílána<strong>e-mailem</strong>.</li>
      <li><strong>Odesílat oznámení pomocí doplňku MS Teams</strong> - zapněte, chcete-li dostávat oznámení z ALVAO Bota v MS Teams. Tato možnost je k dispozici pouze v případě, že je aktivován modul <a href="../../../modules/alvao-teams-addin">ALVAO for Teams</a>.</li>
      <li><a href="custom-notification-settings/advanced-settings">Rozšířená nastavení</a> - nastavení e-mailových oznámení pro jednotlivé služby.</li>
  </ul>

</asp:Content>

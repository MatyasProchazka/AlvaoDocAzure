<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Přiřazení SLA</h1>

  <p>Formulář slouží k přidělení <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>pro vybrané <a href="../../../../../alvao-service-desk/implementation/services">služby</a>uživatelům.  Uživatelé s přiřazenou SLA ke službě mají v této službě roli <a href="../../../../../alvao-service-desk/implementation/services/service-roles">žadatele</a>.</p>

  <ul>
  <li><strong>SLA</strong> - vyberte SLA, které chcete uživateli (skupině) povolit používat ve vybraných službách.</li>
  <li><strong>Vyberte služby...</strong> - zaškrtněte služby, ke kterým chcete přiřadit SLA.</li>
  
  <li><strong>Default SLA (Výchozí SLA</strong> ) - zaškrtnutím této možnosti nastavíte SLA jako <a href="../../service-desk/service/detail/sla-assignment">výchozí</a> pro uživatele (skupiny) a vybrané služby.<br />

  </li>
  </ul>

</asp:Content>

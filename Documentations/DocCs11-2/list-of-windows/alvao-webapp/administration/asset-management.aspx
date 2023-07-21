<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Asset Management</h1>
  <p>Nabídka v sekci <em>Správa - Asset Management</em> slouží ke správě systému <a href="../../../alvao-asset-management">ALVAO Asset Management</a>.</p>
  <p>Funkce:</p>
  <ul>
  <li><a href="asset-management/print-report-templates">Šablony tiskových sestav</a> - správa šablon tiskových sestav typu REP, zejména šablon předávacích protokolů.</li>
  <li><a href="asset-management/detect-profiles">Detekční profily</a> - správa detekčních profilů. Pomocí detekčních profilů lze snadno hromadně nastavit parametry detekce pro sw a hw počítače.</li>
  <li><a href="asset-management/servers">Servery</a> - nastavení služby AM Collector, která může běžet na jednom nebo více serverech v síti.</li>
  <li><a href="asset-management/document-folders">Složky dokumentů</a> - spravujte složky dokumentů, do kterých pak oprávnění uživatelé ukládají dokumenty.</li>
  <li><a href="asset-management/software-licenses-security">Zabezpečení softwarových licencí</a> - spravujte zabezpečení softwarových licencí pro <a href="../../../alvao-asset-management/software-management/licenses">správu licencí více organizací</a>.</li>
  <li>Ikony objektů - spravujte ikony <a href="../../../alvao-asset-management/objects-and-properties">objektů</a> a případně jejich vlastnosti.</li>
  <li><a href="asset-management/software-profiles">Softwarové profily</a> - správa softwarových profilů, které pomáhají standardizovat a řídit instalaci softwaru v počítačích.</li>
  <li><a href="asset-management/link-types">Typy odkazů mezi objekty</a> - správa typů odkazů mezi objekty. Tato část je k dispozici pouze v případě, že je povolen modul <a href="../../../modules/alvao-configuration-management">správy konfigurace ALVAO</a>.</li>
  <li><a href="asset-management/settings">Settings (Nastavení)</a> - další nastavení systému ALVAO Asset Management.</li>
  </ul>
</asp:Content>

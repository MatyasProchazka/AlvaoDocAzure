<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Instalace aplikací</h1>

<p>Na této stránce si můžete stáhnout nejnovější verze instalačních balíčků aplikací pro systém Windows (MSI).</p>
<p>Po stažení instalačního balíčku spusťte. Abyste mohli balíček do počítače nainstalovat, musíte mít v počítači roli <em>správce</em>.</p>
<p>Pokud již máte v počítači nainstalovanou starší verzi aplikace, instalační balíček aktualizuje stávající instalaci na novou verzi.</p>

<div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Pokud organizace nepoužívá pro zjišťování HW/SW počítače program <em>ALVAO Asset Management Agent</em> (např. používá <a href="../../../modules/alvao-intune-manager-connector">ALVAO Microsoft Intune Connector</a>nebo <a href="../../../alvao-asset-management/implementation/detection">detekci bez agenta</a>), může Alvao Administrator skrýt odkaz na balíček Agent. Odkaz lze skrýt pomocí skriptu SQL: <br /><code>aktualizovat tVlastnost set bVlastnostHodnota = 0 where sVlastnost = 'WebApp.Settings.InstallApplications.ShowAmAgentLink'</code></div>

</asp:Content>

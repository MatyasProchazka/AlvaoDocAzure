<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>SLA</h1>
 <p>Na této stránce nebo panelu můžete zobrazit informace o vybrané SLA. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>

	<p>Volby: 1. V případě, že se jedná o SLA, můžete vybrat z následujících možností:</p>

	<ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../sla">SLA</a>.</li>
  <li>Blok <ul>
  <li><a href="detail/edit">Vlastnosti</a> - základní informace o službě</li>
  <li><a href="detail/notice">Pravidla upozornění</a> - seznam příjemců upozornění</li>
  
  </ul>
  </li>
 
	</ul>

</asp:Content>

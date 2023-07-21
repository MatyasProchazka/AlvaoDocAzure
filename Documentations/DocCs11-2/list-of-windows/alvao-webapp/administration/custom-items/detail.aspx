<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Vlastní položka</h1>
<p>Na této stránce nebo panelu můžete zobrazit informace o vybraném <a href="../../../../alvao-service-desk/implementation/custom-items">vlastním poli</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>

<p>Možnosti: V nabídce jsou možnosti, které lze použít pro zadání pole:</p>
<ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../custom-items">Vlastní položka</a> </li>
  <li>Blok <ul>
  <li><strong>Název, Typ, ...</strong> - základní informace o vlastním poli</li>
  <li>Použití stránky <ul>
  <li><strong>Proces</strong> - seznam <a href="../../administration/service-desk/process">procesů,</a> ve kterých je toto vlastní položka použita.</li>
  <li><strong>Formulář nového požadavku</strong> - seznam služeb, ve kterých je <a href="../../administration/service-desk/service/catalog">toto</a> pole použito.</li>
  </ul></li>
  </ul>
  </li>
</ul>

</asp:Content>

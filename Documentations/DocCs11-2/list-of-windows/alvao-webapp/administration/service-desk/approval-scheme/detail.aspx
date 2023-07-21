<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Schvalovací režim</h1>

<p>Tato stránka nebo panel zobrazuje informace o vybraném <a href="../../../../../alvao-service-desk/implementation/services/processes/request-approval">schématu schvalování</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>
<p>Možnosti: V nabídce jsou následující možnosti: 1:</p>
<ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../approval-scheme">Schémata schvalování</a>.</li>
  <li>Bloky <ul>
  <li><strong>Název</strong> - <a href="detail/edit">obecné informace o</a> schématu</li>
  <li><a href="detail/approval-scheme-items">Schvalovací kroky</a> - definice schvalovacích kroků schématu</li>
  </ul></li>
</ul>

</asp:Content>

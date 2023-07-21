<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Uživatel</h1>

<p>Na této stránce nebo panelu můžete zobrazit informace o <a href="../users">vybraném uživateli</a>. Informace zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>
  
<p>Možnosti: V nabídce jsou možnosti, které můžete použít, abyste se dostali do kontaktu s uživatelem:</p>
<ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../users">Uživatelé</a>.</li>
  <li>Blok <ul>
  <li><a href="detail/edit">Jméno a příjmení, .</a>.. - základní informace o uživateli.</li>
  <li><a href="detail/membership">Členství ve skupinách</a> - členství vybraného uživatele v uživatelských skupinách.</li>
  <li><a href="detail/user-rights">Oprávnění</a> - oprávnění vybraného uživatele v systému ALVAO Service Desk.</li>
  <li><a href="detail/sla">SLA</a> - SLA přiřazené vybranému uživateli pro požadavky o přístup ke službám v ALVAO Service Desk.</li>
  <li><a href="detail/security-object">Zabezpečení objektů</a> - oprávnění vybraného uživatele k objektům v ALVAO Asset Management.</li>
  <li><strong>Datové dotazy</strong> - seznam <a href="../data-queries">datových dotazů</a> přístupných uživateli.</li>

</ul>
  </li>
</ul>
</asp:Content>

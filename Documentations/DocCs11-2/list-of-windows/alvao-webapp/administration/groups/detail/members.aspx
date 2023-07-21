<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Členové</h1>
<p>Toto okno slouží k přidávání a odebírání uživatelů a skupin uživatelů, kteří jsou členy upravované skupiny. </p>
<p>Možnosti:</p>
<ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><a href="select-member">Přidat</a> - přidá uživatele nebo skupinu do upravované skupiny. </li>
  <li><strong>Odebrat</strong> - odebere vybraného uživatele nebo skupinu z editované skupiny.</li>
  </ul>
  </li>

  <li><strong>Tabulka</strong> - tabulka zobrazí seznam uživatelů a skupin uživatelů, kteří jsou členy upravované skupiny. Obsah tabulky lze podle potřeby <a href="../../../../../alvao-asset-management/working-with-tables">upravit</a>.</li>

</ul>

</asp:Content>

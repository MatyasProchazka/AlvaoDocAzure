<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Softwarový profil</h1>
  <p>Na této stránce nebo panelu můžete zobrazit informace o vybraném <a href="../../../../../alvao-asset-management/software-management/software-profiles">softwarovém profilu</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>
  <p>Volby:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Upravit</strong> - úprava informací o profilu, viz <em>bloky</em> níže.</li>
  <li><strong>Odebrat</strong> - odebrání softwarového profilu.</li>
  </ul></li>
  
  <li><strong>Bloky</strong><ul>
  <li><a href="detail/edit">Name, Subprofile</a> - základní informace o softwarovém profilu.</li>
  <li><a href="detail/products">Produkty, Podprofily</a> - nastavení přítomnosti SW produktů.</li>
  </ul></li>
  </ul>
</asp:Content>

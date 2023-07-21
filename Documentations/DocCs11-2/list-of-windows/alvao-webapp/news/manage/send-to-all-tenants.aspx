<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	<h1>E-mailová zpráva všem nájemcům</h1>
	<p>Tento formulář použijte v <a href="../../../../alvao-asset-management/implementation/installation/multitenant">režimu více nájemců</a> pro odeslání vybrané zprávy e-mailem všem uživatelům nájemců.</p>
  <p>Možnosti:</p>
  <ul>
  <li>Příkazový panel<ul>
  <li><strong>Odeslat</strong> - odeslání zprávy. Příkaz má stejnou funkci jako tlačítko <em>Odeslat</em> na formuláři.</li>
  </ul>
  </li>
  <li>Odeslání zprávy e-mailem všem nájemcům <ul>
  <li><strong>Alvao administrators only</strong> - zpráva bude odeslána pouze členům skupiny <a href="../../../../alvao-asset-management/implementation/users/groups">Administrators</a> jednotlivých nájemců.</li>
  <li><strong>Všem uživatelům</strong> - zpráva bude odeslána všem uživatelům každého nájemce.</li>
 </ul>

  </li>
  </ul>

  <p>V obou případech se zpráva odešle pouze aktivním uživatelům, tj. osobám, které vyplnily své uživatelské jméno a e-mail a jejichž uživatelské účty nejsou skryté, zablokované nebo odstraněné.  </p>


</asp:Content>

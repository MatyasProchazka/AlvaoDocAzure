<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	<h1>Odeslání zprávy e-mailem</h1>
	<p>Pomocí tohoto formuláře odešlete vybranou zprávu e-mailem vybraným příjemcům.</p>
  <p>Možnosti:</p>
  <ul>
  <li>Příkazový panel<ul>
  <li><strong>Odeslat</strong> - odeslání zprávy. Příkaz má stejnou funkci jako tlačítko <em>Odeslat</em> na formuláři.</li>
  </ul>
  </li>
  <li>Odeslání zprávy e-mailem <ul>
  <li><strong>Žadatelům přiřazených služeb</strong> bude zpráva odeslána všem žadatelům služeb, ke kterým je aktuální zpráva přiřazena. Tato možnost je k dispozici pouze pro zprávy s povolenou možností <a href="new-news">Zobrazit žadatelům</a>.</li>
  <li><strong>Členům řešitelského týmu přiřazené služby</strong>- zpráva bude odeslána všem členům <a href="../../../../alvao-service-desk/implementation/services/service-roles">řešitelských týmů služeb</a>, ke kterým je aktuální zpráva přiřazena. </li>
  <li><strong>Vybraným příjemcům</strong> - zadejte e-mailové adresy příjemců oddělené středníkem.</li>
 </ul>

  </li>
  </ul>
  

</asp:Content>

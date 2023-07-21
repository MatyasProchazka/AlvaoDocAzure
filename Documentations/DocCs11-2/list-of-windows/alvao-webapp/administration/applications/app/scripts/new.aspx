<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

    <h1>Nový skript</h1>
<p>Tento formulář slouží k vytvoření nového skriptu v aplikaci.</p>

<p>Možnosti:</p>
	<ul>
  <li><strong>Šablona</strong> - vyberte vhodnou šablonu skriptu:<table>
  <thead>
  <tr>
  <th>Název šablony</th>
  <th>Popis</th>
  <th>Zahrnuto v modulech Vlastní aplikace</th>
  </tr>
  </thead>
  <tbody>
      <tr>
  <td>Prázdná</td>
  <td>Prázdný skript</td>
  <td>Asset Management, Service Desk</td>
      </tr>
      <tr>
  <td>Knihovna tříd</td>
  <td>Knihovna pomocných tříd, které lze použít v jiných skriptech. Definované třídy nelze použít v jiné knihovně.</td>
  <td>Asset Management, Service Desk</td>
      </tr>
      <tr>
  <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/i-entity-command">IEntityCommand</a></td>
  <td>Vlastní příkaz entity</td>
  <td>Asset Management, Service Desk</td>
      </tr>
  <tr>
  <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/custom-commands/general-custom-commands">IGeneralCommand</a></td>
  <td>Vlastní příkaz v hlavní nabídce</td>
  <td>Asset Management, Service Desk</td>
  </tr>
  <tr>
  <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events">ITicketAutoAction</a></td>
  <td>Automatická akce na událost požadavku</td>
  <td>Service Desk</td>
  </tr>
      <tr>
  <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events">IActAutoAction</a></td>
  <td>Automatická akce na událost v záznamu protokolu požadavků</td>
  <td>Service Desk</td>
      </tr>
  <tr>
  <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events">ITicketApprovalAutoAction</a></td>
  <td>Automatická akce schválení požadavku</td>
  <td>Service Desk</td>
  </tr>
  <tr>
  <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events">IMailMessageAutoAction</a></td>
  <td>Automatická akce při načtení zprávy</td>
  <td>Service Desk</td>
  </tr>
      <tr>
  <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/object-custom-actions-by-property-change">IObjectPropertyAutoAction</a></td>
  <td>Automatická akce při změně hodnoty vlastnosti objektu</td>
  <td>Asset Management</td>
      </tr>
      <tr>
  <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/object-custom-actions-by-object-move">IObjectMoveAutoAction</a></td>
  <td>Automatická akce při přesunu objektu</td>
  <td>Asset Management</td>
      </tr>
  <tr>
  <td><a href="../../../../../../modules/alvao-sd-custom-apps/applications/periodic-custom-actions">IPeriodicAction</a></td>
  <td>Periodická akce</td>
  <td>Asset Management, Service Desk</td>
  </tr>
      <tr>
  <td><a href="../../../../../../modules/alvao-am-custom-apps/applications/i-entity-tab">IEntityTab</a></td>
  <td>Vlastní záložka na stránce entity</td>
  <td>Asset Management, Service Desk</td>
      </tr>
  </tbody>
  </table>
  <p>Každý skript představuje konkrétní prvek uživatelského rozhraní nebo jiný typ rozšíření programu, který je implementací konkrétního rozhraní v jazyce C#. Šablony jsou pojmenovány stejně jako rozhraní.</p>
  </li>
  <li><strong>Název</strong> - zadejte název skriptu. Doporučujeme skripty pojmenovat názvem třídy, kterou implementují. Například třída vlastního příkazu <em>Open document</em>, která implementuje rozhraní <em>IEntityCommand</em>, by se mohla jmenovat <em>OpenDocumentCommand</em> a název skriptu by byl stejný. Výběrem šablony se do názvu skriptu automaticky doplní příslušná koncovka.</li>
	</ul>

</asp:Content>

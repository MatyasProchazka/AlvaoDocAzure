<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>	Vlastní javascript na formuláři pro nový požadavek</h1>

    <p>Vzhled a chování systémového <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">formuláře pro odeslání nové položky</a> můžete ovlivnit vlastním javascriptem. Můžete například:</p>
    <ul>
        <li>Skrývat a zobrazovat určité položky formuláře v závislosti na hodnotách jiných položek.</li>
        <li>Určit, které položky jsou povinné v závislosti na hodnotách jiných položek.</li>
    </ul>
    <p>Zadat vlastní javascript do servisního formuláře pomocí příkazu <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/javascript">Javascript</a> v <b>ALVAO WebApp - Administration - Services - New Request Form.</b> </p>

    <p>Ve skriptu můžete použít následující funkce:</p>

    <table>
        <thead>
            <tr>
                <th>Název</th>
                <th>Popis</th>
                <th>Příklady</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>getElement(itemName)</td>
                <td>Funkce vrátí objekt prvku <i>itemName</i> ve formuláři. </td>
                <td>
                   <span class="console">var $ticketName = self.getElement('tHdTicket.sHdTicket' </span>)                </td>
            </tr>
            <tr>
                <td>getValue(itemName)</td>
                <td>Funkce vrací hodnotu, která je aktuálně vyplněna ve formuláři v položce <i>itemName</i>.<br />
                    <br />
                    Funkce vrací objekt {id, value}  <ul>
      <li>Aktuální pole: {null, vyplněná hodnota}</li>
      <li>Pole Datum: {null, objekt typu <i>Date()</i>}</li>
      <li>Pole výběru: {identifikace vybrané položky, zobrazený text položky}</li>
      <li><i>Objekty</i> pole: Pole[{identifikátor objektu, cesta k objektu}]</li>
      <li><i>Přílohy</i> pole: {null, null}</li>
  </ul>
                </td>
                <td>
                   <span class="console">var ticketName = self.getValue('tHdTicket.sHdTicket').value; <br />
                        <br />var slaId = self.getValue('tHdTicket.liHdTicketSlaId').id </span>               </td>
            </tr>
            <tr>
                <td>setValue(itemName, value)</td>
                <td>Vyplní položku <i>itemName</i> ve formuláři <i>hodnotou</i> value.<br />
                    <br />
                    U položek typu <i>int</i> s výběrem hodnot zadejte v parametru <i>value</i> v nabídce id hodnoty<a href="../../alvao-asset-management/implementation/customization/database#U_dbo.tColumnValue">(tColumnValue</a>.iColumnValueId), nikoli její text.  Je možné vkládat i hodnoty, ke kterým uživatel nemá oprávnění.<br />
                    <br />
                    U položek s datem zadejte v parametru <i>value</i> objekty typu <i><a href="https://www.w3schools.com/js/js_date_formats.asp">Date(</a></i> ).<br />
                    <br />
                    Pokud do položky číselného typu (int, float) zadáte jinou než číselnou hodnotu, hodnota položky se nezmění a na konzoli prohlížeče se vypíše chyba.<br />
                    <br />
                    Do polí s formátovaným textem (HTML) lze vkládat pouze prostý text (bez značek HTML)     </td>
                <td>
                   <span class="console">self.setValue('tHdTicket.@Description', 'Kóduji jako mistr'); <br />
                        <br />self.setValue('tHdTicket.Objects', 100); <br />
                        <br />self.setValue('tHdTicketCust.CustomDate', new Date(&quot;2020-03-01T12:00 </span>&quot;))                </td>
            </tr>
            <tr>
                <td>show(itemName)</td>
                <td>Zobrazí položku <i>itemName</i> na formuláři, pokud byla skrytá.</td>
                <td>
                   <span class="console">self.show('tHdTicket.@Description') </span>               </td>
            </tr>
            <tr>
                <td>hide(itemName)</td>
                <td>Skryje položku <i>itemName</i> ve formuláři, pokud je zobrazena a není vyžadována. Skryté položky se při odeslání formuláře neodesílají.</td>
                <td>
                   <span class="console">self.hide('tHdTicket.@Description' </span>)                </td>
            </tr>
            <tr>
                <td>setRequired(itemName)</td>
                <td>Nastaví položku <i>itemName</i> jako povinnou, tj. uživatel musí před odesláním formuláře vyplnit její hodnotu.</td>
                <td>
                   <span class="console">self.setRequired('tHdTicket.@Description' </span>)                </td>
            </tr>
            <tr>
                <td>setNotRequired(itemName)</td>
                <td>Nastaví položku <i>itemName</i> jako nepovinnou. Položky, jejichž povinnost je nastavena v servisním procesu, nelze tímto způsobem nastavit jako nepovinné.</td>
                <td>
                   <span class="console">self.setNotRequired('tHdTicket.@Description' </span>)                </td>
            </tr>
            <tr>
                <td>onChange(itemName, function())</td>
                <td>Při změně hodnoty položky <i>itemName</i> se automaticky zavolá definovaná funkce.<br />
                    <br />
                    Funkci <i>onChange()</i> volejte pouze v těle funkce <i>initHandlers()</i>.<br />
                    <br />
                    Definovaná funkce se obvykle volá pouze při ukončení vstupního pole. V polích s výběrem hodnot se volá po výběru hodnoty z nabídky.  Ve vstupním poli s formátovaným textem je volána po každém napsaném znaku, změně formátování atd. Funkce je volána také při programové změně hodnoty pomocí funkce <i>setValue()</i>         </td>
                <td>
                   <span class="console">function ticketNameChanged() {<br />var ticketName = self.getValue('tHdTicket.sHdTicket').value;<br />self.show('tHdTicket.@Description');<br />self.setValue('tHdTicket.@Description", 'Name: ' + ticketName);<br />};<br />
                        <br />NewFormScript.prototype.initHandlers = function () { </span> <span class="console"> <br />self.onChange('tHdTicket.sHdTicket', ticketNameChanged);<br />} </span><br />
                    <br />
                    Při změně názvu požadavku ve formuláři výše uvedený skript zobrazí pole popisu požadavku a vloží do něj zadaný název požadavku.<br />
                    <br />
                    Funkci <i>ticketNameChanged(</i> ) můžete nahradit anonymní funkcí definovanou přímo v argumentu volání funkce <i>onChange()</i>         </td>
            </tr>
        </tbody>
    </table>
    <p>Hodnoty parametru <i>itemName</i>:</p>
    <table>
        <thead>
            <tr>
                <th>Položka formuláře</th>
                <th>itemName</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Název</td>
                <td>tHdTicket.sHdTicket</td>
            </tr>
            <tr>
                <td>Popis</td>
                <td>tHdTicket.@Description</td>
            </tr>
            <tr>
                <td>Attachments</td>
                <td>tHdTicket.@Attachments</td>
            </tr>
            <tr>
                <td>Sla</td>
                <td>tHdTicket.liHdTicketSlaId</td>
            </tr>
            <tr>
                <td>Související organizace</td>
                <td>tHdTicket.RelatedAccountId</td>
            </tr>
            <tr>
                <td>Číslo zařízení</td>
                <td>tHdTicket.sHdTicketDeviceCode</td>
            </tr>
            <tr>
                <td>Priorita</td>
                <td>tHdTicket.Priority</td>
            </tr>
            <tr>
                <td>Fall</td>
                <td>tHdTicket.Impact</td>
            </tr>
            <tr>
                <td>Emergency</td>
                <td>tHdTicket.Urgency</td>
            </tr>
            <tr>
                <td>Objekty</td>
                <td>tHdTicket.Objekty</td>
            </tr>
            <tr>
                <td>&lt;vlastní položka&gt;</td>
                <td>tHdTicketCust.&lt;název sloupce databáze&gt;</td>
            </tr>
        </tbody>
    </table>
    <p>Formulář můžete upravit pomocí standardního javascriptu a nad rámec zde popsaných funkcí.</p>

    <p>Příklady skriptů:</p>
    <p>
        1. Příklady        <br />
        Pokud má pole <i>Priorita</i> (tHdTicket.Priority) hodnotu <i>kritickou</i> nebo <i>vysokou</i>, objeví se ve formuláři vlastní položka <i>Důvod</i> (tHdTicketCust.PriorityReason), která bude povinná        <br />
        <br />

       <span class="console"> var self; <br />NewFormScript.prototype.init = function () { <br />self = this; <br />//Skrýt položku Odůvodnění při načtení formuláře <br />self.hide('tHdTicketCust.PriorityReason'); <br />}<br />
            <br />NewFormScript.prototype.initHandlers = function () { <br />//Zaznamená změnu položky Priorita <br />self.onChange('tHdTicket.Priority', function(){ <br />var priorityValue = self.getValue('tHdTicket.Priority').value;<br />//Kontrola, zda má položka Priorita vysokou nebo kritickou hodnotu <br />if (priorityValue == 'high' || priorityValue == 'critical'){ <br />//Nastavení položky Justification jako povinné <br />self.setRequired('tHdTicketCust.PriorityReason'); <br />//Zobrazení položky Reason <br />self.show('tHdTicketCust.PriorityReason"); <br />} else { <br />//Nastavení položky Reason jako nepovinné <br />self.setNotRequired('tHdTicketCust.PriorityReason'); </span> <span class="console"> <br />self.hide('tHdTicketCust.PriorityReason'); </span> <span class="console"> <br />} </span> <span class="console"> <br />}); </span> <span class="console"> <br />} } </span></p>
    <p>
        2. Příklad        <br />
        Ve vlastním poli <i>Kontaktní telefon</i> (tHdTicketCust.ContactPhone) chceme zobrazit zástupný symbol: "Zadejte v mezinárodním formátu, např. +420 123 456 789"    <br />
        <br />

       <span class="console"> var self; <br />NewFormScript.prototype.init = function () { <br />self = this; <br />//Nastavení zástupného znaku na položce <br />self.getElement('tHdTicketCust.ContactPhone').find('input').attr('placeholder', 'Zadejte v mezinárodním formátu, např. +420 123 456 789'); <br />} </span></p>

</asp:Content>

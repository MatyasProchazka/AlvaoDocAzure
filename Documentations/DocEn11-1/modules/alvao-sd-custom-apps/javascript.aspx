<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom javascript on new request form</h1>

    <p>You can affect the appearance and behavior of the system <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">new-ticket-item submission form</a> with your own javascript. For example, you can:</p>
    <ul>
        <li>Hide and show certain form items depending on the values of other items.</li>
        <li>Specify which items are required, depending on the values of other items.</li>
    </ul>
    <p>Enter custom javascript into the service form using the <b>ALVAO WebApp - Administration - Services - New Request Form</b> command <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/javascript" translate="no">Javascript</a>.</p>

    <p>You can use the following functions in the script:</p>

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Examples</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">getElement(itemName)</td>
                <td>Function returns the object of the <i translate="no">itemName</i> item in the form. </td>
                <td>
                    <span class="console" translate="no">var $ticketName = self.getElement('tHdTicket.sHdTicket');
                    </span>
                </td>
            </tr>
            <tr>
                <td translate="no">getValue(itemName)</td>
                <td>The function returns the value that is currently filled in the form in the <i translate="no">itemName</i> item.<br />
                    <br />
                    The function returns an {id, value} object:
  <ul>
      <li>Current fields: {null, filled value}</li>
      <li>Date field: {null, object of type <i>Date()</i>}</li>
      <li>Selection field: {selected item id, item text displayed}</li>
      <li>Field <i>Objects</i>: Array[{object id, object path}]</li>
      <li>Field <i>Attachments</i>: {null, null}</li>
  </ul>
                </td>
                <td>
                    <span class="console" translate="no">var ticketName = self.getValue('tHdTicket.sHdTicket').value;
                        <br />
                        <br />
                        var slaId = self.getValue('tHdTicket.liHdTicketSlaId').id; </span>
                </td>
            </tr>
            <tr>
                <td translate="no">setValue(itemName, value)</td>
                <td>Fills the <i translate="no">itemName</i> item in the form with the value <i translate="no">value</i>.<br />
                    <br />
                    For items of type <i translate="no">int</i> with a selection of values, specify the id of the value in the <i translate="no">value</i> parameter in the menu (<a href="../../alvao-asset-management/implementation/customization/database#U_dbo.tColumnValue" translate="no">tColumnValue</a>.iColumnValueId), not its text. It is also possible to insert values that the user does not have permission to.<br />
                    <br />
                    For date items, specify objects of type <i translate="no"><a href="https://www.w3schools.com/js/js_date_formats.asp">Date()</a></i> in the <i translate="no">value</i> parameter.<br />
                    <br />
                    If you enter a non-numeric value into an item of numeric type (int, float), the value of the item will not change and an error will be printed to the browser console.<br />
                    <br />
                    Only plain text (without HTML tags) can be inserted into fields with formatted text (HTML).
                </td>
                <td>
                    <span class="console" translate="no">self.setValue('tHdTicket.@Description', 'I am coding like a champ');
                        <br />
                        <br />
                        self.setValue('tHdTicket.Objects', 100);
                        <br />
                        <br />
                        self.setValue('tHdTicketCust.CustomDate', new Date(&quot;2020-03-01T12:00&quot;));
                    </span>
                </td>
            </tr>
            <tr>
                <td translate="no">show(itemName)</td>
                <td>Shows the <i translate="no">itemName</i> item on the form if it was hidden.</td>
                <td>
                    <span class="console" translate="no">self.show('tHdTicket.@Description');
                    </span>
                </td>
            </tr>
            <tr>
                <td translate="no">hide(itemName)</td>
                <td>Hides the <i translate="no">itemName</i> item on the form if it is displayed and not required. Hidden items are not sent when the form is submitted.</td>
                <td>
                    <span class="console" translate="no">self.hide('tHdTicket.@Description');
                    </span>
                </td>
            </tr>
            <tr>
                <td translate="no">setRequired(itemName)</td>
                <td>Sets the <i translate="no">itemName</i> item as mandatory, i.e. the user must fill in the value before submitting the form.</td>
                <td>
                    <span class="console" translate="no">self.setRequired('tHdTicket.@Description');
                    </span>
                </td>
            </tr>
            <tr>
                <td translate="no">setNotRequired(itemName)</td>
                <td>Sets the <i translate="no">itemName</i> item as optional. Items whose obligation is set in the service process cannot be set as optional in this way.</td>
                <td>
                    <span class="console" translate="no">self.setNotRequired('tHdTicket.@Description');
                    </span>
                </td>
            </tr>
            <tr>
                <td translate="no">onChange(itemName, function())</td>
                <td>When the value of the <i translate="no">itemName</i> item is changed, the defined function is automatically called.<br />
                    <br />
                    Call the <i translate="no">onChange()</i> function only in the body of the <i translate="no">initHandlers()</i> function.<br />
                    <br />
                    The defined function is normally called only when the input field is exited. In fields with a selection of values, it is called after selecting a value from the menu. In the formatted text input field, it is called after each typed character, formatting change, etc. The function is also called when the value is changed programmatically by the <i translate="no">setValue()</i> function.
                </td>
                <td>
                    <span class="console" translate="no">function ticketNameChanged() {<br />
                        &nbsp;var ticketName = self.getValue('tHdTicket.sHdTicket').value;<br />
                        &nbsp;self.show('tHdTicket.@Description');<br />
                        &nbsp;self.setValue('tHdTicket.@Description', 'Name: ' + ticketName);<br />
                        };<br />
                        <br />
                        NewFormScript.prototype.initHandlers = function () {
                        <br />
                        &nbsp;self.onChange('tHdTicket.sHdTicket', ticketNameChanged);<br />
                        }
                    </span>
                    <br />
                    <br />
                    When you change the request name on the form, the above script displays the request description field and inserts the specified request name into it.<br />
                    <br />
                    You can replace the <i translate="no">ticketNameChanged()</i> function with an anonymous function defined directly in the argument of the <i translate="no">onChange()</i> function call.
                </td>
            </tr>
        </tbody>
    </table>
    <p>Values of the <i translate="no">itemName</i> parameter:</p>
    <table>
        <thead>
            <tr>
                <th>Form Item</th>
                <th translate="no">itemName</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Name</td>
                <td translate="no">tHdTicket.sHdTicket</td>
            </tr>
            <tr>
                <td>Description</td>
                <td translate="no">tHdTicket.@Description</td>
            </tr>
            <tr>
                <td>Attachments</td>
                <td translate="no">tHdTicket.@Attachments</td>
            </tr>
            <tr>
                <td>Sla</td>
                <td translate="no">tHdTicket.liHdTicketSlaId</td>
            </tr>
            <tr>
                <td>Related Organisation</td>
                <td translate="no">tHdTicket.RelatedAccountId</td>
            </tr>
            <tr>
                <td>Device Number</td>
                <td translate="no">tHdTicket.sHdTicketDeviceCode</td>
            </tr>
            <tr>
                <td>Priority</td>
                <td translate="no">tHdTicket.Priority</td>
            </tr>
            <tr>
                <td>Fall</td>
                <td translate="no">tHdTicket.Impact</td>
            </tr>
            <tr>
                <td>Emergency</td>
                <td translate="no">tHdTicket.Urgency</td>
            </tr>
            <tr>
                <td>Objects</td>
                <td translate="no">tHdTicket.Objects</td>
            </tr>
            <tr>
                <td>&lt;custom fields&gt;</td>
                <td><span translate="no">tHdTicketCust</span>.&lt;database column name&gt;</td>
            </tr>
        </tbody>
    </table>
    <p>You can modify the form using standard javascript and beyond the functions described here.</p>

    <p>Examples of script:</p>
    <p>
        1. Example
        <br />
        If the <i translate="no">Priority</i> field (tHdTicket.Priority) has a value of <i>critical</i> or <i>high</i>, a custom <i>Reason</i> item <span translate="no">(tHdTicketCust.PriorityReason)</span> will appear on the form and this item will be mandatory.
        <br />
        <br />

        <span class="console" translate="no">&nbsp;var self;
            <br />
            &nbsp;NewFormScript.prototype.init = function () {
            <br />
            &nbsp;&nbsp;self = this;
            <br />
            &nbsp;&nbsp;&nbsp;//Hide the Justification item when the form is loaded
            <br />
            &nbsp;&nbsp;self.hide('tHdTicketCust.PriorityReason');
            <br />
            &nbsp;}<br />
            <br />

            &nbsp;NewFormScript.prototype.initHandlers = function () {
            <br />
            &nbsp;&nbsp;&nbsp;//Logging a change to the Priority item
            <br />
            &nbsp;&nbsp;self.onChange('tHdTicket.Priority', function(){
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;var priorityValue = self.getValue('tHdTicket.Priority').value;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Check whether the Priority item has a high or critical
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;if (priorityValue == 'high' || priorityValue == 'critical'){
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Setting the Justification item as mandatory
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.setRequired('tHdTicketCust.PriorityReason');
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Display the Reason item
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.show('tHdTicketCust.PriorityReason');
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Setting the Reason item as optional
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.setNotRequired('tHdTicketCust.PriorityReason');
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.hide('tHdTicketCust.PriorityReason');
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
            <br />
            &nbsp;&nbsp;&nbsp;});
            <br />
            &nbsp;}
        </span>
    </p>
    <p>
        2. Example
        <br />
        In the custom field <i>Contact Phone</i> (tHdTicketCust.ContactPhone) we want to display the placeholder: 'Enter in international format e.g. +420 123 456 789'.
        <br />
        <br />

        <span class="console" translate="no">&nbsp;var self;
            <br />
            &nbsp;NewFormScript.prototype.init = function () {
            <br />
            &nbsp;&nbsp;self = this;
            <br />
            &nbsp;&nbsp;&nbsp;//Set placeholder on item
            <br />
            &nbsp;&nbsp;self.getElement('tHdTicketCust.ContactPhone').find('input').attr('placeholder', 'Enter in international format e.g. +420 123 456 789');
            <br />
            }
        </span>
    </p>

</asp:Content>

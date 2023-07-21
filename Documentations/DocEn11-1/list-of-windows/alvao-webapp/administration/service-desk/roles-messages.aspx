<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Incoming message rules</h1>
<p>This page is used to manage the rules that the ALVAO Service Desk applies to incoming email messages that have been delivered to <a href="../../../../alvao-service-desk/implementation/services">service inboxes</a> and based on which new requests have been created.</p>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	  Messages that contain a request tag in the subject are automatically associated with an existing request and these rules do not apply to them.</div>
  <p>Individual rules are applied to an incoming message sequentially in the same order as they appear on this page (when sorted by the <em>Order</em> column). Each rule consists of a <em>condition</em> and an <em>action</em>. The action is only executed if the condition is met. <br /> Once one of the rules (if more than one is set) is evaluated as true for a message, processing ends, not all are evaluated.</p>



  <p>Options:</p>
<ul>
 <li id="commands"><strong>Commands Panel</strong><ul>
  <li><strong>New Rule</strong> - create <a href="roles-messages/create-roles-messages">new rule</a>.</li>
  <li><strong>Edit</strong>- edit the selected rule.   </li>
  <li><strong>Delete</strong> - delete the selected rule.  </li>
   <li><strong>Down</strong> - move the selected rule down one position.</li>
   <li><strong>Up</strong> - move the selected rule up one position.</li>
 </ul>
  
 </li>

 <li><strong>Rules table</strong>- contains all the rules created. The table can be <a href="../../../../alvao-asset-management/working-with-tables">
 customize</a>.</li>
  
 <li><strong>Selected Rule</strong> - when you select a rule in the table, <a href="roles-messages/detail">preview</a> will appear to the right of the table
  with information about the selected rule.</li>
</ul>

  </asp:Content>

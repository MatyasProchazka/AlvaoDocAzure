<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h2>Required items</h2>
<p>This window is used to select the mandatory items to move to a specific request status.</p>
  <p>Options:</p>
  <ul>
  <li><strong>List of required items</strong> - for items that must be completed before the request transitions to the edited status, enable the option. To enable the obligation for an item that is not in the list, first add it to a process, see <em>ALVAO WebApp - Administration - Service Desk - Processes -</em> <a href="../request-items">Request Items</a>.</li>
  </ul>

<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	In situations where mandatory items cannot be forced to be filled in, but a transition to another status is desired, the mandatory items are ignored. This is the case, for example, when the request is reopened based on an email from the requester, the approval deadline has expired, etc.</div>

</asp:Content>

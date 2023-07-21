<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Intervals for operating hours</h1>
	<p>This window is used to manage the intervals of the edited <a href="../../../../../../alvao-service-desk/implementation/services/operating-hours">operating hours</a>. Each interval specifies the days of the week and the time of day when the service is operational. Operating hours typically consist of multiple such intervals, e.g., one for Monday-Friday 8:00-12:00 and another for Monday-Friday 13:00-17:00, etc.</p> <p
	<p>Options:</p>
	<ul>
  <li><strong>Command Panel</strong><ul>
  <li><strong>New interval</strong> - create <a href="working-hour">new interval</a> of operating hours.</li>
  <li><strong>Edit</strong> - <a href="working-hour">edit</a> the selected operating hours interval.</li>
  <li><strong>Delete</strong> - remove the selected operating hours interval.</li>
  </ul>
  </li>
  <li><strong>Interval table</strong> - contains the intervals of the edited operating time. You can <a href="../../../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
  </ul>
  
	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  You can change the regular intervals for specific days or periods using <a href="exceptions-operating-hours">
	exceptions</a>.</div>


	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  The service time rule modification is immediately applied retroactively to all existing requests with an SLA with a given service time. If you do not want to apply the modification retroactively, set the <em>Effective by</em> date for an existing rule and create a new rule to replace it as of that date (see <em>Effective by</em>).</div>


	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	A single runtime rule should have a runtime of no less than 1 hour. For shorter time rules, the value of the <em>Current Target (Remaining)</em> column in the <a href="../../../../requests/table-of-requests">requests table</a> may not be calculated correctly.</div>


</asp:Content>

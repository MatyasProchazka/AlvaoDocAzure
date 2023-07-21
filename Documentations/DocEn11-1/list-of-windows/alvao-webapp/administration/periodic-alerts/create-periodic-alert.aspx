<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New periodic alert</h1>
  <p>Use this form to create a new <a href="detail">periodic alert</a>.</p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        A poorly defined SQL query can irreversibly damage the Alvao database. Always create and test SQL queries on a testing copy of the production database.
    </div>

  <p>Options:</p>
	<ul>
  <li><strong>Name</strong> - enter the name of the alert.</li>
  <li><strong>Description</strong> - enter a description of the alert.</li>
  <li><strong>SQL script</strong> - insert the script for evaluating the alert.  For more information about script creation and examples, see <a href="../../../../alvao-asset-management/implementation/periodic-alerts">Periodic Alerts</a></li>
  <li><strong>Run above the analytical database</strong> - enable if you want alerts to be evaluated on <a href="../../../../alvao-asset-management/implementation/analytic-database">analytic database</a>.
  Using the analytic database has the advantage that more computationally intensive queries do not slow down the production database and can therefore run for up to 10 minutes, whereas the limit for queries to the production database is set to 30 seconds.  The option is only active if the use of the analytical database is enabled.</li>
  <li><strong>The data table to be attached as a CSV file</strong> - enable if you want to attach a data table to an email also as a CSV file.</li>
 <li><strong>Scheduling</strong><ul>
     <li><strong>Start</strong> - enter the date and time when the alert will start sending. If repeated, the alert will always be sent at the specified time.</li>
     <li><strong>Sending period</strong> - select the period at which alerts will be evaluated and sent.</li>
     </ul>
        </li>
</ul>

</asp:Content>

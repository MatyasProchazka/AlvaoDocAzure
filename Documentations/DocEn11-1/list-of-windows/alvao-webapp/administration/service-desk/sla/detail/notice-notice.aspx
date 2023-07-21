﻿<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Notification rule</h1>

<p>This window is used to create and edit a single notification rule. There can be multiple rules for a single <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a>.</p>

<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	For a more detailed explanation of each user role, see <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">here</a>.
</div>

<p>Options:</p>

<ul>
  <li><strong>Alert Severity</strong> - select the icon that will appear in the Requests table in the Alerts column and in the request header when the alert rule condition is met.</li>
  <li><strong>Alert Type</strong>
  <ul>
  <li><strong>Alert for request not being resolved</strong> - select if you want to send notification in case of inactivity of a user.&nbsp; <ul>
  <li><strong>Inactive Users</strong> - select from the menu the group of users whose inactivity should be notified.   A user is considered inactive if further processing of the request depends on the user and no record has been created in the request log during the specified inactivity period. <em>solver Group</em> can be inactive only if the request does not have a specific solver.  A <em>Requester</em> can only be inactive if it is waiting for a response (i.e., e.g., the solver has sent a message to the requester and has enabled the <a href="../../../../../../alvao-service-desk/requests/send-message">wait for response</a> option).
  See also <a href="../../../../../../alvao-service-desk/requests/wait-for-response">wait for Requester</a>.
  </li>
  <li><strong>Inactive time</strong> - enter the inactivity period after which a notification will be sent. The inactivity time is counted in the SLA's operating hours.</li>
  </ul>
  </li>
  <li><strong>First response deadline expires in</strong> - select if you want to send notifications when the first response deadline is approaching.<br />
  Enter the time to first response in hours:minutes format. A notification will be sent if the time to first response deadline for a request falls below the specified time. If you specify a value of 0, the alert will be sent only when the first response time expires.  </li>
  <li><strong>Deadline for resolution expires in</strong> - select if you want to send notifications when the request is about to be resolved.<br />
  Enter the time to resolution deadline in the format hours:minutes. A notification will be sent if the time to resolution deadline falls below the specified value. If you specify a value of 0, the alert will be sent only when the resolution deadline expires.  </li>
  <li><strong>Internal target deadline expires in</strong> - select to send alerts when the <a href="../../../../../../alvao-service-desk/requests/internal-target">internal target</a> deadline is approaching.<br />
  Enter the time to the internal target deadline in the format hours:minutes. An alert is sent when the time to deadline of an internal target request falls below the specified value. If you specify a value of 0, the alert is sent only when the internal target deadline expires.  </li>
  </ul>
  </li>
  <li><strong>Send alert by email</strong> - enable this option if you want to send the alert by email. If the option is not enabled, the alert will only appear in the request table and on the request page. <ul>
  <li><strong>Individually and immediately</strong>&nbsp; - alerts will be sent when the send condition of the rule is met.   A separate notification will be sent for each request from the service email address. <ul>
  <li><strong>Repeat alerts every</strong> - enable this if you want to repeat the alert when there is an ongoing problem, and specify a repeat period in the format hours:minutes. The period is calculated in operating hours.  </li>
  </ul>
  </li>
  <li><strong>Send in bulk at</strong> - alerts will be sent in a summary message once per day.<br />
  Specify the time at which a summary message will be sent for all requests that have the same send time set and meet at least one of the rules for sending alerts.  The summary message is sent only on days when the service is open according to the operating hours specified in the SLA.    <ul>
  <li><strong>Set Sender</strong> - Set the email address from which summary alerts will be sent.   This setting is common to all rules in all SLAs.  </li>
  </ul>

  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The time of posting is stored in UTC and does not respect the transitions between daylight saving time and standard time. For example, if you enter the time in summer, it will be offset by an hour in winter and so will be displayed in the settings.  </div>

  </li>
  <li><strong>Alert Recipients</strong> - select from the menu the recipient of the alert to which the email notification will be sent. <ul>
  <li><strong>Search for a person or group</strong> - enter part of the user name or user group name and then select the user or group from the menu.   This field only appears if you have selected the recipient of the <em>Other Recipients</em> alert.
  </li>
  </ul>
  </li>
  </ul>
  </li>
</ul>

</asp:Content>

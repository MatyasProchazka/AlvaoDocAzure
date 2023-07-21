<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New SLA</h1>
<p>Use this form to create a new <a href="../../../../../alvao-service-desk/implementation/services/sla">
SLA</a>.</p>
  <p>Options:</p>
	<ul>
 <li><strong>SLA name</strong> - enter the name of the SLA, e.g. <em>.
 Gold</em>,
 <em>Silver</em> etc.</li>
 <li><strong>Description</strong> - enter a verbal description of the SLA. This description is displayed to applicants.</li>
 <li><strong>Parameters</strong>
  <ul>
 <li><strong>Operating hours</strong> - select <a href="../../../../../alvao-service-desk/implementation/services/operating-hours">operating hours</a>. </li>
 <li><strong>Time until first response</strong> - enable if you want to set the time for the resolution team to respond to a newly submitted request.<br/> A response is considered to be a reply to the requester via email (except for an automatic notification of the creation of a request) or a recording of any event (such as a phone call) that has the requester listed in the <em>To whom</em> field. If the request is established on behalf of the requester by the main solver based on a phone call or in-person meeting with the requester (see <a href="../../../requests/new-request">New Request</a> - <em>Method of Request</em> item), the first response is satisfied by the mere establishment of the request.<br /><ul>
  <li><strong>hours from request submission (within operating hours) </strong> - enter the number of hours.</li>
  </ul>
  </li>
 <li><strong>Time to resolve request</strong> -&nbsp; enable if you want to set the maximum time from request submission to resolution. The <em>Deadline</em> item is then automatically set in the request as soon as it is submitted, according to the value specified in the SLA.  <ul>
  <li><strong>hours from request submission (within operating hours) </strong> - enter the number of hours.</li>
  </ul>
  </li>
 <li><strong>Pause SLA while waiting for requester</strong>
 - Enable if you do not want to count the time of any <a href="../../../../../alvao-service-desk/requests/wait-for-response">waiting for a requester</a> until the request is resolved. The request resolution date specified by the SLA will automatically be pushed back while waiting for the requester. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 We recommend checking requests with a suspended SLA periodically (e.g. 1x/day or week) and requesting the requester's cooperation after a certain period of waiting. In the window <a href="../../../requests/table-of-requests">Requests</a> you can create a <em>Pending Requester</em> view with a filter of <em>Pending Requester</em> &gt; 0. </div>

 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The <em>waiting for requester</em> time is only added to the deadline if the resolution date is set according to the SLA. If the deadline is set manually, the <em>Waiting for Claimant</em> time is not added to the deadline.
 </div>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 In the window <a href="../../../requests/table-of-requests">Requests</a>, when sorted by the <em>Icons</em> column by default, requests with a currently suspended SLA are automatically pushed to the bottom of the table. </div></li>

  </ul>
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 The parameter change is also applied retroactively to any requests already created with the given SLA. If you want to apply the change only to newly created requests, first create a new SLA according to the new conditions, assign it to the Requesters in the selected services, and remove the old SLA from the Requesters. It is advisable to add an expiry date to the name of the removed SLAs, e.g. "Z2 - medium (valid until 14.4.2014)".</div>
 </li>
 <li><strong>Other</strong>
  <ul>
 <li><strong>Contract (number)</strong> - enter the designation of the physical contract.</li>
 <li><strong>Quality index</strong> - enter if you want to rank SLAs by quality. Quality is determined by a number: the higher the number, the higher the quality.</li>
 <li><strong>Notes</strong> - enter additional internal notes if necessary.</li>
      <li>Other custom filed may be placed here.</li>
  </ul>
 </li>
	</ul>
</asp:Content>

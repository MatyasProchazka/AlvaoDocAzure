<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Approval step</h1>
<p>This window is used to create and edit the step of the <a href="../../../../../../alvao-service-desk/implementation/services/processes/request-approval">approval scheme</a> being edited.</p>
<p>Options:</p>
<ul>
	<li><strong>Approver</strong> - select an approver for this approval step.<ul>
 <li><strong>Requester</strong> - the approver will be the current requester of the request.<div class="note">
  <div class="icon">
  </div>
  <div class="title">
  Note:</div>
 If the Requester of the request is a non-registered user (Guest), the approval step will be automatically approved. This also applies to the <em>The requester's direct manager</em> and <em>The requester's top manager</em> approvers.</div>
  &nbsp;<div class="note">
  <div class="icon">
  </div>
  <div class="title">
  Note:</div>
 If the Requester of a request changes during the approval process, the new Requester will be able to approve the request but will not receive an additional email notification of the start of the approval.  This also applies to the <em>The requester's direct manager</em> and the <em>The requester's top manager</em> approvers.</div>
  </li>
  <li><strong>The requester's direct manager</strong> - the approver will be the direct supervisor of the user for whom the request was created, see <a href="../../../../../../list-of-windows/alvao-webapp/requests/table-of-requests">Requested for</a>. A request is usually created for the Requester of the request. If the supervisor is also the requester of the request, the step is automatically approved.</li>
  <li><strong>The requester's top manager</strong> -
  The approver will be the highest supervisor of the user for whom the request was created, i.e., the user who is above the user selected in the <em>Required for </em>field in the organizational hierarchy and has no supervisor. The request is usually created for the Requester of the request. If the highest supervisor is also the Requester of the request, the step is automatically approved.</li>
  <li><strong>Group</strong> - The approvers will be all members of the specified <a href="../../../../../../alvao-asset-management/implementation/users/groups">user group</a>. It is sufficient for any one of them to approve or reject a step. <ul>
  <li><strong>Only the requester or manager</strong> - turn on if you want to select only the supervisor of the user for whom the request was created, or that user directly, as the approver among the members of the specified group. For example, if you select the <em>Division Directors</em> group and enable this option, only the director of the division to which the user for whom the request was created will approve the request. If the group contains multiple directors, the closest one (i.e., the one lowest in the organizational hierarchy) will be selected as the approver.</li>
  </ul>
  </li>
  <li><strong>Custom</strong> - approvers are defined by the custom Alvao customer extension.</li>
  <li><strong>Automatically approved by the requester</strong> -
 If the option is enabled and the approver of the step is the current requester of the request, the step will be automatically approved. The option is only available for <em>Group</em> and <em>Custom</em> types.</li>
  
	</ul></li>
  <li><strong>Expires in (hours)</strong> - if applicable, enter the time in hours (regardless of service hours, weekends and holidays) that approvers have to approve or deny the request. If the approver does not make a decision within that time, the approval will automatically terminate (expire) and no further steps in the approval scheme will be performed.</li>
	<li><strong>Custom form (URL)</strong> - if applicable, enter the path to
	<a href="../../../../../../modules/alvao-sd-custom-apps/custom-form-template">
	custom form to approve/reject</a> the request if you want to use it in this step.</li>
</ul>

<div class="note">
<div class="icon"></div>
<div class="title">Note:</div>
If there is a situation where there is no approver for an approval step, e.g. the applicant has no supervisor or the selected approver group has no members, the approval step is skipped. If this is the only step in the approval scheme, then the approval is not started and the next status needs to be manually advanced. In the case of the last step of the scheme, approval is terminated with the result of the previous step. </div>


</asp:Content>

<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">
</asp:Content>


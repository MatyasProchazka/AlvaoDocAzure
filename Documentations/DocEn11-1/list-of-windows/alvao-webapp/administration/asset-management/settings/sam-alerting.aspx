<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SAM - notification</h1>
<p>Setting user notifications within <a href="../../../../../itil/sam">
Software Asset Management</a> of irregularities related to the sw products they have installed on their computers. An alert is sent if there is no license assigned to the installation on the computer or the installation is not otherwise covered (e.g., shared license, special installation).</p>
<p>Options:</p>
	<ul>
 <li><strong>Messages</strong> -
 Setting the content of alerts, selecting recipients, and defining the conditions under which alerts are sent.  <ul>
 <li><strong>First Alert</strong> - turn on if you wish to send the first alert via email.  <ul>
 <li><strong>Alert:</strong>
 <ul>
 <li><strong>Person responsible for the SW on the PC</strong>
 - Enable if you want to send the first alert to the person responsible for the software on the PC, see property <a href="../../../../../alvao-asset-management/software-management/software-regular-auditing">Software Responsible</a>.</li>
 <li><strong>Direct manager of the person responsible for the software on the PC</strong> - enable if you want to send the first notification to the direct supervisor of the person responsible for the software on the PC.</li>
 <li><strong>Group Members</strong> - the first notification is sent to all members of the selected <a href="../../users/detail/membership">user group</a>.
 
 </li>
 </ul>
 </li>
 <li><a href="sam-alerting-message-template">Edit message template</a> - edit the template of the sent messages.</li>
 <li><strong>Detection period after first notification (days)</strong>
 - Enter the number of days after the first alert is sent that the software of the computer should be repeatedly detected until it is corrected. This time should be shorter than the time until the second alert is sent. </li>
 </ul>
 </li>
 
 <li><strong>Second alert</strong> - turn on if you wish to receive a second alert by email.  <ul>
 <li><strong>If not corrected until (days)</strong> -
 enter the number of days. If after this number of days a remedy is not agreed, a second notification will be sent.</li>
 <li><strong>Alert:</strong>
 <ul>
 <li><strong>Person responsible for the SW on the PC</strong>
 - enable if you want to send the second alert to the person responsible for the SW on the PC.</li>
 <li><strong>Direct manager of the person responsible for the SW on the PC</strong> - turn on if you want to send the second alert to the direct manager of the person responsible for the SW on the PC.</li>
 <li><strong>Group Members</strong> - the second notification is sent to all members of the selected <a href="../../users/detail/membership">user group</a>.
 
 </li>
 </ul>
 </li>
 <li><a href="sam-alerting-message-template">Edit message template</a>- edit the template of the sent messages.</li>
 
  </ul>
 </li>

 
 <li><strong>Third notification</strong> - turn on if you want to receive a third notification by email.  <ul>
 <li><strong>If not corrected until (days)</strong> -
 enter the number of days. If after this number of days from the second alert no remedy is agreed, a third alert will be sent.</li>
 <li><strong>Alert:</strong>
 <ul>
 <li><strong>The person responsible for the SW on the PC</strong>
 - enable if you want to send the third alert to the person responsible for the SW on the PC.</li>
 <li><strong>Direct smanager of the person responsible for the SW on the PC</strong> - turn on if you want to send the third alert to the direct manager of the person responsible for the SW on the PC.</li>
 <li><strong>Group Members</strong> - the third notification is sent to all members of the selected <a href="../../users/detail/membership">user group</a>.
 
 </li>
 </ul>
 </li>
 <li><a href="sam-alerting-message-template">Edit message template</a> - edit the template of the sent messages.</li>
 
  </ul>
 </li>
</ul>



 <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The user's direct manager is listed in the <a href="../../users/detail"> field.
  Supervisor</a> in the user settings in the ALVAO WebApp - Administration. </div>
 
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>

 The generated e-mail messages will be sent to all recipients at once (the "To" field will list the addresses of all recipients).
  
  </div>
  
 </li>
 <li><strong>Other</strong>
 <ul>
 <li><strong>Report send time</strong> - enter the time at which the alert should be sent (in hh:mm format).
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The send time is stored in UTC and does not respect the transition between daylight saving time and standard time. For example, if you enter the time in summer, it will be one hour offset in winter and will be displayed as such in the settings. </div>

 </li>
 <li><strong>Repeat last notice automatically after (the number of days from last notification)</strong>
 - turn on if you want to send alerts repeatedly and specify the period of sending (in days).</li>
 <li><strong>Alert only on computers whose SW detection is no older than (days)</strong> - turn on if you want to send only alerts for computers with current SW detection, and specify the maximum allowable detection age in days.</li>
	</ul>

 </li>
	</ul>


</asp:Content>

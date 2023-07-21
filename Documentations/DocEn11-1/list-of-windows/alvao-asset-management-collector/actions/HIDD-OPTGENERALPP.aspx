<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Settings - General</h1>
<p>Options:</p>
	<ul>
 <li><strong>Databases</strong>
  <ul>
 <li><a href="../../alvao-asset-management-console/file/db-manager">
 Set up connection</a>- database connection for Collector.</li>
 <li><strong>Database connection timeout (s)</strong> -
 specify the timeout for working with the database in seconds. The default value is 300s.</li>
  </ul>
 </li>
 <li><strong>Start</strong>
  <ul>
 <li><strong>Start as application after user logon</strong> - enabling this option will register Collector to start automatically when the user logs on to the computer.</li>
  </ul>
 </li>
 <li><strong>Protocol</strong>
  <ul>
 <li><strong>Log events</strong> -
 Enable if you want to generate a log of Collector activity.  The log is stored in the <em>AlvaoCollector</em> event log.</li>
 <li><strong>Detail</strong> - select the detail of the generated log: <ul>
 <li><strong>Status and Errors</strong> - only the regular &quot;liveness&quot; report of the detection and scanning threads is written to the log, as well as any errors.  This level is sufficient for normal system operation. </li>
 <li><strong>Medium</strong> - in addition, data on detections made, etc. is logged.
 </li>
  <li><strong>Detailed</strong> - detailed information about the Collector operation is written.
 <div class="caution">
  <div class="icon"></div>
  <div class="title">Caution:</div>
  If you set the log file detail to the <strong>Detailed</strong> level, the Collector will generate a large amount of data in the LOG file and the detection rate will be very slow. Therefore, setting it to the <strong>Detailed</strong> level is only recommended for troubleshooting and is not recommended for normal operation.  </div>
  </li>
 </ul>
 </li>
 <li><strong>Record the liveness (heartbeat) status of the detection and scanning process with a period (hours) </strong> - specify the interval in hours after which the &quot;liveness&quot; status of the detection and scanning threads will be logged. These messages are used to check the correct functionality of these threads and are always written to the log, for whatever detail is set. </li>
  </ul>
 </li>
	</ul>
	
	


</asp:Content>

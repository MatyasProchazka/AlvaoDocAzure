<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
	<ul>
 <li><strong>Protocol</strong>
  <ul>
 <li><strong>Write log to file</strong> -
 This option activates the generation of the Agent activity log to the specified file. </li>
 <li><strong>Detail</strong> -
 value determines the detail of the generated log. The <strong>Status and Errors</strong> value means a brief log (only the periodic &quot;liveness&quot; report of the detection and scanning threads is written to the log, as well as any errors). This level is sufficient for normal system operation. The <strong>Medium</strong> value generates a more detailed detection log. The <strong>Detailed</strong> value
 value is recommended to be set only in case of troubleshooting. </li>
 <li><strong>Immediately write to disk (slow)</strong> -
 This option disables buffering for writing the log to a file. </li>
  </ul>
 </li>
 <li><strong>Show icon in taskbar</strong> -
 displays the Agent icon in the taskbar (Windows 95/98/ME only).
 </li>
	</ul>
<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If you set the log detail in the file to the <strong>
 Detailed</strong>, the Agent will generate a large amount of data to the LOG file and the detection rate will be very slow. Setting it to <strong>
 Detailed</strong> should therefore only be used when searching for problems. We do not recommend using it at all in normal operation.</div>

<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If you enable the <strong>Write to disk immediately (slow)</strong> option,
 The agent will write the log in real time without buffering and the detection rate will be very slow. The advantage is that if the application terminates unexpectedly, the last log entry will also be written to the log. Use instant write only when troubleshooting. We do not recommend using it in normal operation.</div>

</asp:Content>

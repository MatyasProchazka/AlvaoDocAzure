<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New server </h1>
  <p>Use this form to set up a new server that has <a href="../../../../../alvao-asset-management/implementation/detection/collector">Asset Management Collector</a> installed.</p>
  <p>Features:</p>
  <ul>
  <li><strong>General</strong>
  <ul>
  <li><strong>Hostname</strong> - enter the network name of the server.</li>
  <li><strong>Description</strong> - enter a description of the server if applicable.</li>
  </ul>
  </li>
  <li><strong>Detection</strong>
 <ul>
  <li><strong>Detection Processing</strong>
  <ul>
  <li><strong>Detect and evaluate (evaluation scheduling will not take effect)</strong> - Select if Collector should evaluate the detected data immediately after performing the detection. Collector writes the changes to the object tree and to <em>Installation registry</em>.</li>
  <li><strong>Detect and Schedule Evaluation</strong> - Select if Collector should perform detections but not evaluate the detected data.Collector will only schedule the evaluation of the data.   <div class="note">
   <div class="icon"></div>
   <div class="title">Note:</div> If you want to use scheduling, we recommend using this setting.</div>
  <div class="tip">
   <div class="icon"></div>
   <div class="title">Tip:</div> When deploying multiple instances of Collector on a network, you can use this option to have some instances only detect computers and, for example, one instance can evaluate the detections. This will speed up data collection (and delay data evaluation).</div>
  </li>
   </ul>
  </li>
  <li><strong>Use the PING command to determine if a computer is switched on</strong>
  <ul>
  <li><strong>Detection with the "Agent over TCP/IP" method</strong> - select to enable the PING function to verify the presence of the computer on the network for detection by <em>Agent over TCP/IP</em>.</li>
  <li><strong>Detection with the "without Agent" method</strong> - select to activate verification of the computer's presence on the network using the PING function for <em>no Agent</em> detection.</li>
  </ul>
  <div class="note">
   <div class="icon"></div>
   <div class="title">Note:</div>These options are enabled by default. We recommend turning them off only if PING is not working on the network (in which case Collector would determine all computers as disabled).</div>
  </li>
  <li><strong>Detect the computer again in</strong>
  <ul>
  <li><strong>__ minutes while the computer is switched off</strong> - specify in minutes the earliest time Collector should retry to detect the computer off. </li>
  <li><strong>__ minutes in case of detection error</strong> - specify in minutes the earliest time Collector should retry to detect the computer after the last detection attempt failed. </li>
  </ul>
  </li>
 <li><strong>Process in one block</strong> - Collector processes requests in blocks. It processes at most the specified number of requests within each block and places a wait (wait state) at the end of the block.
   <ul>
   <li><strong>__ computer detections</strong> - Specify the maximum number of detections to be performed by Collector within a block.</li>
   <li><strong>__ detection evaluation operations</strong> - enter the maximum number of scheduled evaluation operations that Collector should perform within a block.
  <div class="note">
   <div class="icon"></div>
   <div class="title">Note:</div>
  <ul>
  <li>Collector, which performs evaluation operations, also handles the allocation and removal of software licenses that have the <strong>Automatically allocate</strong> option enabled.</li>
  <li>Evaluation Operations creates Collectors with the <strong>Detect and Schedule Evaluation</strong> option enabled.</li>
  <li>Evaluation Operations is also created to re-evaluate software detections when a new version of <a href="../../../../../alvao-asset-management/software-management/custom-swlib">Software Product Library</a> is loaded.</li>
  </ul>
  </div>
   </li>
   </ul>
 </li>
 <li><strong>Waiting status between the processing of blocks</strong>- enter the length of the wait time between blocks in minutes.</li>
 <li><strong>Perform detections only on computers that match the filter</strong>- specify a filter defining the computers to be detected by this Collector instance. <br />
  Ex: If you want the Collector instance to detect only computers that are located somewhere in the "ALVAO Branch" object, use the filter: <br />
  <pre class="console" translate="no">EXISTS (
SELECT *
FROM tblNodeParent NP 
INNER JOIN tblNode N ON NP.lintParentNodeId=N.intNodeId
WHERE NP.lintNodeId=D.lintComputerNodeId
 AND N.txtName=N'Office ALVAO'
)</pre>
  <div class="note">
   <div class="icon"></div>
	  <div class="title">Note:</div><br />
	  This is a condition in the SQL query to the database that selects the requests to perform the detection.<br/>
	  The alias D appears in the sample, which represents the tblDetect table.</div>
 </li>
 <li><strong>Only perform evaluation operations for computers matching the filter</strong> - Specify a filter that defines the computers for which this Collector instance should perform evaluation operations. The filter has the same format as the filter for performing detections.</li>
  </ul>
 <div class="note">
   <div class="icon"></div>
	  <div class="title">Note:</div><br />
	 Computers that are placed in a tree structure under an object of type <em>Stock</em> are not detected in any case.</div>
  </li>
  <li><strong>Scheduling</strong> - setup scheduling of computer detections. <ul>
 <li><strong>Detection Schedule (network load) </strong>.
 - Enable if detections are to occur only at a specific time interval.  
  <ul>
 <li><strong>Detect computers daily only in the following interval</strong> - specify from when to when detections should take place.  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
    The intervals are stored in UTC and do not respect the transition between daylight saving time and standard time. For example, if you enter an interval in summer, it will be offset by an hour in winter and will be displayed as such in the settings.</div>
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  This setting does not apply to the <em>Autonomous Agent</em> detection method.</div></li>
    <li><strong>Exceptions (the schedule does not apply to the following days)</strong>
 - Select days on which detections will be performed throughout the day (will not be subject to the detection schedule).</li>
  </ul>
  <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 By scheduling detections, it is possible to limit the load on the network, e.g. during operating hours when the full capacity of the network needs to be used.</div>

 </li>
 <li><strong>Schedule for evaluations and automatic detection loading (SQL Server load)</strong>
 - Enable if the evaluation of detections is to be performed only at a specific time interval. <ul>
 <li><strong>Evaluate detections daily only in the following interval</strong>- specify from when to when the evaluation should take place.  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  See note for the detection schedule above.</div></li>
  <li><strong>Exceptions (the schedule does not apply to the following days)</strong>
 - Select the days on which the evaluation will run all day (will not be subject to the evaluation schedule).</li>
  </ul>
 <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 By scheduling the evaluation of detections, it is possible to limit the load on the SQL server, for example, during operating hours when employees access the database on this SQL server. Especially the evaluation of software detection is a demanding operation that can put a lot of load on the SQL server.</div>
  <div class="caution">
  <div class="icon"></div>
  <div class="title">Caution:</div>
  This setting also affects the automatic detection loading feature.</div>
 </li>
  </ul>
 </li>
  <li><strong>Loading files</strong> - Settings for manual computer detections. <ul>
 <li><strong>Automatic loading of manual detection files (*.CXM) </strong>
  - Enable if you want the server to load manual detection files from a specific folder. <ul>
 <li><strong>Automatically load CXM files from folder</strong> - specify the path to the folder that Collector will monitor and load new detections into the database from. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 The specified path is a folder on the configured machine, but the <strong>...</strong> button browses folders on the local machine. Set the path to match the structure of the disks and folders as seen from the configured server.</div></li>
 <li><strong>If the loading process succeeded</strong>
 <ul>
 <li><strong>Move the CXM file to the subfolder "Processed"</strong>
 - select if the CXM file should be moved to the "Processed" folder after the detection is loaded.</li>
 <li><strong>Delete CXM file</strong> - select if the CXM file should be deleted after the detection is loaded.</li>
 </ul>
 </li>
 <li><strong>If loading failed</strong>
 <ul>
 <li><strong>Move the CXM file to the subfolder "Failed"</strong>
 - select if the CXM file that failed to load should be moved to the "Failed" folder.</li>
 <li><strong>Delete CXM file</strong> - select if the CXM file that failed to load should be deleted.</li>
 </ul>
 </li>
 </ul>
 <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  For automatically loaded detections, objects of type <em>
  Assembly</em> (computer) in the "Computers from loaded detections" folder at the root of the object tree. For a computer that already exists in the tree, the existing detection is only updated.</div>
 </li>
	</ul>
  </li>
  <li><strong>Sw Product Library</strong> - setup updates to <a href="../../../../../alvao-asset-management/software-management/custom-swlib"> Software Product Libraries</a>.
  <ul>
 <li><strong>Automatic Update</strong>
  <ul>
 <li><strong>Download from the web</strong> - turn on if Collector should automatically download the latest software product library from the web.<ul>
  <li><strong>Library availability verification period (days)</strong> - specify in days how often to check if a new library of sw products is available on the manufacturer's website.</li>
  </ul>
  </li>
  <li><strong>Load from the backup</strong> - this library update option is recommended to use if Collector does not have access to the Internet. Then, periodically once a week, download the <a href="https://www.alvao.com/downloads/swlib2.swl">https://www.alvao.com/downloads/swlib2.swl</a> file from the web and save it to a folder on the server disk.<p>Specify the path to the folder to match the disk and folder structure from the view of the configured server.</p>
  </li>
  <li><strong>Do not update</strong> - Collector will not automatically update the library.</li>
 <li><strong>Automatically evaluate existing detections against the new library</strong> - Enable if you want to automatically evaluate existing software detections against the new library of software products.</li>
  </ul>
 </li>
 <li><strong>Send software product library change requests over the Internet</strong> - turn on if you want Collector to send change requests to the software product library.<br/>
 Change requests include <em>requests to add a new product</em>
 or <em>requests with unrecognized software</em>.</li>
 <li id="l"><strong>Automatically search for unrecognized software</strong>
 - Turn on if Collector should search the entire database for unrecognized software once a week.<br/>
 Unrecognized records are saved and if you send requests for changes to the sw product library (option above), they will be sent to ALVAO technical support specialists who will add the unrecognized software to the standard library. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Each stage (finding records and sending requests) can be performed by a different Collector.</div>

 <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The automatic search for unrecognized software will only be performed if the library in the database is less than one month old.</div></li>
 <li><strong>Disclaimer for sending information on unrecognized and new software</strong>
  <ul>
 <li><strong>If you need any additional information, you can contact me at e-mail</strong> - select if technical support staff can contact you if needed and fill in the email contact person.</li>
 <li><strong>I do not wish to be contacted. I want to send data anonymously</strong> - select if you want to send data anonymously. Our specialists will not be able to contact you, so if some unrecognized products cannot be identified by the records you have sent, the product will not be included in the standard library.</li>
  </ul>
 </li>
	</ul>
  </li>
  </ul>

</asp:Content>

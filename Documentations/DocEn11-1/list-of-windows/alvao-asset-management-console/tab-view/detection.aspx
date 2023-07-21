<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Detection</h1>
 
<p>The top of the <em>Detection</em> tab displays the <a href="../../../alvao-asset-management/implementation/detection"> table
by detecting its hardware and software</a> of the computer that is currently selected in the tree. If an organizational folder is selected in the tree, the table shows the detections of all computers in that folder. If you select a detection in the top table, its <a href="diary">log</a> is displayed at the bottom of the tab. </p>

<p>Local menu options on the <em>Detection</em> tab:</p>
	<ul>
 <li><a href="detection/detail">Details</a>
   - View the details of the selected detection. You can also specify whether to display hardware or software details.</li>
 <li><a href="detection/compare">Compare to Asset Registry</a>
   - Compare the selected detection with a record in <a href="../../../alvao-asset-management/software-management/software-detection#installation-registry">
 Installation logging</a> (software) and tree entries (hardware) respectively.
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If an error occurred during the last detection, the window will open<a href="detection/compare/components-identification">
 Identifiable Components</a> window, which allows you to configure what the computer should be detected by (globally, detection components can be configured in <strong>ALVAO WebApp - Administration</strong>).
 </div></li>
 <li><strong>Find a matching computer</strong> </li>
 <li><a href="detection/compare-detection">Compare detections</a>
   - display the difference between two selected detections.</li>
 <li><strong>Load from file</strong> - retrieve a detection stored on disk.</li>
 <li><strong>Save to file</strong> - save the selected detection as a file to disk.</li>
 <li><a href="properties/table-options">Table</a>
 - menu allows <a href="../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple rows. <br />
  <strong>Columns in the discovery table:</strong>.
  <table>
 <tr>
 <th>Column name</th>
 <th>Description</th>
 </tr>
 <tr>
 <td >Update Registry</td>
 <td >Displays the <em>Yes/No</em> value according to the following logic:<br />
  <strong>Yes</strong> - if hardware is detected, an <a href="../edit/detection/scope">automatic entry</a> of detected hardware objects will be made in the object tree. In case of software detection, the data of the detected software will be automatically written to <em>Installation registry</em>.<br />
  <strong>No</strong> - no data from hardware/software detection will be written.</td>
 </tr>
 <tr>
 <td class="auto-style1">Detected</td>
 <td class="auto-style1">Detection date.</td>
 </tr>
 <tr>
 <td>Kind</td>
 <td>Detection type - software or hardware.</td>
 </tr>
 <tr>
 <td>Immediately</td>
 <td>Displays the <em>Yes/No</em> value according to the following logic:<br />
  <strong>Yes</strong> - request for <a href="../../../alvao-asset-management/implementation/detection">instant detection evaluation</a>.<br />
  <strong>No</strong> - request to detect according to saved settings.</td>
 </tr>
 <tr>
 <td>Detection period (days)</td>
 <td>Automatic <a href="../../../alvao-asset-management/implementation/detection"> detection scheduling</a> (number of days).</td>
 </tr>
 <tr>
 <td>Computer</td>
 <td>The name of the computer to which the discovery request applies. </td>
 </tr>
 <tr>
 <td>Description</td>
 <td>Description for the discovery request.</td>
 </tr>
 <tr>
 <td>Date of request</td>
 <td>Date of creation of the discovery request.</td>
 </tr>
 <tr>
 <td>Status</td>
 <td>Detection status.</td>
 </tr>
 <tr>
 <td>Date of status</td>
 <td>Date of the last status entry. </td>
 </tr>
 <tr>
 <td>Full software detection</td>
 <td>Displays the <em>Yes/No/&lt;blank value&gt;</em> according to the following logic: <br />
  <strong>&lt;empty value&gt;</strong> - HW detection or incomplete detection request.  <br />
  <strong>Yes</strong> - completed SW detection and was performed in the <a href="../edit/detection/scope"> range</a> "complete".
  <br />
  <strong>No</strong> - completed SW detection and was performed in the <a href="../edit/detection/scope">range</a> "normal".
 </td>
 </tr>
 <tr>
 <td>Detection method</td>
 <td><a href="../../../alvao-asset-management/implementation/detection/detection-way">Default</a> detection method.</td>
 </tr>
 <tr>
 <td>Requester</td>
 <td>Detection Requester.</td>
 </tr>
  </table>

 </li>
 <li><a href="properties/find">Find</a>
   - search for text in the displayed table.</li>
 <li><strong>Mark computer in tree</strong> - mark the computer in the tree to which the selected detection belongs.</li>
 <li><strong>Evaluate immediately</strong> - run <a href="../../../alvao-asset-management/implementation/detection">immediate evaluation of the detection</a>.</li>
 <li><strong>Detect again</strong> - resubmit the detection request.</li>
 <li><strong>Delete</strong> - remove the selected detection request from the list.</li>
	</ul>


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  <style type="text/css">
  .auto-style1 {
  height: 25px; }
  </style>
  </asp:Content>


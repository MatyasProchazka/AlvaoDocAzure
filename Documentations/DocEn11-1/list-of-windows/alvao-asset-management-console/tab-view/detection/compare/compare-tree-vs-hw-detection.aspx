<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Hardware detection vs. Tree</h1>
	<ul>
 <li><strong>Differences List</strong> - the list shows the differences between the data taken by the detection and the data in the <a href="../../../object-tree">object tree</a>.</li>
 <li><strong>Write changes to the tree</strong> - make updates to the computer objects in the tree according to the detection data. The update is performed only on objects that have automatic update enabled.  <p><strong>Update objects in the tree according to the following rules:</strong></p>
  <table>
 <thead>
 <tr>
 <td>Condition</td>
 <td>Action</td>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>A device is detected that does not have a corresponding object in the computer's object tree</td>
 <td>Create a new object in the computer tree based on a device in detection</td>
 </tr>
 <tr>
 <td>There is an object in the computer object tree that does not have a matching device in the detection</td>
 <td>Moving an object from the computer tree to the Trash object</td>
 </tr>
 <tr>
 <td>There is an object in the computer object tree that has a matching device in the detection but differs in some properties</td>
 <td>Update the properties of an object in the computer tree according to the device in the detection</td>
 </tr>
 </tbody>
  </table>
  
 </li>
 <li><strong>Find a matching computer</strong> - If any of the entries are in the list of differences: <ul>
 <li>Evidence was not updated according to the detection because some detected components are already in another computer in the inventory. It is possible that the computer has been renamed in the network. Use the <em>Find matching computer</em> and <em>Compare with inventory</em> commands on the <b>Detection</b> tab.</li>
 <li>Evidence has not been updated according to hardware detection because the underlying computer components have changed. It is possible that the computer has been renamed on the network. Use the <em>Find Matching Computer</em> and <em>Compare with Evidence</em> commands on the <b>Detection</b> tab.</li>
 </ul>
  <p>Use this feature to find the computers to which these detected components correctly belong.</p>
  <p>You set the computer identification components in <a href="../../../../../alvao-asset-management/software-management">Asset Management Administration</a>.</p>
  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Instances where the identifying information between the computer and the detection does not match will occur when:<ul>
 <li>you replace any of the computer's essential components and the action is not recorded in the log</li>
 <li>you rename computers on the network and do not record the action in the log</li>
 <li>some of the computer's identifying information is not unique. In this case, the component cannot be used as an identifier and must be removed from the list of identifiers.</li>
 <li>for the motherboard serial number, ignore the values &quot;MB-1234567890&quot; and &quot;00000000&quot;</li>
 </ul>
  </div>
  </li>
 <li><strong>Automatic Update</strong>
  <ul>
 <li>Enable - enable automatic update on the selected object in the changelist.</li>
 <li>Disable -&nbsp; disable automatic update on the selected object in the changelist.</li>
  </ul>
 </li>
	</ul>
</asp:Content>

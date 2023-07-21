<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Found objects</h1>
	<p>In this Window you will find the objects found by <em>Edit - <a href="../edit/find">Find</a></em>.</p>
	<p>Options:</p>
	<ul>
		<li>Main Menu: 
			<ul>
			<li><a href="action">Action</a></li>
			<li><a href="../tab-view/properties/table-options">Table</a></li>
			</ul>
		</li>
		<li><strong>Object Table</strong> - table of found objects. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
	</ul>
	<p> Local menu options in the object list:</p> 
		<ul>
			<li><strong>Computer</strong> - if an object of type Computer is selected in the object list, the following options are available: 
				<ul>
					<li><strong>Detect</strong> - <a href="../edit/detection">detect</a> the selected computer (can be detected using the saved settings for the computer, or edit the settings once).</li>
					<li><strong>Detection settings</strong> - modify <a href="../edit/detection/detection-setup">detection settings</a> for the selected computer.</li>
					<li><strong>Hardware</strong> - view <a href="../tab-view/detection/detail/hardware">details</a> of the hardware detection for the selected computer.</li>
					<li><strong>Software</strong>
						<ul>
							<li><strong>Installation registry</strong> - view <a href="../software/installation-registry">installation registry</a> for a given computer.</li>
							<li><strong>License registry</strong> - view <a href="../software/license-registry">license registry</a> for a given computer.</li>
							<li><strong>Details</strong> - view <a href="../tab-view/detection/detail/software">details</a> of the software detection for the selected computer.</li>
						</ul>
					</li>
					<li><strong>Change Software Profile</strong> - <a href="../edit/object/software-profile">set</a> the software profile.</li>
				</ul></li>
			<li><strong>Administrator Tools</strong> - commands for <a href="../admin-tools">administration</a> of an object available only to the administrator.</li>
			<li><strong>Ping</strong> - to determine if a computer at a given IP address responds.</li>
			<li><strong>Select in tree</strong> - select a specific object in the object tree.</li>
			<li><strong>Mark in tree</strong> - mark the selected object in the object tree.</li>
			<li><strong>Move</strong> - <a href="../object/choose-object"> move</a> the selected object.</li>
			<li><strong>New Request</strong> - create a <a href="../../alvao-webapp/requests/new-request">new request</a> in the ALVAO Service Desk related to the selected object. </li>
			<li><strong>Add to Request</strong> - add selected objects to the <a href="../../alvao-webapp/requests/table-of-requests">Objects</a> item of an existing request in the <a href="../../../alvao-service-desk">ALVAO Service Desk</a>.</li>
			<li><strong>Related Requests</strong> - view requests in <a href="../../../alvao-service-desk">ALVAO Service Desk</a> that are related to the selected object.</li>
			<li><strong>Table</strong> - <a href="../tab-view/properties/table-options">options</a> for working with the table.</li>
			<li><strong>Find</strong> - search for specified text.</li>
			<li><strong>Print</strong> - display information about the selected object in the print preview. Select the one that suits you best from the offered <a href="../../alvao-webapp/administration/asset-management/print-report-templates">templates</a>. For some, you will need <a href="../file/query-parameters">Specify query parameters</a>.<br/>
						If you select a report for the <strong>Transfer Protocol</strong>, the appropriate window will open to fill in the necessary handover information:
						<ul>
							<li><a href="../../alvao-webapp/objects/object/print">Internal handover protocol</a></li>
							<li><a href="../../alvao-webapp/objects/object/print">External handover protocol</a></li>
						</ul> 

			</li>
			<li><strong>Delete</strong> - delete the selected object.</li>
			<li><strong>Add link to document</strong> - add a <a href="../tools/lists/documents">document link</a> to the selected object.</li>
			<li><strong>Edit</strong> - <a href="../edit/object">edit</a> the selected object.</li>
  
 </ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>View</h1>
<p>Select the display mode of Asset Management requests, tables and objects:</p>

<ul>
	<li><strong>Requests</strong>
		<ul>
			<li><strong>Highlight unread requests in the lists of requests</strong> - choose which unread requests you want to highlight in the requests lists. An unread request is one that contains a new event or message, or is a newly created request.
				<ul>
					<li><strong>None</strong> - no unread requests will be highlighted. </li>
					<li><strong>Relevant for me</strong> - any unread requests that relate to you in some way will be highlighted, i.e.:
						<ul>
							<li>you are a main solver in the request service or are currently a solver of the request (i.e. the <em>To solve</em> column is <em>Yes</em>).</li>
							<li>you are the requester or a request participant of the request.</li>
							<li>you follow the request (i.e. in the <em>Request following</em> column the value is <em>Yes</em>).</li>
							<li>you are currently the approver of the request (i.e. the value in the To be approved column is <em>Yes</em>).</li>
						</ul>
					</li>
					<li><strong>All</strong> - all unread requests will be highlighted.</li>
				</ul>
			</li>
			<li><strong>Detailed Tiles</strong> - enable this option if you also want to display more detailed information about the request in the tiles.   The tile will then additionally display values from the first few columns of the table (depending on the view settings in <a href="../requests/table-of-requests">View table</a> mode).</li>
			<li><strong>Display Selected Requests</strong> - select in which part of the <a href="../../../list-of-windows/alvao-webapp/requests">Requests</a> page you want to display the details of the currently selected request.</li>
		</ul>
	</li>
	<li><strong>Tables</strong> - select the font size in the tables. Use the <em>Show lines between rows</em> option to split rows.</li>
	<li><strong>My Assets</strong> select the display mode for objects on the <a href="../my-asset">My Assets</a> page.</li>
</ul>

</asp:Content>

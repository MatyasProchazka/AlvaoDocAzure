<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Person</h1>

  <p>On this page you can see details about the person in Alvao.</p>

  <p>Options:</p>
  <ul>
	<li><strong>Start chat</strong> – starts a chat in MS Teams with the person.</li>
	<li>Tabs<ul>
	<li><b>General</b><br />
	This tab displays the values of the person's items.  <br /><br />
	</li>
	<li><b>Organizations</b><br />
	This tab displays information about the organization to which the person belongs.<br />
	If the person is not assigned to any organization, this tab is not displayed.  <br /><br />
	</li>
	<li><b>Subordinates</b><br />
	On this tab, you can see a list of the person's subordinates.<br />
	If the person has no subordinates, this tab is not displayed.  <br /><br />
	</li>
	<li><b>Assets</b><br />
	On this tab, you see the assets that the person is entrusted to use, and possibly other assets that the person is <a href="../../../../alvao-asset-management/implementation/tree-design">responsible for</a> in the company.
  <p>Options:</p>
  <ul>
  <li><b>Tile</b> - view the asset in tile mode. Click on an item to view detailed information about that item.</li>
  <li><b>Table</b> - view assets in table mode. Customize the table <a href="../../../../alvao-asset-management/working-with-tables">as needed</a>.</li>
  </ul>
  <div class="tip">
	  <div class="icon"></div>
	  <div class="title">Tip:</div>
	  Use the value in the <em>Trusted</em> column to distinguish whether the asset is entrusted to the user for use (value <em>Yes</em>), or whether it is another asset for which the user is <a href="../../../../alvao-asset-management/implementation/tree-design">responsible</a> (value <em>No</em>).<br />
  </div>
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The tab only displays assets that you have permission to see and that have at least one of the <i>Inventory Number</i> or <i>Evidence Number</i> properties. If you do not have any <a href="../../../../alvao-asset-management/implementation/users/groups">roles in ALVAO Asset Management</a>, this tab only appears in the application if you are looking at your assets or those of your subordinates.  </div>
  </li>
  <li><b>Documents</b><br />
  On the tab, you can see an archive of all your <a href="../../../../alvao-asset-management/documents/transfer-protocols">transfer protocols</a>.
  You can sign the newly issued protocols here to confirm receipt of the asset. This tab only appears on your person page.   You cannot see the documents of other users. Similarly, other users cannot see your documents. The bookmark is part of the <a href="../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> module.
  <p>Features:</p>
  <ul>
  <li><b>Document Table</b> - step through unsigned documents, i.e. documents that have the <em>Signed</em> command displayed in the <em>Signed</em> column.
  In the <em>Document</em> column, click on the link, read the document, and then in the <em>Signed</em> column, use the <strong>Sign</strong> command to confirm your agreement with its contents.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>

</asp:Content>

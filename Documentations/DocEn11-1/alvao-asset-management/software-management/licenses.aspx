<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>License registry</h1>

  <p>
  The license registry is used to record all purchases, upgrades and, if necessary, divestments of licenses.
  <p>
  You can manage the license registry using the <b>AM Console - Software - License Registry</b> command, which opens the <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">License Registry</a> window on the screen.
  </p>




  <h2 id="media">Media</h2>

  <p>
  Media logging allows you to keep track of software installation media, hardware keys, user manuals, etc.</p>
  <p>
  You can manage the media inventory with the <b>AM Console - Tools - Lists - Media</b> command, which opens the <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/media">Media</a> window.
  </p>
  <p>
  You can assign media to purchased licenses in the License Log either directly when you create an entry in the wizard on the <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/documents-media">New license - documents and media</a>, or when editing an existing record on the <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/media">Media</a> tab.
  </p>
  <p>
  Media can be tagged similarly to documents. You can also use <a href="../documents/sequences">number sequences</a> to label media.
  </p>
  <p>
  A simple rental feature is also implemented in the media window. Users defined in the object tree (but also external) can be registered to borrow and return any media. The system administrator thus has a perfect overview of who has borrowed what, the date of borrowing, etc. Records of borrowing and returning are recorded in the user's log.  </p>

  <h2>Multi-organization license visibility</h2>
  <p>
  If you need to separately record licenses for multiple organizations (for example, a holding company) that are represented in the object tree by objects of type <em>Organization</em>,
  in <strong>ALVAO WebApp - Administration - Asset Management -
  </strong>
  <a href="../../list-of-windows/alvao-webapp/administration/asset-management/software-licenses-security">Software License Security</a>
  Set the license administrators from each organization to have access permissions to <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">License Security</a>.
  </p>
  <p>
  In the <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">license creation and modification forms</a>, this will display an <em>Organization</em> item where you can select the organization that owns the license. If you leave the item blank, any organization can use the license (license holding).
  </p>
  <p>
  Add custom groups for license readers and managers as members of the <a href="../implementation/users/groups">Object property readers</a> group.
  </p>
</asp:Content>

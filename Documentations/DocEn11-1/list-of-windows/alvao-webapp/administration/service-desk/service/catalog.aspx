<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Service Catalogue</h1>
<p>This section on the <a href="create-service">New Service</a> form is used to set the appearance of the service catalog tile in the WebApp, keywords, order in the tree, and the default request template.</p>
<p>Options:</p>
	<ul>
 <li><strong>View in the Service Catalogue</strong> - disabling this option will make the service invisible in the service catalog. The option only affects the display in the service catalog in the WebApp. The visibility of the service in other parts of the system is not affected by this option.  <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 It is recommended to disable the <em>Show in service catalog</em> option for technical services or for services where it is undesirable for requesters to make requests directly to them, but at the same time it is necessary to ensure that requesters have an SLA assigned to these services (e.g. for <a href="extended">creating a new request on a failed reopen attempt</a>).
  </div>
  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The <em>Show in service catalog</em> option setting is overwritten in all child services. A disabled option has a higher weight (the service is not displayed), so the <em>Show in service catalog</em> option cannot be enabled on a service if this option is disabled on the parent service.</div>
 </li>
 <li><strong>Tiles</strong>
 <ul>
 <li><a href="icons">Change icon</a> - select a service icon from the icon library.<div class="tooltip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
  To bulk change the icon of multiple services that use the same icon, display the <em>Icon</em> column in the service table that contains the icon name. Filter all services with the current icon by the icon name, select them, and change the icon with <em>Edit</em>.
  </div>

  </li>
   
	
 <li><strong>Tile Color</strong> - select a tile color, see <a href="../../../../../alvao-service-desk/implementation/services/tile-color">
 recommended colors</a>. The chosen tile color should be contrasting to the service image and should reflect the type of service (e.g., red for incidents).</li>
   
	
 <li><strong>Tile Type</strong> - select how the service is displayed in the WebApp service catalog.<ul>
 <li><strong>Square</strong> - the service icon is displayed on a colored square background. This mode is recommended for <em>white icons</em>.
 in the so-called &quot;modern look&quot; of Windows.</li>
 <li><strong>Ribbon under icon</strong> - the service icon is displayed on a white background and below the icon is a colored horizontal bar with the service name.  This mode is suitable for colored icons on a transparent or white background.</li>

 </ul>
 </li>
 </ul></li>
 <li><strong>Tree order</strong> - if you want to sort the services in the catalog alphabetically by their name, leave this field blank. Otherwise, enter the serial number of the service. The services are then displayed in ascending order according to the <em>Tree Order</em> value, services with no order are at the top. Services with the same value in the <em>Tree Order</em> field are sorted alphabetically by service name.</li>
 <li><strong>Keywords</strong> - Enter keywords by which users can search for the service. Separate individual keywords or phrases with commas. Services are always searched for by their name, including the full path in the tree, so words contained in the name do not need to be re-entered as keywords. <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  Among the keywords, include the words by which your users actually search for the service. You can find search statistics in the <a href="../../../../../alvao-service-desk/evaluation-of-system-operation/data-analysis">data-analysis</a> on the <em>Search</em> sheet.
  </div>
 </li>
<li>
    <strong>Default request template</strong> - select a default request template to populate the default field values of the <a href="../../../requests/new-request">new request form</a>.</li>
</ul>
</asp:Content>

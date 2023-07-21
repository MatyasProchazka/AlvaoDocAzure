<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Web asset check</h1>

    <p>
        The web inventory is used to inventory the assets for which individual users are responsible, directly by those users. During an inventory in the ALVAO WebApp, users mark the items they have found and those they have not in the form with a list of assets for which they are responsible. 
    </p>

    <p>Compared to traditional inventory procedures, whether using printed inventory lists or barcode scanners, this method is significantly faster and more efficient.</p>

    <h2>Basic settings</h2>
    <ol>
        <li>In <b>ALVAO WebApp - Administration - Settings</b>:
  <ol>
      <li>On the <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">Messaging</a> page, set the SMTP server and message sender.</li>
      <li>On the <a href="../../list-of-windows/alvao-webapp/administration/settings/webapp">WebApp</a> page, enter the URL of the ALVAO WebApp in the WebApp (URL) field.</li>
  </ol>
        </li>
        <li>In ALVAO <b>WebApp - Administration - Asset Management - Settings</b> on the page <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/web-asset-check">Web asset check</a> in text set the correct URL of the link to the <i>Asset check</i> page (https://&lt;WebApp&gt;/Alvao/AssetCheck domain) in the notification text. Edit the notification text as necessary</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you are not satisfied with the default column settings on the ALVAO WebApp web asset check form, set the desired view on any user and then override the profile of that user with the <i>Default settings - Web Asset check - users responsible only for their assigned assets</i> or <i>Default settings - Web Asset check - users responsible for the department assets</i> profile.
  (i.e., they are also responsible for assets that are not below them in the tree, see the <i>Person responsible for asset</i> property).
    </div>

    <h2>Asset check</h2>
    <p>
        <a href="stocktaking">Take inventory</a> and create a reader file with the <b>Web asset check</b> option enabled. A web inventory can only be done for an asset that someone is responsible for, i.e. has the <a href="../../alvao-asset-management/implementation/tree-design">Person responsible for asset</a> property filled in (or inherited).
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Within a single inventory, you can create additional reader files for <a href="physical-asset-check">physical inventory</a> and combine the two inventory methods in this way. A single asset can be listed in both the actual reader file and the web inventory file. If an asset is inventoried by a reader before it is inventoried via the web, it will appear to the user in the form as already confirmed. 
    </div>

    <h2>Sending notifications</h2>
    <p>Send notifications to users who will be conducting a web inventory with inventory information:</p>
    <ol>
        <li>From the AM Console main menu, use the <b>Tools - Asset Inventory</b> command to open the inventory window.</li>
        <li>Use the <b>Web asset check - Send a notification</b> command.</li>
        <li>A web browser window will open with a preview of the message before it is sent. It is important that the notification contains the correct link to the <i>Asset check</i> page through which users will confirm their assets.</li>
        <li>Check the text of the notification and then press the <b>Send</b> button. The notification will be sent to all users who are responsible for assets in the reader file.</li>
    </ol>

    <p>
        During the inventory process, you can resend notifications to users after a certain period of time. The notification will only be sent to users who have not yet marked all the assets they are responsible for on their WebApp form. 
    </p>

    <h2>Confirmation of assets to the user</h2>
    <p>
        Users will receive a notification of a pending inventory and will view the <i>Asset check</i> form via the link provided. On the form, they check the details of the assets and confirm whether or not the assets match the data entered. If they have any additional comments about the property, they can write a message to the property manager. 
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Users can also view the <i>Asset check</i> form by using the ALVAO WebApp - User Menu - <i>Asset check</i> command. The command is only displayed in the menu if an asset inventory is in progress, i.e. the inventory is open. 
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The text on the form can be changed on the <b>ALVAO WebApp - Administration - Asset Management - Settings page - </b><a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/web-asset-check">Web asset check</a>.
    </div>

    <h2>Results processing</h2>
    <p>
        As individual users begin to validate their assets, the <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">Asset check</a> window will begin to continuously display the results in the top table in the <i>Asset check date</i>, <i>Status</i>, and <i>A message for an asset manager</i> columns. You can continuously process the results, see <a href="stocktaking">Asset check.</a> Alternatively, you can resend notifications to users after a certain period of time. Notifications will only be sent to users who have not yet confirmed all their assets. 
    </p>

</asp:Content>

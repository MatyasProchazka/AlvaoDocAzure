<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>New license</h1>
    <p>This section describes how to register different types of licenses.</p>
    <p>
        To create a new license, follow this procedure:
    </p>
    <ol>
        <li>Go to <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry">License Registration</a> and use the <strong>New License</strong> command from the local menu.</li>
        <li>In the first step of the wizard, <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license">New license - product</a>
            select the main license product.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                If the license covers multiple products, you can add them on the <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/substitute-products">Substitute products</a> tab when you edit the license afterwards.
            </div>

        </li>
        <li>In&nbsp;next step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">New license - license</a>
            fill in the field in <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">guide page</a>.
        </li>
        <li>Go to the next step of the wizard <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/items">New License - License Items</a>
            and add specific computers/users to the list if necessary.  You can also assign licenses to computers/users later.<br />
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                <ul>
                    <li>If the purchased product contains multiple activation keys (e.g. OEM license),
  insert them sequentially into each license item in the field <em>Activation Key</em>.</li>
                    <li>If an <em>Activation Key</em> is specified for a license, this value is already preset when creating license items in the <em>Activation Key</em> field of the item.  </li>
                    <li>If the <em>Activation Key</em> field is
  is filled in manually (that is, it is not automatically pre-populated by the license activation number),
  duplication is checked in all license entries.</li>
                </ul>
            </div>

        </li>
        <li>In step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/documents-media">New license - documents and media</a>
        add a link to the invoice documenting the license purchase. 
    </ol>



    <h2 id="perdevice">Licence "on device"</h2>
    <p>
        A license covers installations of specific products on the computers to which it is assigned. 
    </p>
    <ol>
        <li>Create a new license - see the procedure <a href="new">New License</a>.</li>
        <li>In step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">New license - license</a>, fill in the following field:
            <ul>
                <li>In the <strong>Number</strong> field, enter the number of licenses purchased, i.e., the number of devices or computers to which the license can be assigned</li>
                <li>Select "per device" in the <strong>License Model</strong> field.</li>
            </ul>
        </li>
    </ol>
    <h2 id="peruser">License "per user"</h2>
    <p>
        The license covers installations of specific products on all devices that specific users are entrusted to use. 
    </p>
    <ol>
        <li>Create a new license - see the <a href="new">New License</a> procedure.</li>
        <li>In step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">New license - license</a>, fill in the following fields:</li>
        <ul>
            <li>In the <strong>Number</strong> field, enter the number of licenses purchased, i.e. in this case the number of users that can be assigned a license.</li>
            <li>In the <strong>License Model</strong> field, select "per user". </li>
        </ul>
    </ol>

    <h2 id="percore">Licence "to the core"</h2>
    <p>
        The license covers the installation of specific products on specific computers. The license is specific in that each computer in the license draws multiple cores. 
    </p>
    <ol>
        <li>Create a new license - see the <a href="new">New License</a> procedure.</li>
        <li>In step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">New license - license</a>, fill in the following fields:</li>
        <ul>
            <li>In the <strong>Number</strong> field, enter the number of licenses purchased, i.e. in this case the number of cores.</li>
            <li>In the <strong>License Model</strong> field, select "per core".</li>
        </ul>
        <li>In the <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/items">New License - License Items</a> step, for each computer, create an entry with the corresponding number of licenses assigned.</li>
    </ol>

    <h2 id="perprocessor">Licence "per processor"</h2>
    <p>
        The license covers the installation of specific products on specific computers. The license is specific in that each computer draws multiple processors from the license. 
    </p>
    <ol>
        <li>Create a new license - see the <a href="new">New License</a> procedure.</li>
        <li>In step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">New license - license</a>, fill in the following fields:</li>
        <ul>
            <li>In the <strong>Number</strong> field, enter the number of licenses purchased, i.e. in this case the number of processors.</li>
            <li>In the <strong>License Model</strong> field, select "per processor".</li>
            <li>Enable the <strong>Enable multiple license allocation to a single object</strong> option.</li>
        </ul>
        <li>In the <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/items">New License - License Items</a> step, for each computer, always create as many items as the number of processors the computer draws from the license.</li>
    </ol>


    <h2 id="cal">License type "CAL per user/device"</h2>
    <p>
        This type of license is characterized by the fact that there is usually no product installation on the computers that this license can cover. 
    </p>
    <ol>
        <li>Create a new license - see the procedure <a href="new">New License</a>.</li>
        <li>In step <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">New license - license</a>, fill in the following fields:</li>
        <ul>
            <li>In the <strong>Number</strong> field, enter the number of licenses purchased, i.e. the number of devices or users that can be assigned a license.</li>
            <li>In the <strong>License Model</strong> field, select "per device" or "per user" depending on the CAL</li>
            <li>In the <strong>License Type</strong> field, select the "CAL" option.
 <div class="note">
     <div class="icon"></div>
     <div class="title">Note:</div>
     This license type does not check if the license is "wasted".  
 </div>
            </li>
        </ul>
    </ol>

    <h2 id="alvao">Licence for ALVAO products</h2>
    <h3>ALVAO Asset Management</h3>
    <ol>
        <li>Create a <a href="#perdevice">device license</a> for <em>ALVAO Asset Management</em> product of the specific version.<br />
            Note: This product is a package that contains all components belonging to Asset Management. 
            <ul>
                <li>Fill in the <strong>Number</strong> (number of computers) field.</li>
                <li>Set the dates in the <strong>Validity to</strong> (if you have an annual lease license) and <strong>Upgrade/support to</strong> (the date by which you can upgrade your software product library) fields.</li>
                <li>Leave the license type at <strong>normal</strong>.</li>
                <li>Fill in the other required fields to complete the license creation - see <a href="new">new license</a>.</li>
                <li>If you have older versions of Agents installed on your computers, edit the license and add the appropriate versions of Agents on the <strong>Additional Products</strong> tab.</li>
            </ul></li>
        <li>Add a license wherever any of the Asset Management applications are installed, e.g. Agent, Console, and also on servers running Collector, etc.</li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can let the Asset Management license <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">automatically assign</a>.
  When auto-allocating, also enable the <em>Allocate to package components as well</em> option.
    </div>

    <h3>ALVAO Service Desk</h3>
    <ol>
        <li>Create a <a href="#peruser">user license</a> for the <em>ALVAO Service Desk</em> product of the appropriate version.<br />
            Note: This product is a package that contains all components belonging to the Service Desk. 
            <ul>
                <li>Fill in the <strong>Number</strong>field.</li>                
                <li>Set the license type to <strong>CAL</strong>.</li>
                <li>Note in the <strong>Note</strong> field, here is the license per applicant or per investigator.</li>
                <li>Set the dates in the <strong>Expiration By</strong> and <strong>Upgrade/Support By</strong> fields, if applicable.</li>
                <li>Fill in the other required fields and complete the license creation - see <a href="new">new license</a>.</li>
            </ul>
        </li>
        <li>Assign the license to users (solvers or users)</li>
        <li>Set server installations (Alvao Service, Web App) as <a href="../../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview/actions/special-installation">Special Installations</a>.</li>
    </ol>


    <h2 id="office365">Licence for Office 365</h2>
    <ol>
        <li>Create a <a href="#peruser">user license</a> for the appropriate edition of <strong>Microsoft Office 365</strong>.<br />
            Note: MS Office 365 products in the library are packages that include all the components that the license may cover (e.g. MS Office 2016, etc.).
        </li>
        <ul>
            <li>In the <strong>Number</strong> field, fill in how many users you purchased the license for.</li>
            <li>Leave the license type to <strong>normal</strong>.</li>
            <li>Set the dates in the <strong>Expiry to</strong> and <strong>Upgrade/support to</strong> fields, if applicable.</li>
            <li>Fill in the other required fields and complete the license creation - see <a href="new">new license</a>.</li>
        </ul>
        <li>Assign the license to users.</li>
        <li>License automatically covers installations of MS Office 365, 2016, 2019, etc.</li>
    </ol>

    <h2>License of type <em>Windows Server Datacenter Edition</em></h2>
    <p>
        The license covers the installation of the server OS. It also covers the installation of all Windows OS on the virtual machines running on this server. 
    </p>
    <ol>
        <li>Create a <a href="#perdevice">perdevice license</a> for the Windows Server Datacenter Edition (hereafter WSDE) product, set the specific number of licenses purchased in the <strong>Number</strong> field. Allocate this license to physical servers.</li>
        <li>Create another new auxiliary license:</li>
        <ul>
            <li>To make it easy to pair a license with a server license, use the same name as the server license with a note that it is an auxiliary license for virtual machines.</li>
            <li>Set one of the Windows OS as the license product.</li>
            <li>The type will be "unlimited multilicense"</li>
            <li>Do not set the date in the <strong>Expiration by</strong> and <strong>Upgrade/support by</strong> fields.</li>
            <li>Add a link of type "related to" to the license created in point 1.</li>
            <li>Enable the "Automatically Allocate" option and set the filter in the settings to automatically allocate and remove licenses only on virtual machines running under a specific server (e.g., limit the filter to the path in the object tree).</li>
            <li>Finish creating the license, and then edit the license to add all Windows OSes (that may potentially be present on the virtual machines) to the table on the <strong>Spare Products</strong> tab.</li>
        </ul>
    </ol>

    The ancillary license will then automatically cover all Windows OS installations on virtual machines running on the host server.
  <div class="note">
      <div class="icon"></div>
      <div class="title">Note:</div>
      You only need to create one auxiliary multilicense for multiple WSDE licenses, which can have links to multiple WSDE licenses.
    </div>

</asp:Content>

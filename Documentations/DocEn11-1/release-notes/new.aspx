<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>New features and changes</h1>
    <h1>ALVAO 11.1</h1>

    <p>This page lists all the new features and changes that have been implemented into this version of the ALVAO product.</p>

    <h2 id="new-on-web">Want to know more? Read articles about new features on the ALVAO website (in Czech only)</h2>
    
    <ul>
        <li><a href="https://www.alvao.com/cs/blog/novinky-alvao-11-1-itsm">Common news in ALVAO 11.1 for Asset Management and Service Desk are here!</a></li>
        <li><a href="https://www.alvao.com/cs/blog/novinky-alvao-11-1-asset-management">What's new in ALVAO 11.1 for Asset Management: Overview of improvements and new features</a></li>
        <li><a href="https://www.alvao.com/cs/blog/novinky-alvao-11-1-service-desk">What's new in ALVAO 11.1 for Service Desk: Overview of improvements and new features</a></li>
    </ul>

    <h2 id="common">Core features</h2>

    <h3 translate="no">Reporting</h3>
    <ul>
        <li><a href="../list-of-windows/alvao-webapp/data-queries">Data queries</a> – on this new page, users can view and work with the results of data queries defined by an administrator in <em>Administration</em> – <a href="../list-of-windows/alvao-webapp/administration/data-queries/detail/query">Data queries</a>. (T123527ALVAO)<br />
            <img src="img/dataqueries-command.png" class="picture" />
            <img src="img/dataqueries-table.png" class="picture" />
        </li>
        <li>The content of <a href="../alvao-asset-management/implementation/customization/database#report_view_list">report database views</a> is now available also through REST API (ODATA). No licenses for <em>AM/SD Enterprise API</em> extension modules are needed. The <a href="../alvao-asset-management/searching/power-bi">Power BI report templates</a> now use the standard <em>OData feed</em> data connector. (T122598ALVAO)</li>
    </ul>

    <h3>Formatted text editor</h3>
    <ul>
        <li>The editor for writing a formatted text was upgraded in all parts of WA and the visualization was a little bit changed. (T97201ALVAO)<br />
            <img src="img/ckeditor.png" class="picture" />
        </li>
        <li>Formatted text editor (e.g., Send message, New knowledge, …) – added commands for inserting and formatting <b>tables</b>. (T135288ALVAO)</li>
    </ul>

    <h3>Extensibility</h3>
    <ul>
        <li>Administration - Custom fields – <a href="../list-of-windows/alvao-webapp/administration/custom-items/create-custom-item">New field</a> - added new custom field <strong>data types</strong>:<ul>
            <li>Date (without time) (T95695ALVAO)</li>
            <li>User (T125000ALVAO)</li>
            </ul>
        </li>
    </ul>

    <h3>Administration</h3>
    <ul>
        <li>Azure Active Directory - Enterprise applications - adding ALVAO into your AAD tenant is much easier now as ALVAO is listed in the <em>Azure AD Gallery</em>. (T126612ALVAO)<br />
            <img src="img/aad-gallery.png" class="picture" /></li>
        <li>Security and operation logs - log output can be set to use different targets. See the page <a href="../alvao-asset-management/implementation/audit-log">Setting change log</a> for how to configure logging. (T130085ALVAO)</li>
        <li><a href="../alvao-asset-management/implementation/installation/installation-server-manual#restapi">ALVAO Rest API</a> – two virtual directories are created during installation in IIS: <em>AlvaoRestApi</em> for the SD/AM Enterprise API modules and <em>AlvaoRestApiWinAuth</em> for the Outlook Add-In module. (T124399ALVAO)</li>
        <li>Administration – Users – <a href="../list-of-windows/alvao-webapp/administration/users/create-user">User</a> - Application account - settings names have been unified with the Azure portal. (T134540ALVAO)</li>

        <li>Administration – Settings – <a href="../list-of-windows/alvao-webapp/administration/settings/web-services">Web services</a> – added <i>REST API (URL)</i> field. (T114079ALVAO)</li>
    </ul>

    <h2 id="am" translate="no">ALVAO Asset Management</h2>
    <p>(If not specified otherwise the ALVAO WebApp is meant.)</p>

    <h3>Objects</h3>
    <ul>
        <li>Object – the new <a href="../list-of-windows/alvao-webapp/objects/object/attachments">Attachments</a> tab added. (T124352ALVAO)<br />
            <img src="img/object-attachments.png" class="picture" />
            <img src="img/object-addfile.png" class="picture" />
        </li>
        <li>Object – added the <a href="../list-of-windows/alvao-webapp/objects/object/software">Software</a> tab containing a list of installed and/or assigned software
            to a computer. (T138290ALVAO)</li>
        <li><a href="../list-of-windows/alvao-webapp/objects">Objects</a> – Move, Delete – added bulk moving and deletion of objects. (T124296ALVAO)</li>
        <li>AM Console – Object tree - when moving computers or users to the <em>Recycle Bin</em> or <em>Discarded assets</em>, 
            only a warning is displayed and all actions (e.g., the release of assigned software licenses, …) are performed automatically 
            after the general confirmation. (T134050ALVAO)</li>
        <li>Objects – <a href="../list-of-windows/alvao-webapp/objects/import-csv">Import CSV</a> – you can choose a column separator used in the imported CSV file. The same option was added also to the <a href="../alvao-asset-management/import-export-data/import-util">ImportUtil</a> utility. (T123928ALVAO)</li>
        <li>WebApp – User menu - <a href="../list-of-windows/alvao-webapp/search/persons/person">My assets</a> – clicking on an asset, the <a href="../list-of-windows/alvao-webapp/search/persons/person/my-asset-object">limited asset page</a> is shown also to the users with <a href="../alvao-asset-management/implementation/users/groups">special roles</a> in Asset Management instead of the page containing complete <a href="../list-of-windows/alvao-webapp/objects/object">object</a> information. The command <i>Display in tree</i> was added to the limited asset page for the users with special roles. (T1400048ALVAO)</li>
    </ul>

    <h3>Documents</h3>
    <ul>
        <li><a href="../list-of-windows/alvao-webapp/documents">Documents</a> – a brand new page <em>Documents</em> in the web application replaces the retired <em>Document registry</em> in the <em>AM Console</em>. In the <em>AM Console</em>, the <em>Tools - Lists - Documents</em> command now opens the page in a web browser. (T124351ALVAO)<br />
            <img class="picture" src="img/documents.png"/></li>
    </ul>


    <h3 translate="no">Reporting</h3>
    <ul>
        <li>Hand-over forms and other print reports - they can contain barcodes now. (T135088ALVAO)<br />
            <img class="picture" src="img/handover-protocol-barcode.png"/></li>
    </ul>


    <h3>License registry</h3>
    <ul>
        <li>AM Console – License registry – Edit - a new option <a href="../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">Cover components without package installation</a> replaced the old option <a href="../../11.0/list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">Also distribute to package components</a>. (T121508ALVAO)</li>
    </ul>
    <h3>Administration</h3>
    <ul>
        <li>Administration – Asset Management – <a href="../list-of-windows/alvao-webapp/administration/asset-management/property-definitions">Property definitions</a> – administrators can manage property definitions in WebApp now. The existing command <em>AM Console – Tools – Lists - Property definitions</em> opens the corresponding WebApp page. (T111836ALVAO, T136240ALVAO)<br />
            <img src="img/admin-propertydefinitions.png" class="picture" />
        </li>
        <li>Administration – <a href="../list-of-windows/alvao-webapp/administration/organization">Organizations</a> – the page is now also available in the Asset Management product. (T105151ALVAO)</li>
        <li>Administration – Asset Management – Settings – the <a href="../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Detection</a> page is extended with the <em>Alvao Service</em> settings and the new <a href="../list-of-windows/alvao-webapp/administration/asset-management/settings/sw-products-library">SW products library</a> page is added. (T128616ALVAO)</li>
        <li>AM WebService may run in MS Azure AppService (i.e., without a virtual machine). (T128281ALVAO)</li>
        <li>Administration – Settings – <a href="../list-of-windows/alvao-webapp/administration/settings/settings-check">Configuration check</a> 
            – added warning on exceeding the number of objects enabled by the activation key.
            The warning shows up also after starting the AM Console. (T132314ALVAO)</li>
    </ul>
    <h2 id="sd" translate="no">ALVAO Service Desk</h2>

    <h3>Request</h3>
    <ul>
        <li>On the <a href="../list-of-windows/alvao-webapp/requests/request">Request</a> page and in other places in the app an icon indicating the <strong>actual presence</strong> of a user is displayed by each user. Administration – Service Desk – Settings – <a href="../list-of-windows/alvao-webapp/administration/service-desk/settings/general">General</a> – turn on the new option <em>Show users presence</em>. (T124374ALVAO)<br />
            <img class="picture" src="img/user-status.png"/></li>
        <li>Request - Communication - <strong>Find in log</strong> button added next to the label o the tab. (T122754ALVAO)<br />
            <img class="picture" src="img/find-in-log.png"/></li>
        <li>Request - <em>Requester/Solver/...</em> popup - the new <strong>Start chat</strong> button opens the MS Teams window and activates the chat with the given user. (T124372ALVAO)<br />
            <img class="picture" src="img/start-chat.png"/></li>
        <li>Request – <em>Solving process</em> tab - a link to the <a href="../list-of-windows/alvao-webapp/requests/request">Knowledge base</a> was added. (T122592ALVAO)<br />
            <img class="picture" src="img/solving-process-kb.png"/></li>
        <li>Request – a new <a href="../list-of-windows/alvao-webapp/requests/request">Attachments</a> view was added to the <em>Communication</em> tab. (T124389ALVAO)</li>
        <li><a href="../list-of-windows/alvao-webapp/requests/new-request">New request</a>/<a href="../list-of-windows/alvao-webapp/requests/request/assign-to-solver">Assign</a>/<a href="../list-of-windows/alvao-webapp/ticket-templates/new-template">Request template</a>/<a href="../list-of-windows/alvao-webapp/requests/request/move-to-another-service">Move to another service</a> – <i>Solver group</i> field – the suggestion box content no longer depends on the currently selected solver in the <i>Assign to solver</i> field. All solver groups of the given service are always offered. (T128300ALVAO)</li>
        <li>Request – <a href="../list-of-windows/alvao-webapp/requests/request">Reply to requester</a> – all request participants are also added to the Cc address list. (T135105ALVAO)</li>
    </ul>
    <h3>Extensibility</h3>
    <ul>
        <li>Administration – <a href="../list-of-windows/alvao-webapp/administration/custom-items">Custom fields</a> – you can add a custom field to <a href="../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request">request status</a>. (T107351ALVAO)</li>
    </ul>
    <h3>Administration</h3>
    <ul>
        <li>Administration – Service Desk – Services - Service – <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/loading-messages">Loading messages</a> – Exchange Server – OAuth 2.0 - settings names have been unified with the Azure portal. (T134540ALVAO)</li>
        <li>Administration – Service Desk – Services - Service – <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">New Request Form</a> - to make the form more clear, you can group its items into sections and name these sections. In the <i>New Request</i> form, the user can then collapse or expand the individual sections of items as needed. (T101472ALVAO)</li>
    </ul>

    <h3>Other</h3>
    <ul>
        <li>Main page – the default background image is changed. (T123773ALVAO)<br />
            <img src="img/main.png" class="picture" />
        </li>
    </ul>

    <h2 id="extension_modules">Extension modules</h2>
    <h3 translate="no">ALVAO Advanced Workflows</h3>
    <ul>
        <li>WebApp – Administration – Service Desk – Process – Solving process - request status – Behavior – Automatic request creation – <a href="../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/automatic-request-creation/add">Rule</a> – Requester - a requester of the new request can be defined by a custom field of the source request. (T125502ALVAO)</li>
    </ul>
    <h3 translate="no">ALVAO Asset Management Custom Apps</h3>
    <ul>
        <li>WebApp – Objects – Object – now supports <a href="../modules/alvao-am-custom-apps/applications/i-entity-tab">custom tabs</a> and <a href="../modules/alvao-am-custom-apps/applications/i-entity-command">custom commands</a>. (T112526ALVAO)<br />
            <img class="picture" src="img/object-custom-cmd-and-tab.png"/></li>
    </ul>

    <h3 id="am_custom_enterprise_api" translate="no">ALVAO Asset Management Enterprise API</h3>
    <ul>
        <li>Users – Added a new method for <a href="https://app.swaggerhub.com/apis/A3555/ALVAO_REST_API/v1.1#/Users/post_users">creating users</a>.</li>
        <li>New methods manipulating <a href="https://app.swaggerhub.com/apis-docs/A3555/ALVAO_REST_API/v1.1#/Groups">user group membership</a> were added. (T124401ALVAO)</li>
        <li>Added new Query endpoints. (T122598ALVAO)</li>

    </ul>

    <h3 id="cm" translate="no">ALVAO Configuration Management</h3>
    <ul>
        <li>When an object is moved to the <i>Recycle bin</i> or to the <i>Discarded assets</i> all of its links are automatically removed. (T134581ALVAO)</li>
    </ul>


    <h3 id="emc" translate="no">ALVAO Inventory Audits</h3>
    <ul>
        <li>Asset check – when an asset was not found, the user must specify a reason. (T130043ALVAO)</li>
    </ul>
    <h3 translate="no">ALVAO Microsoft Intune Connector</h3>
    <ul>
        <li>This <a href="../modules/alvao-microsoft-endpoint-manager-connector">new module</a> allows the import of devices from MS Intune and updates them. 
            It also contains the functionality of the former <a href="https://doc.alvao.com/en/11.0/modules/alvao-ms-sccm-connector">MS SCCM Connector</a>. (T128357ALVAO)<br />
            <img class="picture" /></li>
    </ul>
    
    <h3 id="sccm" translate="no">ALVAO MS SCCM Connector</h3>
    <ul>
        <li>This module is replaced by the new module 
            <a href="../modules/alvao-microsoft-endpoint-manager-connector">ALVAO Microsoft Intune Connector</a>. (T128357ALVAO)</li>
    </ul>


    <h3 translate="no">ALVAO Outlook Add-in</h3>
    <ol>
        <li>Add-in Online (from AppSource) - with the new command <em>...</em> - <strong>Save e-mail to request log</strong> you can save the selected e-mail to the displayed request in Alvao. (T80764ALVAO)<br />
            <img class="picture" src="img/oa-save-email.png"/></li>
        <li>Add-in Online (from AppSource) – a notification strip was added indicating that the selected message is not stored in the request log. (T127757ALVAO)<br />
            <img class="picture" src="img/oa-not-saved-email.png" /></li>
    </ol>
    <h3 translate="no">ALVAO Service Desk Custom Apps</h3>
    <ul>
        <li>Administration – Application – interface <a href="../modules/alvao-sd-custom-apps/applications/ticket-custom-tabs">IView</a> and <a href="../modules/alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands">ICommand</a> are deprecated. Use <a href="../modules/alvao-am-custom-apps/applications/i-entity-tab">IEntityTab</a> and <a href="../modules/alvao-am-custom-apps/applications/i-entity-command">IEntityCommand</a> instead of them. (T112526ALVAO)</li>
    </ul>

    <h3 id="sd_enterprise_api" translate="no">ALVAO Service Desk Enterprise API</h3>
    <ul>
        <li>Users – added a new method for <a href="https://app.swaggerhub.com/apis/A3555/ALVAO_REST_API/v1.1#/Users/post_users">creating users</a>.</li>
        <li>Users - new methods manipulating <a href="https://app.swaggerhub.com/apis-docs/A3555/ALVAO_REST_API/v1.1#/Groups">user group membership</a> were added. (T124401ALVAO)</li>
        <li><a href="https://app.swaggerhub.com/apis/A3555/ALVAO_REST_API/v1.1#/Users/get_users">Users</a> – added a new resource containing user’s SLAs for services. (T131941ALVAO)</li>
        <li><a href="https://app.swaggerhub.com/apis/A3555/ALVAO_REST_API/v1.1#/Tickets/get_tickets">Tickets</a> – added new attributes: internal target, due date, device number, and related organization. (T133549ALVAO)</li>
        <li>Ticket – <a href="https://app.swaggerhub.com/apis/A3555/ALVAO_REST_API/v1.1#/Tickets/put_tickets__ticketId__state">Change status</a> – added comment for approver/requester. (T127245ALVAO)</li>
        <li>Ticket – <a href="https://app.swaggerhub.com/apis/A3555/ALVAO_REST_API/v1.1#/Tickets/get_tickets__ticketId__nextStates">Next statuses</a> – added information on the required columns. (T127245ALVAO) </li>
        <li>Added a new <a href="../modules/alvao-sd-enterprise-api/power-platform-custom-connector">custom connector</a>
            for Power Platform containing several actions for creating and processing requests. (T88202ALVAO)</li>
        <li>Added new Query endpoints. (T122598ALVAO)</li>

    </ul>

    <h3 id="" translate="no">ALVAO Teams Add-in</h3>
    <ul>
        <li><strong>Create request</strong> – with the new command you can create a new request in Alvao from a message in a chat in MS Teams. (T124366ALVAO)<br />
            <img class="picture" src="img/teams-create-request.png" />
            <img class="picture" src="img/teams-create-request-form.png" />
        </li>
        <li>Added the <strong>Alvao Bot</strong>. (T110744ALVAO)<br />
            <img class="picture" src="img/teams-bot.png" /></li>
        <li>Notifications – receive notifications from Alvao in Teams by turning on the option <em>WebApp – user menu (top right) – Settings</em> – <a href="../list-of-windows/alvao-webapp/settings/custom-notification-settings">Notifications</a> – <strong>Send notifications by MS Teams Add-in</strong>. (T122594ALVAO)<br />
            <img class="picture" src="img/teams-notification.png" /></li>
        <li>Pages of requests and other Alvao entities are opened straight in the MS Teams application. (T132852ALVAO)</li>
    </ul>

    </asp:Content>

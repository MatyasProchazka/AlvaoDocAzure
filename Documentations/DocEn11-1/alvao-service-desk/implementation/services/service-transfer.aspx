<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Service Transfer</h1>
    <p>
        You can transfer services, including their settings, from one instance of Alvao to another instance by exporting the settings of the selected services to a file in one instance and then importing that file into the other instance. In this way, you can, for example, transfer new services that you have created and tested in a test environment to a production environment.
    </p>
    <p>
        Importing the file into the target instance creates new services, processes, etc. If the same named services, process, etc. already exist in the target instance as in the imported file, these elements are not updated in the target instance. 
    </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        <p>Only new services that do not already exist in the target environment can be ported, but existing services cannot be updated.</p>
    </div>

    <h3>Export of services</h3>
    <ol>
        <li>In a <strong>resource instance</strong> (e.g., in a test environment) in <strong>ALVAO WebApp &ndash; Administration &ndash; </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a>, select the service you want to transfer. If you do not select any service, all services in the tree will be transferred.</li>
        <li>Use the <strong>Export</strong> command to specify whether you want to save the service to the file with or without any child services.</li>
        <li>Name the file and confirm the export.</li>
    </ol>
    <h3>Import services</h3>
    <ol>
            <li>In a&nbsp;<strong>target instance</strong> (e.g. in a&nbsp;production environment) in&nbsp;<strong>ALVAO WebApp &ndash; Administration &ndash; </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a> in the tree or in the&nbsp;service table, select one service to which&nbsp; you want to import services from the file. Use the <strong>Import</strong> command. If you do not select a service, the new services are imported into the root of the service tree.
            <li>Select the file with the saved settings from the disk, see <i>Exporting services</i>, and confirm the file selection with OK.</li>
            <li>In the&nbsp;displayed&nbsp;dialog, check the overview of the&nbsp;settings&nbsp;to be imported and confirm the import.</li>
            <li>The package is imported sequentially and finally display report with&nbsp;an overview of the imported settings. Note: The report of the imported settings is thus saved in the Windows <em>ALVAO Audit</em> log.</li>
            <li>Finish the set up according to the instructions in the report.</li>
    </ol>
    <h3>File contents</h3>
    <p>The file contains following information:</p>
    <ul>
        <li>Service (including sub services)
                <ul>
                    <li>Service settings (name, order in tree, key words, form settings, etc.)</li>
                    <li>Icon</li>
                    <li>Service catalog display settings</li>
                    <li>Form for submitting a new request, possibly including a default request template</li>
                    <li>Setting up a service representative</li>
                    <li>Notifications (including own notifications)</li>
                    <li>Custom fields of services and their values</li>
                </ul>
        </li>
        <li>Processes of exported services<ul>
            <li>General settings of the process</li>
            <li>Request items set in process</li>
            <li>Solution progress
                    <ul>
                        <li>Request states<ul>
                            <li>General state set (name, description, instructions for solvers, etc.)</li>
                            <li>Set announcements for the applicant (including a custom template)</li>
                            <li>Required items for transition to request state</li>
                            <li>Set approval
                                <ul>
                                    <li>Target requirement states</li>
                                    <li>Report template for approvers</li>
                                    <li>Approval scheme name for automatically triggered approvals</li>
                                </ul>
                            </li>
                            <li>Rules for <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/automatic-request-creation">automatic request creation</a> (see module <a href="../../../modules/alvao-sd-advanced-workflows">ALVAO Advanced Workflows</a>)
  including the corresponding request templates, but only for the services contained in the exported file.  </li>
                        </ul>
                        </li>
                    </ul>
            </li>
        </ul>
        </li>
        <li>Custom request items used in exported processes and services</li>
        <li>Custom fields for request states</li>
        <li>Exported service icons</li>

    </ul>
    <p>The listed entities are exported including text translations into other languages.</p>
    <p>The file does not contain:</p>
    <ul>
        <li>Users</li>
        <li>User groups</li>
        <li>SLA</li>
        <li>Access to services</li>
        <li>Assigned SLAs to service requesters</li>
        <li>Approval schemata</li>
        <li>Operating hours</li>
        <li>Requests templates in addition to the exceptions listed</li>
    </ul>

</asp:Content>
<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Installing reports in Microsoft SQL Server Reporting Services</h1>

    Reports in RDL format must be installed in Report Manager, which is part of Microsoft SQL Server Reporting Services.<ol>
        <li>In the <strong>Report Manager</strong> application, select <strong>Upload File</strong> in the desired directory.</li>
        <li>Select the RDL file on the disk and confirm.</li>
        <li>Select the report and go to the <strong>Properties</strong> tab.</li>
        <li>In the <strong>Data Sources</strong> section, set up the connection to the Alvao database.</li>
    </ol>

    To set up a regular report to be sent to your email, do the following:
    <ol>
        <li>In Report Manager, select the report and go to the Subscriptions tab.</li>
        <li>Select New Subscription and set the following:<ul>
            <li>Delivery method to Email.</li>
            <li>Addressee to whom the report will be delivered.</li>
            <li>Subject, report format and email priority.</li>
            <li>Scheduling of sending.</li>
            <li>Report parameters (description of parameters below).</li>
        </ul>
        </li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        To be able to send reports via email, you must have an SMTP server set up in the Reporting Services Configuration Manager.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Reports display objects and licenses regardless of the access permissions set for users. We recommend that you restrict access to the report in Report Manager to authorized persons who have the right to see the entire asset or license records.
    </div>


</asp:Content>

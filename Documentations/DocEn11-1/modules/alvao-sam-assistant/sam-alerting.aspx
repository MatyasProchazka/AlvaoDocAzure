<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>SAM notifications</h1>

    <h2>Settings</h2>
    <ol>
        <li>In <strong>ALVAO WebApp - Administration - Groups</strong>
            to the <strong>Manage Software on Computers</strong> group
  insert the people who are responsible for the software in the company. Notifications will be sent to these persons by default.</li>
        <li>Go to the SAM - Alerting <strong>(Administration - Asset Management - Settings - </strong><a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/sam-alerting">SAM-alerting</a>) to modify the alerting rules if necessary.</li>

    </ol>

    <h2>Email alerts for missing licenses for specific products</h2>
    <ol>
        <li>In the <strong>AM Console</strong>, use the <strong>Software - Products (software)...</strong>.</li>
        <li>A list of all products will be displayed. Select the products for which you want to turn on notifications and use the <strong>Audit...</strong>.</li>
        <li>In the pop-up menu window that appears, select <strong>Notify by email</strong> and confirm the change with the <strong>OK</strong> button.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The Audit column also appears in the top product list in the <strong>License and Installation Overview</strong> window, where you can also execute <strong>Audit...</strong> from the local menu.
    </div>

    <h2>Regular license purity check</h2>

    <p>If during a regular license cleanliness check you discover that a computer is missing a license:</p>
    <ol>
        <li>... and the product is set to <strong>Audit</strong>
            to <strong>Yes</strong>, you can edit the value on the product (<strong>Audit...</strong> command from the local menu) to <strong>Alert by email</strong>, which will automatically send out notifications according to the rules you set, see <strong>ALVAO WebApp - Administration - Asset Management - Settings - SAM - Notification</strong>.</li>
        <li>... and the product is set to <strong>Audit</strong>
            to <strong>Email Alert</strong>, you can resend the alert using the <strong>Send Alerts Again</strong>&nbsp;command from the local menu. In the bottom list in the <strong>Last Alert</strong>&nbsp;column, you will find the date when the last alert was sent. In the <strong>Next scheduled alert</strong>
        column, you will find the date when the next alert will be sent automatically.
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        For more information on regular license cleanliness checking, see <a href="../../alvao-asset-management/software-management/software-regular-auditing">Regular license cleanliness check</a>.
    </div>


    <h2>Show history of sent notifications on computer</h2>
    <ol>
        <li>In the <strong>AM Console</strong>&nbsp;select a specific computer in the object tree.</li>
        <li>Go to the <strong>Journal</strong> tab.</li>
        <li>In the log, you can see entries regarding the alerts sent. 
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Information displayed in each column:
            </div>
            <ul>
                <li><strong>Icon</strong> -
                    <img src="../../alvao-asset-management/software-management/sam_alert_icon.png" alt="" /></li>
                <li><strong>Date</strong> - The date the alert was sent.</li>
                <li><strong>Alert Type</strong> - Displays the text: <strong>.
 Missing License Alert</strong></li>
                <li><strong>Title</strong> - Displays text: <strong>Alert Sent</strong></li>
                <li><strong>Message</strong> - Displays text: <strong>Product:"&lt;product name&gt;"; Alert order: N; Recipients:"&lt;list of recipients&gt;"</strong></li>
            </ul>
        </li>
    </ol>

</asp:Content>

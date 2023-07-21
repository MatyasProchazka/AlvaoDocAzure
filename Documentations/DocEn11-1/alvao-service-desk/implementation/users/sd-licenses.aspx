<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ALVAO Service Desk license</h1>
    <h2>License types</h2>
    <p>
        Each ALVAO Service Desk user draws a per-user or per-solver license, or draws no license. The total draw of these licenses is displayed in the&nbsp; <strong>Administration</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/licenses">License</a>
	and is calculated in accordance with the <a href="../../license">license agreement</a>.
    </p>

    <p>A user draws a <b>user license</b> if all of the following conditions are met:</p>
    <ul>
        <li>The user does not draw a solver license. </li>
        <li>The user is a member of a resolution team or a requester of a service in which the Host user <b>does not</b> have an SLA (i.e., the service does not serve anonymous requesters).
        </li>
    </ul>

    <p>The user draws a <b>solver licence</b> if at least one of the following conditions is met:</p>
    <ul>
        <li>The user is a member of a research team (i.e., solver, manager, or special solver) of a service in which the user is a Guest <b>has</b> an SLA (i.e. an anonymous requester can create a request in the service).
        </li>

        <li>The user is a member of a service team for which the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Require solver license</a> option is enabled.
        </li>


    </ul>



    <h2>License exceeding</h2>
    <p>
        If the license is exceeded, a warning will automatically appear in <em>Administration - Settings - </em><a href="../../../list-of-windows/alvao-webapp/administration/settings/settings-check">Settings check</a>. In that case, increase the license by entering <a href="../../../list-of-windows/alvao-webapp/administration/licenses/activation">a new activation key</a>, or adjust the permission settings in the services (see below).
 Then, on the <a href="../../../list-of-windows/alvao-webapp/administration/settings/settings-check">Settings check</a> page, verify that the license is already in order. The page displays the last detected license usage information, which is normally automatically updated 1x/day. However, when the license is overdrawn, it is updated every time the <em>Settings Check</em> page is viewed.
 Updates can take up to 15 minutes.
    </p>


    <h2>Ensuring that only licenses per user are drawn</h2>
    <p>If you have only per-user licenses and the application reports an overrun of solvers, you need to change the service settings to require only per-user licenses. Follow these steps:</p>

    <ul>
        <li>In <strong>Administration - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a>, toggle the view with <strong>Show as table</strong>. Then view the <strong>License Draws</strong> column.
        </li>
        <li>Filter for services that have a <strong>Solver</strong> value in this column.
        </li>
        <li>For all of these services, ensure that the Host user (who is part of the "Everyone" group) does not have an SLA on this service. Instead of the "Everyone" group, we recommend using other groups, such as the "Registered Users" group, which contains all users except the Host user.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                If the Host user must have an SLA in the service, the service will need a solver license. 
            </div>
        </li>
    </ul>



    <h2>Ensuring that only investigator licenses are drawn</h2>
    <p>If you only have a solver license and the application reports an overage of users, you need to change the service settings to require only solver licenses. Follow these steps:</p>

    <ul>
        <li>In <strong>Administration - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a>, toggle the view with <strong>Show as table</strong>. Then view the <strong>License Draws</strong> column.</li>
        <li>Filter out the services that have a value of <strong>per user</strong> in this column.</li>
        <li>Select these services and use the <strong>Edit</strong> command to enable the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Require license per solver</a> option on them.</li>
    </ul>


    <h2>Checking user license usage for a combined license</h2>
    <p>If you are using a combined user and solver license and need to find out which users are using which license, do the following:</p>

    <ul>
        <li>In <strong>Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/users">Users</a> in the users table, display the <strong>License Drawing</strong> column, which shows the type of license the user is drawing.</li>
        <li>If a user is drawing a license that they shouldn't be (e.g., the user is drawing a solver license but should have a user license), select the user and use the <strong>Edit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/users/detail/user-rights">Rights</a> command.</li>
        <li>In the permissions, view the <strong>License Draws</strong> column.
 If a service draws a solver license, the user must be assigned a solver license.
            <ul>
                <li>To ensure that the service draws a per-requester license, on the service, remove the user's Host SLA and disable the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Require a per-requester license</a> option.
                </li>
                <li>To ensure that the service draws a solver license, enable the <em>Require solver license</em> option.
                </li>

            </ul>
        </li>
    </ul>

    <h2>Checking the use of licences by services</h2>
    <p>If the number of licenses being used has unexpectedly increased and you need to find out how many licenses and what kind of licenses each service requires, then:</p>

    <ul>
        <li>In <strong>Administration - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a>. Toggle the view with <strong>Show as table</strong>.</li>
        <li>Next, view the <strong>License Draws</strong> and <strong>License Draws (Number)</strong> columns.</li>
        <li>Check the license counts and see if any services are drawing an unexpected number of licenses or the wrong license type.</li>
    </ul>


</asp:Content>
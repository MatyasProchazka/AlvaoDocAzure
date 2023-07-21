<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>My Team</h1>
    <p>Contact persons of external customers (service requesters) can create user accounts for access to Alvao for their colleagues using the <strong>WebApp</strong> command - <strong>user menu in the upper right corner</strong> - <a href="../../../list-of-windows/alvao-webapp/my-team">My Team</a> self-service.</p>
    <p>
        The <a href="../../../list-of-windows/alvao-webapp/my-team">My Team</a> page is only available to members of the <strong>Team Managers</strong> group.
If you want to make this functionality available to your customers, add their contact persons to this group.
    </p>

    <h2>Recommended user group structure</h2>

    <p>We recommend using the following group structure for assigning SLAs to customers.</p>
    <p>Let's have a service in the SD in which the customer requests, for example "Technical Support". In the Technical Support service, the SLAs are, for example, "Unpaid Technical Support", "Paid Technical Support" and "Premium Technical Support".</p>
    <p>
        There are 3 groups of users: 'Unpaid TP', 'Paid TP' and 'Premium TP'.
These groups have corresponding SLAs assigned to the service.
    </p>
    <p>A customer with a name such as "Acme corp." orders paid technical support for routine requests and premium technical support for critical events. So for this customer we will create 2 more groups. The "Acme - Paid TP" group will be a member of the "Paid TP" group and the "Acme - Premium TP" group will be a member of the "Premium TP" group.</p>
    <p>The customer managers will then be included in both the "Acme - Paid TP" and "Acme - Premium TP" groups. When editing the rights of their subordinates, the managers will then see these 2 groups and can group users according to whether they should be able to use the SLA.</p>
    <p>So the customer groups do not have SLAs directly assigned to the service, but are members of other groups. This creates 2 levels of groups, one level describing the SLAs provided on the service and the other level containing groups with customer requesters.</p>
    <p>The user creation and editing page displays in the permissions section the groups in which the manager is a direct member, they do not imply membership in any system group and also imply any SLA.</p>
    <h2>Creating a new customer in SD</h2>
    <ol>
        <li>Create user groups for each service and SLA provided to the customer and include them in the groups provided by the SLA. (See Recommended Group Structure in SD)</li>
        <li>Create users for the customer manager. Fill in all the necessary fields for this user, especially name, username, email and organization.</li>
        <li>Assign the user to all groups created for the customer.</li>
        <li>If the customer manager will be managing the requester themselves, assign them to the "Team Managers" group.</li>
        <li>If the SD employee is setting up other customer requesters, create a user for them, fill in all the necessary fields, especially name, email and organization, and assign the customer manager as the supervisor. Group them according to the agreement with the customer. </li>
    </ol>

    <h2>Customer removal</h2>
    <ol>
        <li>Remove all customer groups from the SLA groups (see chapter Recommended group structure in SD)</li>
        <li>Block or remove the customer's users. </li>
    </ol>

</asp:Content>

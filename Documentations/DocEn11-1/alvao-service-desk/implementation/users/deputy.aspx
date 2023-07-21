<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User Representative</h1>
    <p>A user may be represented by another user in their absence from work. The <strong>representative</strong> automatically takes over the following roles from the user being represented:</p>
    <ul>
        <li>approval</li>
        <li>Main solver</li>
    </ul>
    <p>The deputy takes over the roles only during the <strong>absence</strong> of the deputy.</p>
    <p>Each user can pre-schedule their absence and select representative in <strong>ALVAO WebApp - User Menu - Settings</strong> - <a href="../../../list-of-windows/alvao-webapp/settings/out-of-office">Absence</a>. This is also where everyone can see the users they represent, and can turn absenteeism on for them if they are absent. The system administrator can set individual users to be present and proxy on the <strong>Administration</strong> page - <a href="../../../list-of-windows/alvao-webapp/administration/users">Users</a>.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The role of the represented is delegated only to the direct representative. If the representative is also absent, the role of the represented is not transferred to the user who represents the absent representative.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        A representative of an absent requester is not authorized to approve the requester's request on the requester's behalf (see the approval step <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/approval-scheme/detail/approval-scheme-item">Requester</a>).
    </div>

</asp:Content>

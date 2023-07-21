<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom default user settings</h1>
    <p>
        Each user has their own <a href="../../../list-of-windows/alvao-webapp/settings/settings-backup">personal settings</a>
        of Alvao apps that they can change individually. The first time the applications are started, they are set to the default settings. If you are not comfortable with the <strong>system</strong> default user settings, you can define <strong>custom</strong> default settings. The system supports different defaults for:
    </p>
    <ul>
        <li>Applicants, i.e., for regular users who have no role in any service as a solver, manager, reader, or exceptional solver.</li>
        <li>Solver team members, i.e. users with roles on services.</li>
    </ul>
    Follow the procedure below to define default settings for new users, or override the current user settings with these default settings.
	
	<h2>Create your own default settings</h2>
    <ol>
        <li>In Alvao applications, you or another user set the tables to look like the default settings.</li>
        <li>In <strong>WebApp - Administration - Users</strong>, select the system user <em>Default Settings - Requesters</em> or <em>Default Settings - Solution Team Members</em>, depending on the type of user you want to change the default settings for, and select <strong>Set Profile</strong> from the command menu.</li>
 <li>In the window, select your account (or the account of the user who set the applications to the desired default settings) and confirm the override.</li>
    </ol>

    This default setting is applied to new users when they first log in to an Alvao application. Existing users who are already working with applications will not be affected by the change. They must restore the settings to the default state (see <a href="../../working-with-tables/backup-profile">Backup and restore tables settings</a>), or an administrator can overwrite them by following the procedure below.
  <h2>Overwriting a user's personal settings with the default settings</h2>
    <ol>
        <li>In <strong>WebApp - Administration - Users</strong>
            select the user you want to change the settings for.</li>
        <li>From the command menu, select <strong>Set Profile</strong>.</li>
        <li>In the window, select <em>Default Settings - Applicants</em> or <em>Default Settings - Research Team Members</em> and confirm the settings override.</li>
    </ol>

</asp:Content>

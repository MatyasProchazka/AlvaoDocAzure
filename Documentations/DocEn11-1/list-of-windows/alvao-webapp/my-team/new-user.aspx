<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">


  <h1>New user</h1>

  <p>Use this form to create a new user account in Alvao. The new user is automatically assigned to the same organization as you and is listed as your subordinate in Alvao.</p>
  
  <p>Options:</p>
  <ul>
  <li><strong>User Name</strong> - enter a username to log in to Alvao.</li>
  <li><strong>Password</strong> - optionally, leave the automatically generated password or enter a new password for the user to log in to the system.</li>
  <li><strong>Name and Surname</strong> - enter the user's name and surname.</li>
  <li><strong>E-mail</strong> - enter the user's email address if applicable.</li>
  <li><strong>Work phone</strong> - enter the user's work phone contact, if applicable.</li>
  <li><strong>Mobile</strong> - enter the user's mobile number if applicable.</li>
  <li><strong>Department</strong> - enter the user's department if applicable.</li>
  <li><strong>Position</strong> - if applicable, enter the user's position (job position).</li>
  <li><strong>Manager</strong> - change the manager if necessary.</li>
  <li><strong>Permissions</strong> - select the user groups to which you want to add the new user. Membership in the groups gives the user permission to request certain services in Alvao, see <a href="../../../alvao-service-desk/implementation/users/my-team">recommended user group structure</a>.</li>
  </ul>


</asp:Content>

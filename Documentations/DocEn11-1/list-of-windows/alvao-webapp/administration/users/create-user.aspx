<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New user</h1>

  <p>The form is used to create a new user in Alvao.</p>
  
  <p>Options:</p>
  <ul>
  <li><strong>Name and surname</strong> - enter the user's first and last name.</li>
  <li><strong>User name</strong> - enter the username under which the user will log into the Alvao system.</li>
  <li><strong>Contact information</strong><ul>
  <li><strong>Mobile phone</strong> - if applicable enter the user's mobile phone number.</li>
  <li><strong>E-mail</strong> - if applicable enter the user's e-mail address.</li>
  <li><strong>E-mail 2</strong> - if applicable enter the user's second email.</li>
  <li><strong>E-phone</strong> - if applicable enter the user's phone number.</li>
  <li><strong>Business phone 2</strong> - if applicable enter the user's second phone number.</li>
  <li><strong>Additional contacts</strong> - if applicable enter additional contacts for the user.</li>
  </ul>
  </li>
  <li><strong>Organization</strong><ul>
  <li><strong>Organization</strong> - if applicable, enter an organization or select one from the list.</li>
  <li><strong>Department</strong> - if applicable enter the user's department.</li>
  <li><strong>Position</strong> - if applicable specify the user's function.</li>
  <li><strong>Office</strong> - if applicable, enter the office where the user works.</li>
  <li><strong>Manager</strong> - if applicable, select the person who is the user's direct supervisor.</li>
  <li><strong>Substitute</strong> - if applicable, select the person who will represent the user in their absence.</li>
  <li><strong>Personal number</strong> - if applicable, enter the user's personal number.</li>
  </ul>
  </li>
  <li><strong>Other</strong> - if applicable, fill in additional <a href="../../../../alvao-service-desk/implementation/custom-items">custom fields</a>.</li>
  <li><strong>Extended</strong><ul>
  <li><strong>Preferred language</strong> - select the user's preferred language.</li>
  <li><strong>Time zone</strong> - select the time zone in which to display time data to the user.</li>
  <li><strong>Account is disabled</strong> - enable to <a href="../../../../alvao-service-desk/implementation/users/inactive-accounts">disable the account</a>.
  The selected user then won&#39;t be able to log into Alvao applications.</li>
  <li><strong>Shared account</strong> - enable if the account is a shared account, i.e. a common account for a group of requesters who log into the system with the same username and password and only fill in their contact details when working with the system.</li>
  <li><strong>Hide in menus</strong> - turn on if this is an auxiliary account that you want to hide in the application. This is the recommended way to hide all system and auxiliary accounts that have been <a href="../../../../alvao-asset-management/implementation/users">entered into Alvao from Active Directory</a> or other sources, and do not represent actual system users.</li>
  <li><strong>Application account</strong> - enable if the account is to be used by an application or script to access the <a href="../../../../modules/alvao-am-enterprise-api">ALVAO REST API</a>. You cannot log into Alvao interactive applications (WebApp or AM Console) with this account.
  <ul>
  <li><strong>AAD application</strong> - select if this is an application account that is registered in Azure Active Directory (AAD). The application then authenticates to the ALVAO REST API with its AAD token.  <ul>
  <li><strong>Application (client) ID</strong> - enter the corresponding value of the account in AAD.</li>
  <li><strong>Directory (tenant) ID</strong> - enter the corresponding value of the account in AAD.</li>
  </ul>
  </li>
  <li><strong>Other applications</strong> - select if this is not an AAD application. The application is authenticated in the ALVAO REST API with a username and password.  
  </li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Loading messages</h1>
    <p>
        This section on the <a href="create-service">New Service</a> form is used to set up retrieval of messages from the mailbox.<br />
        If the message contains a tag of an existing request in the subject line, it will be automatically loaded into its log. Based on messages without a request tag, <a href="../../../../../alvao-service-desk/requests/new-request">a new request is created</a>.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Server</strong>
            <ul>
                <li><strong>Exchange Server</strong> - enter the name of the Exchange server, e.g.:
                            <span class="console">outlook.office365.com</span>.
                    <ul>
                        <li><strong>Authentication</strong>
                            <ul>
                                <li><strong>OAuth 2.0 (Exchange Online)</strong> - First, <a href="https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/how-to-authenticate-an-ews-application-by-using-oauth#register-your-application">register the Alvao Service application</a> in your Azure Active Directory and <a href="https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/how-to-authenticate-an-ews-application-by-using-oauth#configure-for-app-only-authentication">set permissions</a> for the <em>full_access_as_app</em>. We also recommend <a href="https://docs.microsoft.com/en-us/graph/auth-limit-mailbox-access">limiting permissions</a> so that can only access the listed mailboxes.
                                    <ul>                                        
                                        <li><strong>Application (client) ID</strong> - enter the Alvao Service application ID from AAD.</li>
                                        <li><strong>Directory (tenant) ID</strong> - enter the directory ID of the Alvao Service application from AAD.</li>
                                        <li><strong>Client secret</strong> - enter the secret code of the Alvao Service application from AAD.</li>
                                        <li><strong>E-mail</strong> - enter the email address of the retrieved mailbox</li>
                                    </ul>
                                </li>
                                <li><strong>Basic</strong>
                                    <ul>
                                        <li><strong>User name</strong> - enter a username to log in to the service mailbox, see <a href="../../../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">New Service</a><em> - General - Email</em>.
  The username is usually the same as the mailbox email address.<br />
                                            If you want to retrieve messages from another mailbox, such as a <a href="https://docs.microsoft.com/en-us/microsoft-365/admin/email/about-shared-mailboxes?view=o365-worldwide">shared mailbox</a> in Microsoft 365, put a backslash at the end followed by the email address of that mailbox. For example, the username <em>service_account@contoso.com</em> will retrieve messages from the <em>servicedesk@contoso.com</em> mailbox and log into that mailbox as the <em>service_account@contoso.com</em> user.
                                        </li>
                                        <li><strong>Password</strong> - enter the password to log in. 
                                            <div class="caution">
                                                <div class="icon"></div>
                                                <div class="title">Caution:</div>
                                                The password for accessing the mailbox is stored in the database in unencrypted form. 
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        The interface is supported by Exchange Server 2016 (or later) and Office 365.
                    </div>
                </li>
                <li><strong>IMAP Server</strong> - enter the network name of the IMAP server.
 <ul>
     <li><strong>IMAP Port</strong> - enter the TCP/IP port for communication with the IMAP server.</li>
     <li><strong>SSL</strong> - enable if you want secure communication with the server.</li>
     <li><strong>Login</strong>
         <ul>
             <li><strong>User Name</strong> - enter the username of the user from whose default mailbox messages are to be retrieved.</li>
             <li><strong>Password</strong> - enter a password for logging in.
                 <div class="caution">
                     <div class="icon"></div>
                     <div class="title">Caution:</div>
                     The password for accessing the mailbox is stored in the database in unencrypted form.
                 </div>
             </li>
         </ul>
     </li>
 </ul>

                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        Through the IMAP interface you can connect to a wide range of mail servers such as Exchange Server, HCL Domino, etc.
                    </div>

                </li>
            </ul>
        </li>
        <li><strong>Settings</strong>
            <ul>
                <li><strong>Load unread messages only</strong> -
 turn on if you only want to retrieve messages from the clipboard that are not marked as read.</li>
                <li><strong>Mark uploaded messages as read</strong>
                    - turn on if you want to automatically mark messages that Alvao has processed as read.</li>
                <li><strong>Transfer uploaded messages to</strong> - enter the folder name if you want to move the message to a specific folder in the mailbox after processing.</li>
                <li><strong>Delete uploaded messages</strong> - turn on if you want to delete processed messages from the clipboard. If you do not otherwise have a way to delete old clipboard contents, we recommend leaving this option on. </li>
            </ul>
        </li>
    </ul>

</asp:Content>

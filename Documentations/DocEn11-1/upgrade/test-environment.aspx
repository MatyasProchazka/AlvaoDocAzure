<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Test environment</h1>

    <p>The testing environment is used to:</p>
    <ul>
        <li>testing a new version of Alvao before upgrading the production environment;</li>
        <li>testing software extensions before deploying them to the production environment.</li>
    </ul>
    <h2>Creating a test environment</h2>
    <p>It is recommended to create a test environment by copying the production environment.</p>


    <ol>
        <li>On the Alvao production server ("live" application server), stop Alvao Service and Collector services and set their startup mode to <em>Handheld.</em>

        </li>
        <li>Create a differently named clone of the Alvao server:
            <ul>
                <li>Create a clone of the server.</li>
                <li>Disconnect the server from the network.</li>
                <li>Log in without the network as a local admin.</li>
                <li>Use the sysprep tool to delete the existing SID and generate a new SID.</li>
                <li>Change the server name.</li>
                <li>Connect the server to the network.</li>
                <li>Connect the server to the domain.</li>
            </ul>
        </li>
        <li>On the production server, restart the services and set their startup mode to <em>Automatic.</em></li>
        <li>Create a copy of the live database (permissions included) or a new test database.</li>
        <li>Create a test loaded email, e.g. <em>servicedesk-test@firma.cz </em>(optional).</li>
        <li>Adjust the test machine settings:
            <ul>
                <li>In the <em>Web.config</em> files in <em>connectionStrings</em>, set the correct database connection:
                      <ul>
                          <li>WebApp</li>
                          <li>AM WS</li>
                      </ul>
                </li>
                <li>Set the correct database connection also for <a href="../alvao-service-desk/implementation/installation/alvao-service-settings">ALVAO Service (AS)</a>
                    - (typically C:\Program Files(x86)\ALVAO\AlvaoService\appsettings.json).</li>
                <li>Open ALVAO Collector as an application (you must stop the ALVAO Collector service first) and set the connection to D to a new SQL server. <b>Action - Settings - General - 
                    Set up connection - Add another - ...</b>
                    <ul>
                        <li>If Collector then starts checking the SW library and processing a queue of requests to detect, you can exit. </li>
                    </ul>
                </li>
                <li>If you want to use computer discovery in the test environment as well, start the Collector service.<br />
                    If you want to use test mailbox loading and sending emails from the test SD, start the Alvao Service service. Otherwise, disable the service.
                    <ul>
                        <li>Check the Event log (application events) to see if AS is generating any errors and if it is loading emails (best to test by sending an email to the loaded mailbox).</li>
                    </ul>
                </li>
                <li>Settings in WebApp Management:
                    <ul>
                        <li>Path to test AM WS</li>
                        <li>Path to Test WebApp</li>
                        <li>Servers (Test Collector)</li>
                        <li>SMTP Server (sometimes stays the same)
                            <div class="note">
                                <div class="icon"></div>
                                <div class="title">Note: In the SMTP Server settings (<em>WebApp - Administration - Settings - Messaging</em>), we recommend renaming the message sender address to include the word <em>test</em>. </div>
                            </div>
                        </li>
                        <li>Reading messages from service mailboxes - delete/reconfigure to test mailbox.  
                            <div class="caution">
                                <div class="icon"></div>
                                <div class="title">Caution: </div>
                                Omitting this point risks the test environment retrieving messages from the production mailbox.  
                            </div>
                        </li>
                        <li>E-mail services <em>TEST ServiceDesk servicedesk-test@firma.cz</em></li>
                        <li>(bulk change service prefix to "TEST")</li>
                    </ul>
                </li>
                <li>SQL DB
                    <ul>
                      <li>Delete all users email address (except test users):
                          <br />
                          <b>UPDATE tPerson SET sPersonEmail = NULL</b>
                      </li>
                      <li>Delete the contents of the MailMessage table (otherwise some emails/notifications would be sent (a second time):<br />
                          <b>DELETE FROM MailMessage</b>
                      </li>
                    </ul>
                </li>
                <li>On the test machine, start the <i>Alvao Service</i> and possibly <i>Collector</i> services.</li>
            </ul>
        </li>
        <li>Test the functionality of all components.</li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


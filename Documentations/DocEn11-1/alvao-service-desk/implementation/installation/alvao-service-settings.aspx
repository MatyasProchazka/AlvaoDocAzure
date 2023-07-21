<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Alvao Service component settings</h1>

    <p>
        The settings are stored in the appsettings.json file in the installation folder.<br />
        To return the settings to the default state, re-create the file by copying and renaming the &quot;AlvaoServiceSample.exe.config&quot; file. You can use Notepad in Windows to edit it.
    </p>

    <h2>Database connection</h2>

    <p>The connection to the database is defined in section:</p>
    <p>
        <span class="console">
            &quot;ConnectionString&quot;: {<br />
            &nbsp;&quot;Db&quot;: &quot;Data Source=localhost;Initial Catalog=Alvao; Max Pool Size=2000; Integrated Security=True; MultipleActiveResultSets=True&quot;<br />
            },<br />
        </span>
    </p>

    <p>
        Write the database connection string to the <b>ConnectionString</b> attribute. The format of the string is the same as in the WebApp settings, see <a href="webapp-settings#database_connection">Database Connection</a>.
    </p>

    <h2>Sending emails</h2>

    <p>The Alvao Service component sends all email messages leaving the Alvao system. The SMTP server address for sending email messages in the database needs to be set in <strong>WebApp - Administration - Settings</strong>- <a href="../../../list-of-windows/alvao-webapp/administration/settings/messaging">Messaging</a>.</p>
    <p>Emails are sent in batches, the default sending interval is 1 minute. If an email fails to send for any reason, it will remain stored and will be resent at the set interval (default value 10 minutes) until it is successfully sent or exceeds the number of send attempts (default value 432). Once the number of send attempts is reached, the email will remain in the database for possible diagnostics.</p>
    <p>Sending settings are stored in the database (tProperty table):</p>

    <table>
        <thead>
            <tr>
                <th>Variable</th>
                <th>Default value</th>
                <th>Meaning</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>MailSendIntervalSeconds</td>
                <td>60</td>
                <td>Email sending interval - in seconds</td>
            </tr>
            <tr>
                <td>MailSendMaxAttempts</td>
                <td>432</td>
                <td>Maximum number of attempts to send an email</td>
            </tr>
            <tr>
                <td>MailSendRetryIntervalMinutes</td>
                <td>10</td>
                <td>Interval between attempts to resend emails that failed to send - in minutes</td>
            </tr>
        </tbody>
    </table>
    <p>The change in the interval of sending emails will be reflected only after Alvao Service is restarted.</p>

    <h2>E-mailboxes</h2>

    <p>
        If you want to automatically load messages from a specific mailbox into a specific service desk service (see <a href="../services/service-tree">Service Desk Services</a>),
    in <strong>WebApp - Manage - Services - Edit</strong>
        - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/loading-messages">Loading messages</a> section, set up a connection to that mailbox.
    </p>

    <h2>Incoming message rules</h2>

    <p>Alvao Service can perform actions based on defined rules. Rules for incoming messages are set in <strong>WebApp - Administration - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/roles-messages">Rules for incoming messages</a>.</p>

    <h2>Automatic responses</h2>
    <p>If Alvao encounters a message that is evaluated as an automatic reply while retrieving messages, this message is not considered a full message and therefore the following operations are not performed:</p>
    <ul>
        <li><a href="../../requests/reopen-for-further-resolution">Reopening of a request</a> by the requester or creation of a new request after the reopening deadline has expired.</li>
        <li>Stop <a href="../../requests/wait-for-response">waiting for a requester</a>.</li>
        <li>Resetting the Waiting for email column.</li>
    </ul>

    <p>Messages are considered an automatic reply when:</p>
    <ul>
        <li>contain the <span class="console">Auto-Submitted</span> parameter in the header
 with the value <span class="console">auto-generated</span>,
 <span class="console">auto-replied</span> or <span class="console">auto-notified</span> or</li>
        <li>contain one of the predefined strings in the subject line of the message.</li>
    </ul>

    <h3>Settings</h3>
    <p>
        If you wish to change the default settings of the predefined strings that are included in the subject of auto-replies in your organization, edit and run the following SQL statement on the Alvao database: <br /> 
        <span class="console">update tProperty set sPropertyValue =
 N&#39;Auto reply*;Automatic reply*;Out of office*;Out of Office*&#39; where sProperty = &#39;AutoSubmittedEmails.Subjects&#39;</span>
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The example shows the default settings. Individual subject templates are separated by semicolons, and the asterisk replaces any number of characters.
    </div>
    <p>By default, autoresponse recognition is turned on. If you do not wish to use this functionality, run the following SQL statement on the Alvao database: <br /> 
        <span class="console">update tProperty set bPropertyValue = 0 where sProperty = &#39;AutoSubmittedEmails.Detect&#39;</span></p>


    <h2>Additional settings</h2>

    <table>
        <thead>
            <tr>
                <th>Variable</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SleepSeconds</td>
                <td>The amount of time the Alvao Service waits if there are no new messages in the mailbox. The time is specified in seconds.</td>
            </tr>
        </tbody>
    </table>

    <h2>Event log</h2>

    <p>Event log can be set in the NLog section.</p>
    <p>By default, warnings and errors are printed to the Windows Event Log.</p>
    <p>However, you can freely change the target, logging level, printed messages, etc. according to the <a href="https://github.com/nlog/nlog/wiki">NLog documentation</a>.</p>

    <h2>Sending Diagnostics</h2>

    <p>
        If an email fails to send, the Alvao Service component prints an error message to the event log containing information about the email that was sent and the text of 
        the error that occured. This message is printed when the log is set to <i>Warning</i> or higher. For a message informing about a general component failure (e.g. an invalid 
        database operation), setting the log to <i>Error</i> is sufficient.
    </p>
    <p>If there are messages in the database that have reached the maximum number of attempts to send, a message is output once a day indicating the number of messages that could not be sent (Event Log Level 1 and higher):</p>
    <p>&quot;The mail queue currently contains X emails that could not have been sent.&quot;</p>
    <p>The unsent emails can be found in the database (table&nbsp; MailMessage), where, in addition to the message itself (packaged in .eml format), there is information about the number of attempts to send (SendAttempts), the last error message (LastErrorMsg) and the time of the last attempt to send (LastAttemptTime).</p>
    <p>&nbsp;</p>

</asp:Content>

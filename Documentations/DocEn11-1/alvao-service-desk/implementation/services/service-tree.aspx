<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Service tree</h1>
    <p>
        You can manage your service tree in the <strong>ALVAO WebApp</strong>
        using the <strong>Administration - Service Desk - Services</strong> command, which displays in the main window <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail">service tree</a>.
    </p>

    <h2>Receiving requests by e-mail</h2>

    <p>
        If you want to automatically retrieve the contents of a specific mailbox to a specific Service Desk service, then you must set up a connection to that mailbox for the service. The connection is set up on the selected service under <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/loading-messages">Loading messages</a>.
    </p>

    <p>After receiving a new request, the system sends an automated response to the requester that reads something like this:</p>
    <p>
        <em>Hello,<br />
            <br />
            We have received your request under the number &lt;request mark&gt;.<br />
            We will contact you no later than &lt;response date&gt;.<br />
            The request will be resolved no later than &lt;deadline&gt;.<br />
            ...<br />
            For further information, please reply to this email.<br />
            Thank you for using our services.<br />
            &lt;Service name&gt;</em>
    </p>

    <p>The request number is also included in the subject line of the auto-reply. If the requester responds to this message with another message, this new message will not be considered a new request, but rather additional information and will be inserted into the log of the existing request.</p>
    <p>
        The system searches the subject of the message to see if there is an existing request identification somewhere. By default, the request identification has the format T&lt;number&gt;ALVAO. You can change the tagging method in the Service Desk settings on the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">tab.
 General</a>. This setting must be made before the Service Desk goes live, as changing the settings will not affect the IDs of existing requests.
    </p>

</asp:Content>

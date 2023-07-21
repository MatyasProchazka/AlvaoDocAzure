<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Alvao Settings</h1>

    <p>
        Detection by the MS SCCM method is performed by the ALVAO Collector service, which, depending on the settings, connects to SCCM either via <a href="https://docs.microsoft.com/en-us/mem/configmgr/develop/adminservice/overview">Administration Service</a> or by connecting directly to the SCCM database on SQL Server. 
    </p>

    <h2>Connecting via Administration Service</h2>
    <p>
        The Administration Service is a component of SCCM that implements a web-based REST API that provides computer data to authorized users over HTTPS. 
    </p>
    <p>
        It can be run either only within the corporate network or also over the Internet. In either case, Collector authenticates with a user name and password, which must exist in SCCM and have permission to read data from the HW and SW inventory. 
        <ul>
            <li>Within the corporate network, kerberos authentication takes place between the Collector and the Administration Service.</li>
            <li>When connected over the Internet, Collector connects to SCCM through the <em>Cloud Management Gateway</em> service.
  Therefore, the specified user must also exist in Azure Active Directory, where the application that Collector uses to obtain an Access Token to connect to the Administration Service must also be registered. 
                <div class="caution">
                    <div class="icon"></div>
                    <div class="title">Caution:</div>
                    To connect Collector to the Administration Service, you must use an account that is synchronized from your AD to AAD using <em>Password hash</em> synchronization. Accounts synchronized via <em>Pass-through Authentication</em> or <em>ADFS</em> are not supported. 
                </div>
            </li>
        </ul>
    </p>
    <p>To install and set up the Administration Service, see <a href="https://docs.microsoft.com/en-us/mem/configmgr/develop/adminservice/set-up">How to set up the administration service in Configuration Manager</a>.</p>

    <h2>Database connection</h2>
    <p>
        Collector uses the connection string and reads the computer data directly from the SCCM database.
  <p>
      You need to ensure that the account under which the service runs has the right to read data from the SCCM database. So, for example, the db_datareader role is sufficient. 
  </p>

        <h2>Setting the Collector connection to SCCM</h2>
        <ol>
            <li>In the <strong>ALVAO WebApp</strong> select <strong>Management - Asset Management - Settings</strong>.</li>
            <li>Go to the <strong>MS SCCM Connector</strong> page and add one or more connections to SCCM.</li>
        </ol>
</asp:Content>

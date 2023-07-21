<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Applications</h1>

    <p>Through applications, you can add custom commands to Alvao, add custom tabs to certain pages, automatically perform other custom actions when certain commands are run by users, and so on. In the <a href="../alvao-am-custom-apps/applications/templates">application templates</a>, you can find examples of ready-made useful applications that you can use right away.</p>
    <p>If you are a member of the <em>Administrators</em> or <em>Application Administrators</em> group, you can manage applications in <strong>Administration</strong> - <a href="../../list-of-windows/alvao-webapp/administration/applications">Applications</a>. For possible extensions available in this module see the list of <a href="../../list-of-windows/alvao-webapp/administration/applications/app/scripts/new">script templates</a>.</p>

    <h2>Application programming</h2>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        A poorly defined application can irreversibly damage the Alvao database. Always create and test applications in a test environment with a copy of the production database.
    </div>

    <p>
        The prerequisite for creating an application is a good knowledge of C# programming,
  <a href="../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> and <a href="../../alvao-asset-management/implementation/customization/database">Alvao database</a>.
    </p>

    <h3>Language localization</h3>
    <p>Applications can be multilingual and communicate with the user in their preferred language, see the example of a <a href="../../modules/alvao-am-custom-apps/applications/templates" translate="no">MultilingualCommand</a>.</p>

    <h3>Sending a message in an automatic action</h3>
    <p>If you need to send any message as part of an automatic action, use the <a href="../../../../en/alvao_10_4/alvao_api/html/M_Alvao_API_SD_Message_SendMessage.htm">SendMessage</a> method. If you do not want the sent message to be written to the request log, use the <a href="../../../../en/alvao_10_4/alvao_api/html/M_Alvao_API_Common_Email_QueueMailMessage_1.htm" translate="no">QueueMailMessage</a> method.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Methods can be used for any type of extension.
    </div>

    <h3>Database transactions</h3>
    <p>
        If you need to perform Alvao operations in your application, we recommend that you preferably use the prepared <a href="../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> methods to do so,
  which means you don't have to deal with database connections and transactions. 
    </p>
    <p>
        If you need to access the Alvao database directly in your application, use the <span class="console">ConnectionScope</span> to connect to the database,
  which you get by calling the <span class="console" translate="no">AlvaoContext.GetConnectionScope()</span> method.
  The <span class="console" translate="no">LegacyConnection</span> and <span class="console" translate="no">LegacyTransaction</span> properties contain a connection and possibly an open transaction that you can use, for example, in an object of class <span class="console" translate="no">SqlCommand</span>.
  You can find an example use case in the <a href="applications/templates" translate="no">CostsCalculation</a> application template.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Most application methods also accept a database connection and an open transaction as their input parameters, e.g. <a href="../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions#OnTicketChanged" translate="no">ITicketAutoAction.OnticketChanged</a>.
  In that case, you can also use the values of these parameters. However, we recommend that you prefer to access them via the <span class="console" translate="no">ConnectionScope</span> class.
    </div>
    <p>
        If an application method is running in an external open transaction and the method ends in an exception, the transaction is automatically canceled. 
    </p>
    <p>
        You can also start your own transaction in the application by calling the <span class="console" translate="no">ConnectionScope.BeginTransaction()</span> method.</p>
    <h3>
        Getting WebApp root URL</h3>
    <p>
        If a custom command or a custom tab is to open another ALVAO WebApp page, use the <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> property from the <a href="../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> to get the root URL of the WebApp.</p>
    
</asp:Content>

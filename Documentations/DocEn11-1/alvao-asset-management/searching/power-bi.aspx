<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Power BI report templates</h1>

    <p>The <a href="https://powerbi.microsoft.com/">Microsoft Power BI</a> report templates are ready-to-use reports that you can use immediately or customize to create your own reports to suit your needs.</p>
    <p>We recommend using the <a href="https://docs.microsoft.com/en-us/power-bi/fundamentals/power-bi-service-overview">Power BI service</a> included with paid subscriptions to <a href="https://powerbi.microsoft.com/en-us/pricing/">Power BI Pro</a> and above. This service allows, among other things, to update the dataset of reports regularly, e.g. once a day during the night hours, when a slight slowdown of applications due to data updates affects only a minimum of users. The display of the reports itself no longer slows down the response of the applications, because only the data from the updated dataset is used.</p>
    <p>For more information on Power BI, tutorials and courses, please see the <a href="https://docs.microsoft.com/en-us/power-bi/">Power BI documentation</a>.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Alternatively, you can also view the reports in the free <em>Power BI Desktop</em> application. In order to ensure that updating the dataset during normal business hours does not slow down the response of Alvao applications, we recommend using <a href="../../alvao-asset-management/implementation/analytic-database">analytic database</a> to update the dataset.
    </div>

    <h2>Installation</h2>

    <ol>
        <li>Download the report template from <a href="https://www.alvao.com/en/download/">ALVAO Download</a>.</li>
        <li>Install the <a href="https://powerbi.microsoft.com/en-us/desktop/">Power BI Desktop</a> application and open the report template.</li>
        <li>View the contents of the report based on the prepared model data.</li>
        <li>Connect the assembly to your Alvao database:<ol type="i">
            <li>On the <strong>Home</strong> tab, use the <strong>Transform Data</strong> command.</li>
            <li>In the <strong>Queries</strong> column, enter parameter values:
                <ol>
                    .
  <li><strong>SqlServer</strong> - enter the name of your SQL Server.</li>
                    <li><strong>Database</strong> - enter the name of your database.</li>
                    <li><strong>HistoryMonths</strong> - optionally change the length of the request log history in months to be loaded into the report. Older records are not loaded into the report. The larger the value you specify, the longer it will take to update the dataset and the larger the size of the dataset.<br />
                        <div class="wide">
                            <img src="power_bi_installation.png" /></div>
                    </li>
                </ol>
            </li>
            <li>Save the settings using the <strong>Close and Apply</strong> command.</li>
            <li>Enter <strong>name and password</strong> to connect to the database.<br />
                The user account used must have at least the <em>SELECT</em> right in the database schema <a href="../../alvao-asset-management/implementation/customization/database#report_view_list">Query</a>.
  This will simply ensure, for example, the <em>db_datareader</em> role throughout the database.<br />
                Only information that the used Alvao account has access to is read from the database into the dataset, see:
                <ul>
                    <li>Asset Management - permissions to <a href="../../alvao-asset-management/objects-and-properties/object-access-rights">read objects</a> and <a href="../../alvao-asset-management/objects-and-properties/property-security">property-values</a>;</li>
                    <li>Service Desk - permissions to <a href="../../alvao-service-desk/implementation/services/service-roles">view requests</a>, i.e. the role <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/service-authorization">Reader</a> in the given services;</li>
                    <li>Service Desk - permissions to read information about people and organizations, i.e. membership in the group <a href="../../alvao-asset-management/implementation/users/groups">Contact readers</a> or <em>Contact administrators</em>.</li>
                </ul>
            </li>
        </ol>
        </li>
        <li>Wait for the data to be loaded into the report.</li>
        <li>Upload the report to a workspace in <em>Power BI Service</em> using the <strong>Publish</strong> command.</li>
        <li>In the dataset settings, turn on regular updates every day at night.</li>
        <li>Click on a report to view that report.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can customize the range of the displayed data by using the filters, which can always be found at the right edge of the report. 
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Share the report with other users who have a Power BI Pro license or higher. 
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can create your own reports based on the datasets created from the report templates in Power BI service. This way, the datasets will be shared and will only be updated once for a given report. 
    </div>

    <h2>Alvao Analysis</h2>

    <p>This report contains a set of pages with basic overviews of services, requests and facilities in Alvao.</p>
    <p>The template for this report is stored in the file AlvaoAnalysis.pbix.</p>
    <p><a href="../../alvao-service-desk/evaluation-of-system-operation/power-bi">The first pages of the report</a> relate to the ALVAO Service Desk product. These are followed by pages for ALVAO Asset Management:</p>
    <ul>
        <li><strong>Requests on objects</strong> - at the top of the page you can see the objects in the graph that have the highest number of requests linked to them in ALVAO Service Desk. Select an object in the graph and the corresponding requests will be displayed at the bottom.</li>
        <li><strong>Objects</strong> - at the top of the page, you can see the number of objects by manufacturer, object type and device model in the graphs. Select a value with the mouse and details of the corresponding objects are displayed at the bottom of the page.</li>
        <li><strong>Computers</strong> - at the top of the page, you can see the number of computers by manufacturer, type of computer (e.g. desktop, laptop, ...) and operating system in graphs. Select a value with the mouse and the bottom of the page shows details of the corresponding computers.</li>
        <li><strong>Object age</strong> - at the top of the page, you can see a graph showing the number of objects by their age in years, with a color breakdown by object type. Select any value in the chart and the corresponding objects will be displayed at the bottom of the page.</li>
        <li><strong>Installed software</strong> - at the top of the page you can see the numbers of software installed on computers in graphs by publisher and product. Select a value and at the bottom of the page you will see details of the computer on which the software is installed.</li>
    </ul>
    <p>Each user in the report can only see the objects and requests that they are allowed to see in Alvao.</p>
    <p>The assembly is available in English only.</p>
</asp:Content>

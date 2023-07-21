<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Power BI report templates</h1>
    <p>For basic information about Power BI report templates, please refer to the <a href="../../alvao-asset-management/searching/power-bi">Power BI report templates</a> chapter of the ALVAO Asset Management product.</p>

    <h2>Alvao Analysis</h2>

    <p>The assembly contains the following pages:</p>
    <ul>
        <li><strong>Historical overview</strong> - an overview of key trends over time
            <ul>
                <li><strong>Number of open requests</strong> - in this chart you can see how the number of open requests is trending over time. The graph should be stagnant or, better yet, decreasing. If the graph is increasing, the resolution team is probably not keeping up with the incoming requests.
  In the report filters, choose the <a href="../../alvao-service-desk/implementation/services/service-roles">services</a> for which you want to display the graph, and change the period displayed if necessary.</li>
                <li><strong>Number of requests</strong> - In this chart you can see the evolution of the number of newly created, closed and deleted requests over time, i.e. a more detailed view of the gains and losses in the number of open requests from the top chart. By viewing the graph for a longer period of time, you can see, for example, regularly recurring seasonal peaks in service load and compare the magnitude of these fluctuations between years.</li>
                <li><strong>Team work (hours)</strong> - you can see in the graph how much time individual workers have spent on a given request (see <a href="../../alvao-service-desk/requests/work-time">Time Reporting</a>). Thus, you can discover that, for example, the increase in the number of open requests in the top graph is not due to a currently higher demand for the service (second graph), but because the solution team is not currently paying enough attention to the requests (third graph).</li>
            </ul>
        </li>
    </ul>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can analyze the details in the charts on this and some other pages, see <a href="https://docs.microsoft.com/en-us/power-bi/consumer/end-user-drill">Mode to go to details in the Power BI visual</a>. For example, time charts that default to displaying data by weeks can be switched to display by months or days. Similarly, you can switch user maps to organization maps or service maps to root service or request maps.
    </div>
    <ul>
        <li><strong>First response fulfillment</strong> - analysis of time to first response
            <ul>
                <li>
                    <strong>Average time to response</strong> - the chart shows the evolution of the average time to first response over time for each SLA.  </li>
                <li>
                    <strong>First Response</strong> - in the bar chart you can see the number of requests in which the first response was fulfilled (green) or not fulfilled (red). The line graph shows the average success rate of first responses in percentage. Select a value with the mouse and the table below the graph shows details of the relevant requests. The link in the last column of the table leads directly to the web page of the request. </li>
            </ul>
        </li>
        <li><strong>Resolution fulfillment</strong> - time to resolution analysis. The page has a similar structure to the <em>First response fulfillment</em> page.</li>
        <li><strong>Last week</strong> - at the top of the page you can see tabs with the values of selected KPIs for the past week and their comparison with the previous week and the same week last year.   Hover your mouse over the current value and a bubble will show a detailed chart of the evolution of that KPI over the year.   In the bottom graphs, you can see the first response success rate and time to resolution by solver, and the work of the people who put time into <a href="../../alvao-service-desk/requests/work-time">requests</a>.</li>
        <li><strong>Satisfaction survey</strong> - on this page you will find an evaluation of the submitted <a href="../../modules/alvao-satisfaction-feedback">satisfaction surveys</a>. The tabs at the top of the page represent each question of the survey.   Each tab shows the average of the responses as a value ranging from 1 to 4 (1=unsatisfied, 4=satisfied), the frequency of each response, and a graph of the evolution of the average response over time. Click on any value and the bottom table will show the verbal comments made by the applicants in the respective requests.   Satisfaction questionnaires are part of the <a href="../../modules/alvao-satisfaction-feedback">ALVAO Satisfaction Feedback</a> module.</li>
        <li><strong>New requests</strong> - analysis of the creation of new requests
            <ul>
                <li><strong>Request submission methods</strong> - you can see the ratio between the different request submission methods in the graph.</li>
                <li><strong>Number of submitted requests</strong> - a graph of the evolution of the number of requests created over time by each submission method.</li>
                <li><strong>Service load</strong> - in the table you can see the number of requests created in each service.</li>
                <li><strong>New requests by service</strong> - graph of the evolution of the number of requests created over time by service.</li>
            </ul>
        </li>
    </ul>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Right-click on any value in the charts, select <strong>Drill through - Request table</strong> from the menu, and the corresponding request table will appear on the page. To return to the report page, click the arrow in the upper left corner. 
    </div>
    <ul>
        <li><strong>Daily utilization</strong> - track the number of requests created and resolved during the day.   In the top chart you can see the number of requests created at each hour of the day and in the bottom chart the number of requests resolved. Click on any value in the graphs and the corresponding requests will be displayed in the bottom table.   The hours displayed are in the UTC time zone.</li>
        <li><strong>Request analysis</strong> - The graphs show the number of requests sequentially by Requester, solver, service, status, and SLA. Use the <em>Overall status</em> filter to view only open or closed requests.</li>
        <li><strong>Work (hours)</strong> - The top two maps show the number of <a href="../../alvao-service-desk/requests/work-time">hours posted to requests</a> by service (left) and user (right), respectively. In the bottom chart, you can see the progression of reported hours over time. If you only want to view the graph for a service or user, click on the service or user in the maps above the graph.   In the table below the graph, the corresponding requests are displayed at the same time.</li>
        <li><a href="../../alvao-asset-management/searching/power-bi">The remaining pages of the report</a> relate (also) to the ALVAO Asset Management product.</li>
    </ul>

</asp:Content>

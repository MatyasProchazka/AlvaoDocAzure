<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Time reporting</h1>

    <p>Users who are members of the group <a href="../implementation/users/groups">Time Reporting Persons</a> can record time worked in the request log when performing operations on a request. All users who have the right to see the request log can also see the time reported.</p>

    <h2>Fields on forms</h2>
    <p>Time worked is reported in the following fields.</p>
    <ul>
        <li><b>Work (h:m)</b> - enter the time you spent working on the request, in hours:minutes format.</li>
        <li><b>Travel Time (h:m)</b> - enter the time spent on the trip (in hours:minutes format).</li>
        <li><b>Distance (km)</b> - enter the number of kilometres travelled.</li>
        <li><b>Invoice</b> - enable if you do not want the reported values to be displayed to the requester. <a href="../implementation/services/service-roles">Solvers and managers</a> will see the values in strikethrough font.</li>
    </ul>

    <h2>Display of reported time</h2>
    <p>The reported time is displayed in the request table as the sum of the reported time from all events. In the event list table and in the log, time is displayed for individual events. The <i>No Invoice</i> option can also be displayed as a column in the log, which can be turned on each time the time is reported.</p>
    <p>When the Requester views the log, they see the reported time at the end of all events in the log. If the reported time on an event is marked as <i>No Billing</i>, then the requester sees this time as zero. If the solver or manager looks at the log, they see unbilled time, but it is crossed out.</p>
    <p>The log can be exported to a Microsoft Excel spreadsheet. This file can then be used to invoice the customer for any time worked.</p>

</asp:Content>

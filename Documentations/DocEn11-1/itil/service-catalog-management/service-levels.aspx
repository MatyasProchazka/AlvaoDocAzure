<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Service levels</h1>

    Define simple levels of requests resolution and within them key performance indicators (KPIs):
        <ul>
            <li>Time To React (TTR)</li>
            <li>Time To Close (TTC)</li>
        </ul>
    These KPIs are measured and reported.<br />
    <p class="MsoNormal">A claim may, of course, be reclassified between the levels that a particular claimant is eligible to claim after the initial analysis and at any later time as new circumstances are identified. In the case of providing services to external claimants (outsourcing), we may price the different levels.</p>
    <h2>Sample service levels</h2>

    <h3>Fulfilling Requests</h3>
    <ul>
        <li>RF001 - Rapid Application Resolution</li>
        <ul>
            <li>Response time = 1 day</li>
            <li>Time to resolution = 1 week</li>
        </ul>

        <li>RF002 - Standard Request Resolution</li>
        <ul>
            <li>Response time = 2 days</li>
            <li>Time to resolution = 2 weeks</li>
        </ul>

        <li>RF003 - Resolving applications within the agreed deadline</li>
        <ul>
            <li>Response time = 2 days</li>
            <li>Time to resolution = agreed deadline</li>
        </ul>
    </ul>

    <h3>Incident Management</h3>
    <ul>
        <li>
        IM001 - Critical
    </ul>
    <li>Time to respond = 4 hours</li>
    <li>Time to resolution = 1 day</li>
    </ul>
 </li>
 <li>IM002 - High<ul>
     <li>Response time = 1 day</li>
     <li>Time to resolution = 2 days</li>
 </ul>
 </li>
    <li>IM003 - Basic
            <ul>
                <li>Response time = 2 days</li>
                <li>Time to resolution = 1 week</li>
            </ul>
    </li>

    <li>IM004 - Low
            <ul>
                <li>Response time = 2 days</li>
                <li>Time to resolution = 2 weeks</li>
            </ul>
    </li>
    <li>IM005 - Planned<ul>
        <li>Response time = 2 days</li>
        <li>Time to resolution = agreed date</li>
    </ul>
    </li>

    </ul>

  <h3>Problem Management</h3>
    <ul>
        <li>PM001 - Urgent Problem</li>
        <ul>
            <li>Response time = 1 day</li>
            <li>Time to resolution = 1 week</li>
        </ul>
        <li>PM002 - Standard Problem</li>
        <ul>
            <li>Response time = 2 days</li>
            <li>Time to resolution = agreed date</li>
        </ul>
    </ul>

    <h3>Change Management</h3>
    <ul>
        <li>CHG001 - Urgent Change</li>
        <ul>
            <li>Response time = 1 day</li>
            <li>Time to resolution = 1 week</li>
        </ul>

        <li>CHG002 - Standard Change</li>
        <ul>
            <li>Response time = 1 week</li>
            <li>Time to resolution = 4 weeks</li>
        </ul>

        <li>CHG003 - Resolving the change within the agreed timeframe</li>
        <ul>
            <li>Response time = 1 week</li>
            <li>Time to resolution = agreed deadline</li>
        </ul>

        <li>CHG004 - Project Change</li>
        <ul>
            <li>Response time = 1 week</li>
            <li>Time to resolution = agreed deadline</li>
        </ul>
    </ul>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Software Management Report</h1>
    <p>
        The <a href="../alvao-sam-assistant" translate="no">ALVAO SAM Assistant</a> module includes <strong translate="no">Software Management Report</strong> (Software Management Report csy.rdl, Software Management Report enu.rdl), which provides an operational overview of installed software and purchased licenses.<br />
        The report graphically shows the status of the entire inventory and lists information on only a few of the most important objects.<br />
        The graphs are used to get a general overview and to help decide which information needs to be looked at in more detail. The description of each chart (below) therefore refers to the relevant section of ALVAO Asset Management.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The report is in Czech and English only.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Similar information can also be obtained in the analytical excel <strong><em translate="no">Asset Management Analysis.xlsm</em></strong>, which is located in the installation directory of the installed <span translate="no">ALVAO Asset Management Console</span>.
    </div>


    <h2>Installation</h2>
    For a description of how to install reports, see <a href="../../alvao-asset-management/implementation/maintenance-reports/installation">Installing reports in Microsoft SQL Server Reporting Services</a>.


    <h2>Report graphs</h2>
    <h3>Checking License Enrollment and Allocation</h3>
    <p>
        The first four graphs show the legality of installed software and license usage, for more information see <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview">License and Installation Overview</a>.<br />
        Note: The charts only show information about products that are not freeware.
    </p>
    <ul>
        <li><strong>Non/legal installations</strong> - shows the overall ratio between installed software and purchased licenses. Unassigned licenses for the primary license product are also counted.</li>
        <li><strong>Installations with/without assigned license</strong> - shows the ratio of installations with and without an assigned license. The three computers (and their users) with the highest number of installations without assigned licenses are listed.</li>
        <li><strong>License</strong> - shows the proportion of purchased licenses that are unassigned licenses, and the three licenses with the highest number of unassigned licenses.</li>
        <li><strong>Allocated Licenses</strong> - shows what portion of the allocated licenses are unnecessarily allocated.<br />
            The three computers (and their users) with the highest number of unnecessarily allocated licenses are listed.</li>
        <li><strong>Newly registered licenses (documents)</strong> - highlights potential problems in <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">license registry</a> and shows the volume of newly registered licenses over the last 6 months.</li>
        <li><strong>Expiring licenses in the next three months</strong> -
Displays the top three expiring licenses and the number of licenses expiring in the next three months. You can find them all in the ALVAO Asset Management application, in <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">license registry</a> by displaying the <em>Expiry by</em> column.</li>
    </ul>
    <h3>Checking the technology part of the system</h3>
    <ul>
        <li><strong>Computer detection software</strong> - comparison <a href="../../alvao-asset-management/implementation/detection/detection-way">ways in which computers were detected</a>. More at <a href="../../list-of-windows/alvao-asset-management-console">Detection</a> tab for the selected object. Displays information for the last 6 months.</li>
        <li><strong>Software Installation and Uninstallation</strong> - A summary of detected and manually entered changes to installed software. For more information, see the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/diary">log tab</a> for the selected object.</li>
        <li><strong>Detection Age Histogram</strong> - the age of the computer detections. The three computers with the oldest detections and possibly 3 never detected before. More on the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection">Detection tab</a> of the selected object.</li>
        <li><strong>Software Products</strong> - information about <a href="../../alvao-asset-management/software-management/custom-swlib">SW product library</a>: how many products are unrecognized and when the library was last updated.</li>
    </ul>

</asp:Content>

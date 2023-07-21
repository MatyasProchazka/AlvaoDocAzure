<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Maintenance reports</h1>

    <p>
        The ALVAO Asset Management product includes two reports suitable for alerting managers to specific upcoming events.
        <br />
        The <strong>Objects with an upcoming date</strong> report (Expiring objects csy.rdl, Expiring objects enu.rdl) allows you to set a notification for any date in the object property according to a defined advance (number of days into the future).
        <br />
        The <strong>Licenses with an upcoming deadline</strong> report (Expiring licenses csy.rdl, Expiring licenses enu.rdl) allows you to set a warning for the expiration or support date of a license.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Reports are in Czech and English only.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also use <a href="../../periodic-alerts">Periodic Alerts</a> instead of <em>Maintenance Reports</em> to notify you of upcoming license and device deadlines.
    </div>

    <h2>Installation</h2>
    RDL files can be found at <a href="https://www.alvao.com/download">www.alvao.com/download</a> under the Asset Management product in the MaintenanceReports.zip archive.<br />
    For a description of how to install the reports, see <a href="installation">Installing reports in Microsoft SQL Server Reporting Services</a>.

    <h2>Objects with an upcoming deadline</h2>

    The report is suitable for alerting about upcoming events/scheduled maintenance in the asset records.<br />
    For required equipment, you need to record a property that contains some future date. This date may indicate, for example, the end of warranty, the date of the next inspection, the date of the next UPS battery replacement, etc.<br />
    A report is then generated based on this date and the specified advance date, which will contain all the objects that have this date in the specified advance date to give the technician enough time to react to the event.
    <h3>Parameters</h3>

    <ul>
        <li><strong>Organizational folder</strong> - enter the path to the folder in the tree for which you want to generate the report. If you do not enter anything, the report will be generated for the entire record.</li>
        <li><strong>Object kind</strong> - select one or more object types you want to display in the report from the menu.</li>
        <li><strong>Property</strong> - from the menu, select the property in which the date of the scheduled date is stored.<div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            Only the date type property can be selected.
            </div>
        </li>
        <li><strong>Filter</strong> - specify a custom condition to filter objects by values of any property in the form of a SQL condition.<br />
            Example: "([Manufacturer] = 'EPSON' OR [Manufacturer] LIKE 'Gigabyte%') AND [Vendor] LIKE 'Softcom%'".
        </li>
        <li><strong>Advance (days)</strong> - specify how many days before the deadline the objects should be displayed in the report.</li>
    </ul>

    <h2>Licence with an upcoming deadline</h2>

    The report is used to notify you about expiring licenses and expiring maintenance on licenses.<br />
    Licenses are selected based on the specified advance notice.
    <h3>Parameters</h3>

    <ul>
        <li><strong>Date</strong> - select the date you are interested in in the report - "Valid until" or "Upgrade/support until".</li>
        <li><strong>Filter</strong> - enter a custom condition to filter licenses by manufacturer in the form of a SQL condition.<br />
            Example: "[Manufacturer] LIKE 'Microsoft %' OR [Manufacturer] = 'ALVAO s.r.o.'".
        </li>
        <li><strong>Advance (days)</strong> - specify how many days before the deadline the licenses should be displayed in the report.</li>
    </ul>

</asp:Content>

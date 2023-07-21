<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Software Detection</h1>
    <p>Software detections include information about files on computer disks and Windows system registry entries. The software product library is then used to create a list of installed products based on the detected data.</p>
    <p>A prerequisite for a correct evaluation of software detections is an up-to-date software product library. The library is regularly updated by the AM Collector, see <strong>WebApp - Administration - Asset Management - Servers</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">New server</a> - <strong>Soft Product Library</strong>. You can also update the library manually in <strong>AM Console - Software - Software Products Library</strong> - <a href="../../list-of-windows/alvao-asset-management-console/software/sw-products-library/load-library-1">Read the current library</a>.</p>
    <p>
        For the system to be able to perform software detection, all the computers you want to detect must be registered in the tree. It is sufficient that an object of type <em>computer</em> exists in the tree. You do not need to perform hardware detection.For more information on how to add computers to the registry, see <a href="../implementation/insert-computers">Inserting Computers into Evidence</a>.
    </p>
    <p>
        The process of performing detections is described in the chapter <a href="../implementation/detection">Hardware and Software Detection</a>.
    </p>
    <p>
        After Collector performs a detection and loads it into the database, it automatically evaluates it against the software product library and updates the <a href="#installation-log">Installation Log</a>.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When the library is loaded into the database, the application identifies itself to the Alvao service with the data contained in the activation key.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the system does not detect some programs and the <strong>Software</strong> tab you see unrecognized records, select the unrecognized records and use the <strong>Send SW to identify...</strong> command from the local menu. A wizard will be displayed where you can enter advanced information for the unrecognized records, and once this wizard is complete, a request will be created and sent by Collector to our specialists. They will add the unrecognized products to the standard library. You will then be able to download the updated library from the Internet using the command <strong>Software - Software Products Library - Load current library</strong>. After downloading the new library and re-evaluating the relevant detections, the records will be recognized.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can also extend the software product library in a custom way, see <a href="custom-swlib">Custom software product library</a>.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The computer installation log is automatically updated by software detection only if this option is enabled in <a href="../implementation/detection#detection-options">detection settings</a> for the computer.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        A quick overview of the software that is installed on a particular computer or in an organizational folder can be seen on the <strong>Software</strong> tab
in the <a href="../../list-of-windows/alvao-asset-management-console">main window</a> of the AM Console.
    </div>

    <h2 id="installation_registry">Installation registry</h2>
    <p>In the installation registry, records are kept for each computer about which program (software product) was installed on which computer when and by whom, or when it was uninstalled. Similarly, records of activation, configuration, etc. may also be recorded. When software is detected on a regular basis, the Installation Log automatically creates records of program installations or uninstallations so that the current status of the Installation Log matches the detected status.</p>
    <p>
        Open the Installation Log either from the main menu using the <strong>Software - Installation Log</strong>, or by right-clicking in the tree on any computer and selecting <strong>Software - Installation Records</strong>.
    </p>
    <p>
        In either case, the screen will display a <a href="../../list-of-windows/alvao-asset-management-console/software/installation-registry">Installation Log</a> with a list of Installation Log entries. Use the buttons at the right edge of the window to edit the list.
    </p>


    <h3>Manual Updates Installation Records</h3>
    <p>
        When a new software detection is retrieved, the Installation Log is automatically updated to match the detected state. If you want to update the Installation Log manually, you can disable the automatic update in the Detection Settings (see <a href="../implementation/detection#detection-options">Detection Settings</a>) by turning off the <strong>Software Detection</strong> option - <strong>Software Detection</strong>
        Update installation records</strong>.
    </p>
    <p>After acquiring software detection, you update the Installation Log as follows:</p>
    <ol>
        <li>Under the <strong>Detection</strong> tab in the top right <a href="../../list-of-windows/alvao-asset-management-console">AM Console main window</a>, select the appropriate software detection, right-click on it, and select <strong>Software -
Compare with installation status</strong>.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/compare/compare-install-vs-detection">Installation Evidence vs. Software Detection</a> with a summary of the differences found between the selected software detection and the Installation Evidence status.</li>
        <li>In the window, select the changes you want to make to the Installation Log and press the <strong>Create Missing Entries</strong> button.</li>
    </ol>
    <p>
        Another option is to manually write entries to the Installation Log directly in the <a href="../../list-of-windows/alvao-asset-management-console/software/installation-registry">Installation Log</a>.
    </p>


    <h3>Installation protocol</h3>
    <p>Installation registry performs the function of the so-called <em>installation protocol</em> according to Government Resolution No.624/01, which applies to ministries and other public administration bodies in the Czech Republic. In order to comply with this resolution, it is recommended to leave the automatic update of the Installation Register enabled according to software detections. The employee who is responsible for software installations in the organization should authorize the automatically created records of installations by entering as the person who performed the installation or uninstallation.</p>
    <p>
        On the <strong>Software</strong> tab, which displays an overview of the software products on a particular computer, you can display the <strong>Authorized Installation</strong> column. If the column is <em>Yes</em>, the installation has been authorized (approved) by a specific person.<br />
        The <strong>Installed</strong> column can also be displayed to show the date of the installation and the worker who performed it. If the license was assigned automatically, this information is not filled in.
    </p>
    <p>A license can be approved in two ways:</p>
    <ul>
        <li>License assignment - if the license is assigned by a person (not automatically),
this person is also the one who performed and approved the installation.</li>
        <li>Manual authorization - on the <strong>Software</strong> tab, selected products (even in bulk) can be approved for installation using the <strong>Software</strong> command.
Edit</strong> from the local menu.</li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        A license is not required to legally use some products (e.g. <em>freeware</em>). However, if the ordinance is to be fulfilled, then if such a product is detected, it still needs to be manually authorized by the appropriate personnel, even though no license is assigned to the product.
    </div>
</asp:Content>

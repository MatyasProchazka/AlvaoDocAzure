<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Custom software product library</h1>
    <p>
        A software product library is a set of rules by which the system analyzes software detections and recognizes which software products are installed on computers. You can upload the current library to the system from the Internet using the <strong>Software - Software Product Library - <strong>Software Products Library</strong> command.
Load Current Library</strong>.
    </p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the system does not detect some programs and you see unrecognized records on the <strong>Software</strong> tab, select the unrecognized records and use the <strong>Send SW to identify...</strong> command from the local menu. A wizard will be displayed where you can enter advanced information for the unrecognized records, and once this wizard is complete, a request will be created and sent by Collector to our specialists. They will add the unrecognized products to the standard library. You will then be able to download the updated library from the Internet using the <strong>Software - Software Product Library - Load Current Library</strong> command. After downloading the new library, the records will be recognized.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        On the Software tab in <a href="../../list-of-windows/alvao-asset-management-console">main window</a> of the AM Console, detected registry entries that have not been assigned to any product according to the software product library can also be displayed. If such entries are present on the tab, it means that there are products installed on the computers that could not be detected by the software product library rules.
    </div>

    <h2>Adding a new product</h2>

    <p>You can add your own products and rules for recognizing them to the library, or you can request a new product to be added to the standard library of software products.</p>

    <h3>Adding a new custom product</h3>
    <ol>
        <li>On the <strong>Detection</strong> tab on the top right of the
 <a href="../../list-of-windows/alvao-asset-management-console">main window</a> of the AM Console, select the software detection that contains information about the programs you want to add to the library.</li>
        <li>Right-click on the selected detection and select the command - Details from the menu.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">Software Detection Detail</a>, which displays information about files and registry entries from the detected computer.</li>
        <li>In the list of files (at the top or middle of the window) or in the list of registry entries (if the window is switched to <strong>View - Registry</strong> mode), select the file or registry entry(s) by which you want to identify the product.</li>
        <li>Right-click on the entry and select the command from the menu -
Suggest Key Rule.</li>
        <li>The screen will open either a <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/file-general">New file-based recognition rule</a> or <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/reg-general">New rule for registry-based detection</a>, depending on the view mode enabled. Both windows contain a list of identifiers that are preset according to the selected entry.</li>
        <li>Click the tab <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/other">Other</a>.</li>
        <li>Press the <strong>...</strong> button after the <strong>Product</strong> line. The window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/software/products/product/general">New Product</a>, in which you enter the name, version, publisher, and any other product information. Close the window by clicking <strong>OK</strong>.</li>
        <li>Also close the rule definition window with the <strong>OK</strong> button.</li>
        <li>The rule will be evaluated and the added product will appear in the list of found products on the bottom left.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        One product can contain several key rules. If at least one file or registry entry is found on the computer's disk that matches a key rule, the system considers the product found.
    </div>

    <h3>Creating checkbox rules</h3>
    <p>
        If the product contains additional executables or libraries, these files are shown in the list of unrecognized files at the top of the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">Software Detection Detail</a>. If you don't want to see them in the list, create a "check off" rule for them as follows:
    </p>
    <ol>
        <li>In the product list on the bottom left, select the actual product to which the files belong.</li>
        <li>In the list of unrecognized files, select one file you want to exclude, right-click on it, and select the - command from the menu.
Suggest a deletion rule.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/file-general">A new file-based recognition rule</a> that presets the recognition characters based on the selected file. You can modify the values if necessary. Then save the rule by clicking <strong>OK</strong>.</li>
        <li>All files matching the created rule will disappear from the list of unrecognized files.</li>
        <li>If you cannot cover all files with one rule, create additional check-off rules for the other product files one by one.</li>
    </ol>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        You cannot create, edit, or delete rules for certified products from the software library.
    </div>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Detections are evaluated first against key rules and then against check-off rules, so if a check-off rule overlaps with a key rule, the key rule takes precedence.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        While the checkbox rules are assigned to specific products, this assignment is for informational purposes only. The checkbox rules do not affect what products the system finds on the computer.
    </div>

    <h3>Request to add a new product to the standard library</h3>
    <ol>
        <li>From the main menu, use the <strong>Software - Products (software)</strong> command.</li>
        <li>The window will appear <a href="../../list-of-windows/alvao-asset-management-console/software/products">Products (software)</a> in which you press the <strong>Add</strong> button.</li>
        <li>Fill in detailed information about the product you want to add to the standard library such as publisher, name, version and other details. Enable the <strong>Add to Standard Software Product Library</strong> and press <strong>OK</strong>.</li>
        <li>The new product will appear in the product list and you can start using it immediately (creating licenses, etc.). At the same time, a request to add a new product is prepared and sent by Collector to our software product library specialists.</li>
        <li>Once the new product is added to the library and the new library is in the system, the system will automatically replace the user's product with a new product from the standard library.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        In order to submit a request to add a new product to the standard library, you must enable the <strong>Submit requests for changes to the software product library over the Internet</strong> option in the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">server administration</a> of the Internet Connected Collector. This option can be found in the SW library settings section. Data is sent anonymously, or you can provide a contact email. This can make it easier for our specialists if they need further information about a new product.
    </div>
</asp:Content>

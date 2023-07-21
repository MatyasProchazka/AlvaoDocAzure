<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import of licenses</h1>

    <h2>Function description</h2>

    <p>The ImportLic application is used to import licenses from a CSV file, including assignment to individual computers or users.  It can also be run in a mode to synchronize assigned licenses with an external system.</p>


    <h2>Syntax command lines</h2>

    <p>
        <strong>ImportLic.exe</strong> <strong>/input</strong> <em>&quot;path and name of CSV file&quot;</em> {<strong>/conn</strong> <em>&quot;connection string&quot;</em> |
  <strong>/server</strong> <em>&quot;database server name&quot;</em> <strong>/db</strong> <em>&quot;database name&quot;</em>} [<strong>/import</strong>] [<strong>/mode</strong> {ImportLicenses | UpdateItems}]
  [<strong>/force</strong>] [<strong>/headers</strong>] [<strong>/help</strong>]
    </p>

    <h2>Detailed description of parameters</h2>

    <table>
        <thead>
            <tr>
                <th>Parameter</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/input</td>
                <td>The path and name of the CSV file from which the import is to be performed.</td>
            </tr>
            <tr>
                <td>/conn<br />
                    /server<br />
                    /db</td>
                <td>These parameters are used to set the connection to the Alvao database. A connection string can be used (e.g. <strong>/conn</strong> <em>&quot;Data source=.\sqlexpress;Initial Catalog=test;Integrated Security = True;TrustServerCertificate=True&quot;</em>),
                    <br />
                    or simply specify a specific SQL server and DB (e.g. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test&quot;</em>).<br />
                    In case you use the <strong>/server</strong> parameters and <strong>/db</strong>, the database connection is made using Windows Integrated Authentication. If you specify all of these parameters,
                    <br />
                    only <strong>/conn</strong> parameter will be used, <strong>/server</strong> and <strong>/db</strong>
                    will be ignored. </td>
            </tr>
            <tr>
                <td>/import</td>
                <td>Import Data. If you do not use this switch, only the syntax check of the data in the CSV file is performed.</td>
            </tr>
            <tr>
                <td>/mode</td>
                <td>Import mode:
                    <ul>
 <li>ImportLicenses - import new licenses. This is the default mode.</li>
                        <li>UpdateItems - import license items in a per-user licensing model, i.e. assigning or removing licenses to specific users.</li>
                    </ul>
                    Detailed description of the modes can be found below. </td>
            </tr>
            <tr>
                <td>/force</td>
                <td>Forces import of data even if there are errors in the data. </td>
            </tr>
            <tr>
                <td>/headers</td>
                <td>Use if the first line of the file contains column names.</td>
            </tr>
        </tbody>
    </table>

    <h2>ImportLicenses</h2>
    <p>Import new licenses, including documents, and assign the created licenses to computers or users.</p>
    <h3>Description of all supported columns</h3>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The order of the columns is fixed, it does not depend on the column name.<br />
        Therefore, the imported file must contain all columns, only the values in some of them can be empty.<br />
        This is also true if the <em>force</em> parameter is used.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Dates must be entered in the correct format, e.g. &quot;1.12.2014&quot; or &quot;2015-12-01&quot;.
    </div>


    <h4>License</h4>

    <table>
        <thead>
            <tr>
                <th>Name of column in CSV</th>
                <th>Options</th>
                <th>Check</th>
                <th>Mandatory</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Product</td>
                <td>Exact product name from the ALVAO SWLIB software product library.</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Language ID (LangId)</td>
                <td>License language - can be either an empty value or the language code number (INT type) that is in the database:<br />
                    (1029=CZE, 1051=SVK, 1033=ENG, 1031=GER, 1036=FRA, 1034=SPA, 1040=ITA, 1038=HUN, 1045=POL, 1049=RUS, 1060=SLO, 1053=SWE, 1055=TUR, 1050=CRO, 1041=JAP).</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>License name</td>
                <td>Name of an existing license in the database, or an empty value (the license name will then be the same as the product name).</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Number</td>
                <td>Number of licenses purchased - INT number, must be entered.</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>License Type</td>
                <td>One of the following values must be entered: <em>em>
 <em>per device</em>, <em>per user</em>, <em>per connection,</em> <em>per processor</em> or <em>per core</em>.</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>License Mode</td>
                <td>Any text can be entered, we recommend using one of the following values: <em>Rental</em>, <em>Assurance</em>, <em>Assurance</em>, <em>Select</em> or <em>Open</em>.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Activity from</td>
                <td>Date from which the license is valid - the date must be entered in the correct format.</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Valid until</td>
                <td>Date until which the license is valid - can be a blank value&nbsp;or the correct date format.</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Support to</td>
                <td>Date until which the license is supported - can be a blank value or the correct date format.</td>
                <td>Yes</td>
                <td>No</td>
            </tr>

            <tr>
                <td>License type</td>
                <td>License Type - must be one of the following values.
 Float</em>, <em>Multi, OEM</em> or CAL.</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>License Activation Key</td>
                <td>License Activation Key - enter any text or an empty value.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>License Inventory Number</td>
                <td>License Inventory Number - enter any text or a blank value.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Certificate Number</td>
                <td>Any text or empty value - if specified, the program searches for the certificate by this number in the DB.<br />
                    If it finds it, it assigns the created license to the found certificate from the DB, otherwise it creates a document of type &quot;Certificate&quot; and assigns it to the currently created license.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Request</td>
                <td>Request for license - enter any text or a blank value.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>License Cost Center</td>
                <td>License cost center - enter any text or a blank value.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Price</td>
                <td>License price - must be any number of type INT, or an empty value.</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Web address</td>
                <td>If this is a product downloaded from the Internet, enter the URL link to download the product, or a blank value.</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Bundle</td>
                <td>If the product is part of a bundle package, enter &quot;<em>1</em>&quot;,
 if not, enter &quot;<em>0</em>&quot;.</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Organisation</td>
                <td>The name of the <a href="licenses">organization</a> that owns the license. If you specify a blank value, the license can be assigned to computers or users from any organization.</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Note</td>
                <td>License Note - enter any text or a blank value.</td>
                <td>No</td>
                <td>No</td>
            </tr>
        </tbody>
    </table>
    <h4>License Items</h4>
    This section does not need to be filled in for a license - in this case the license will be created without license items.
	 <table>
         <thead>
             <tr>
                 <th>CSL column name</th>
                 <th>Options</th>
                 <th>Check</th>
                 <th>Mandatory</th>
             </tr>
         </thead>
         <tbody>
             <tr>
                 <td>Computer</td>
                 <td>Network name of a specific computer in the DB - the computer must exist in the database.</td>
                 <td>Yes</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Item Activation Key</td>
                 <td>License Item Activation Key - enter any text or a blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Item cost centre</td>
                 <td>License Item Cost Center - enter any text or a blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Inventory item number</td>
                 <td>License Item Inventory Number - enter any text or a blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Item Request</td>
                 <td>License Item Request - enter any text or a blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Item Note</td>
                 <td>License Item Note - enter any text or a blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
         </tbody>
     </table>


    <h4>Document</h4>
    Again, this section does not need to be filled in. In this case, no document is created for the newly created license. Documents are stored in the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/document-folders/document-folder">document-folder</a> with the smallest ID that is linked to the software license (usually the <em>All Documents</em> folder).

	 <table>
         <thead>
             <tr>
                 <th>Name of column in CSV</th>
                 <th>Options</th>
                 <th>Check</th>
                 <th>Mandatory</th>
             </tr>
         </thead>
         <tbody>
             <tr>
                 <td>Invoice number</td>
                 <td>Enter any text or a blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Invoice number 2</td>
                 <td>Enter any text or blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Date of issue</td>
                 <td>Invoice issue date - the date must be entered in the correct format.</td>
                 <td>Yes</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Path to attachment</td>
                 <td>Path to document attachment (searched in shared documents), or empty value.</td>
                 <td>No</td>
                 <td>No</td>

             </tr>
             <tr>
                 <td>Supplier</td>
                 <td>The name of the supplier in DB is searched, if found, the found record is assigned, otherwise a new supplier with this name is created. It can also be an empty value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
             <tr>
                 <td>Document note</td>
                 <td>Enter any text or blank value.</td>
                 <td>No</td>
                 <td>No</td>
             </tr>
         </tbody>
     </table>

    <h3>Chefs</h3>
    <h4>Sample CSV file</h4>
    <div class="wide">
        <pre translate="no">
Product;LangId;License Name;Number;License kind;License Mode;Valid From;Valid until;SupportUntil;License Type;Asset. license key;License inv. no.;Cert. number;Request;Cost. center;Price;Web. address;Bundle?;Organization;License note;Computer;Item activ. key.;Item cost center;Item inv. no.;Item rquest;Item note;Invoice no.;Invoice no. 2;Issue date;Attachement path;Supplier;Invoice note
Microsoft Windows 2000 Professional;;Win2k;1;per device;Assurance;30.01.2007;15.12.2030;15.05.2008;float;AK-1234;IC-ALL-1234;Cert1;Pozad1;Strd1;1534;www.seznam.cz;0;Organizace;Poznamka k licenci1;PC1;AK-PC-1;StredPc1;IC-PC-1;REQ-ITM-1;Pozn PC1;CF-1234;CF-2-1234;15.08.2006;Faktury\f01.doc;DOD1;Pozn. doc. 1
Microsoft Windows XP Professional;1029;WinXP;1;per device;Assurance;15.01.2007;15.08.2030;15.05.2008;normal;AK-1234;IC-ALL-1234;Cert1;Pozad1;Strd1;1534;;0;;Poznámka k licenci1;PC1;AK-PC-1;StredPc1;IC-PC-1;REQ-ITM-2;Pozn PC1;CF-1234;CF-2-1234;15.08.2006;Faktury\f01.doc;DOD1;Pozn. doc. 1
Microsoft Windows 2000 Professional;1029;Win2k;1;per device;Assurance;15.01.2007;15.08.2030;15.05.2008;normal;AK-1234;IC-ALL-1234;Cert1;Pozad1;Strd1;1534;;0;;Poznámka k licenci1;PC2;AK-PC-2;StredPc2;IC-PC-2;REQ-ITM-3;Pozn PC2;CF-1234;CF-2-1234;15.08.2006;Faktury\f01.doc;DOD2;Pozn. doc. 2
Microsoft Windows XP Professional;1033;;2;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC1;AK-PC-1;StredPc1;IC-PC3;REQ-ITM-4;Pozn PC1;CF-8888;CF-2-1237;15.08.2008;Faktury\f02.doc;DOD1;Pozn. doc. 2
Microsoft Windows XP Professional;1033;;2;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC2;AK-PC-2;StredPc2;IC-PC2;REQ-ITM-4;Pozn PC2;CF-8888;CF-2-1237;15.08.2008;Faktury\f02.doc;DOD1;Pozn. doc. 2
</pre>
    </div>
    <h4>CSV import with recommended structure</h4>

    <p>
        CSV contains a header with column names. The data in the file will be checked before importing. If the data is incorrect, the import will not be performed.<br />
        Import command line:
    </p>
    <span class="console">ImportLic.exe /input &quot;c:\data\licence.csv&quot; /server server\sql2008 /db alvao /import /headers</span>

    <h4>Import multiple license items to one license</h4>
    <p>
        You do this by copying the row with the data in the &quot;License&quot; section, changing only the &quot;License Items&quot; section. Example CSV import of one license with 3 items:
    </p>
    <div class="wide">
        <pre translate="no">
Product;LangId;License Name;Number;License kind;License Mode;Valid From;Valid until;SupportUntil;License Type;Asset. license key;License inv. no.;Cert. number;Request;Cost. center;Price;Web. address;Bundle?;Organization;License note;Computer;Item activ. key.;Item cost center;Item inv. no.;Item rquest;Item note
Microsoft Windows XP Professional;1033;;3;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC1;AK-PC-1;StredPc1;IC-1;REQ-ITM-4;Pozn. 1
Microsoft Windows XP Professional;1033;;3;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC2;AK-PC-2;StredPc2;IC-2;REQ-ITM-4;Pozn. 2
Microsoft Windows XP Professional;1033;;3;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC3;;StredPc2;IC-3;REQ-ITM-4;Pozn. 3
</pre>
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The CSV contains 2 license entries that will be assigned to PC1 and PC2 and the last entry will not be assigned to any computer.
    </div>


    <h4>We don't have complete data</h4>

    <p>
        For the time being, we want to upload incomplete data, which will be corrected as soon as there is supporting information.<br />
        We are only uploading values to a few columns that we have defined in the header. The file will not be checked and we will force the import of even incomplete and incorrect data.<br />
        Import command line:
    </p>

    <span class="console">ImportLic.exe /input &quot;c:\data\licence.csv&quot; /server server\sql2008 /db alvao /force /headers</span>

    <h2>UpdateItems mode</h2>
    <p>Synchronize assigned licenses to users with an external system (e.g. M365).</p>
    <p>The input CSV contains a list of licenses and the users to be assigned those licenses.</p>

    <h3>Setting and checking input data</h3>
    <p>In the external system, set the export to a CSV file to exactly match the description of the columns below.</p>
    <p>Before starting the import into Alvao, make sure that:</p>
    <ol>
        <li>All the licenses you want to synchronize,
            <ol type="a">
                <li>have been set to <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">
                    <em>License ID on the external system</em></a>, which is used to match the license to the external resource (records for non-existent Ids are skipped),</li>
                <li>have a <em>per-user</em> licensing model set, and</li>
                <li>have <em>automatic allocation</em> disabled.</li>
            </ol>
        </li>
        <li>The <em>User</em> object template contains the <em>E-mail</em> property. This property matches users in CSV with users in Alvao.</li>
        <li>All users listed in the CSV exist in AM as objects in the tree, and their email address is unique within the active record. 
            <ol type="a">
                <li>Non-existing users are automatically created in the <em>Read Objects</em> folder.</li>
                <li>When multiple users with the same email are found, the license is assigned to the one with the lower <em>Id</em>.</li>
            </ol>
        </li>
        <li>The input CSV contains all users to whom the license is assigned. Others will have their license automatically revoked.</li>
    </ol>

    <h3>Description of all supported columns</h3>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The order of the columns is fixed, it does not depend on the column name.<br />
        Therefore, the imported file must contain all columns, only the values in some of them can be empty.<br />
        This is also true if the <em>force</em> parameter is used.
    </div>

    <table>
        <thead>
            <tr>
                <th>Name of column in CSV</th>
                <th>Options</th>
                <th>Check</th>
                <th>Mandatory</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>UId</td>
                <td>License ID in the external system. See AM Console - License registry -
 <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">Edit license</a>.</td>
                <td>No</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>LicCount</td>
                <td>Total number of licenses purchased.</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>UserEmail</td>
                <td>User e-mail</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>UserName</td>
                <td>UserName</td>
                <td>No</td>
                <td>No</td>
            </tr>
        </tbody>
    </table>

    <h3>Sample CSV file</h3>
    <pre translate="no">
UId;LicCount;UserEmail;UserName
Alvao:POWER_BI_PRO;10;mirek.vesely@alvao.com;Mirek Veselý | ALVAO
Alvao:POWER_BI_PRO;10;david.ostry@alvao.com;David Ostrý | ALVAO
Alvao:FLOW_FREE;;david.ostry@alvao.com;</pre>
<li>Download the code <a href="licosoby.csv">here</a></li>


    <h3>Import CSV with recommended structure</h3>
    <p>
        CSV contains a header with column names. The data in the file will be checked before the import. If the data is incorrect, the import will not be performed.<br />
        Import command line:
 <pre translate="no">ImportLic.exe /input "c:\data\licenceItems.csv" /server server\sql /db alvao /import /mode UpdateItems /headers</pre>
    </p>


</asp:Content>


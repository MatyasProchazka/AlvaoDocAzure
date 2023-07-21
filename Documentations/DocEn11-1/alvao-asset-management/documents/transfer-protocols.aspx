<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Handover protocols</h1>

    <p>
        A transfer report is a document which, when property is transferred, serves as evidence that the transferor has handed over the property to the recipient and that the recipient has accepted the property. 
    </p>

    <p>
        Alvao contains the following types of handover protocols:
    </p>

    <ul>
        <li><b>Internal</b> - the movement of assets within an organization, usually between an asset warehouse and an employee. 
            <ul>
                <li><b>Intermediate</b> - only the assets currently being transferred are listed on the log. In order to document the assets currently held by a particular recipient, it is necessary to trace all historical transfer logs for that recipient or transferor.</li>
                <li><b>Summary</b> - contains a complete list of the property in the possession of the recipient at the time the protocol is issued, i.e. the property has been transferred to the recipient at some point in the past and has not yet been returned. The last protocol issued for a given beneficiaries replaces all their previous protocols, which therefore do not need to be archived.
                    <br />
                    We recommend the use of this type of protocol for the transfer of entrusted property to employees. On the other hand, for recipients who are responsible for a large number of assets, it may not be practical to issue a multi-page summary report for each transfer of assets. In that case, the only option is to archive the difference logs. Alternatively, you can combine the two approaches for these beneficiaries, e.g. issue difference reports during the year and issue a summary report once a year, which replaces the archive of difference reports issued up to that point and can also serve as a basis for the beneficiary to take stock of the assets for which is responsible.  </li>
            </ul>
        </li>
        <li><b>External</b> - transfer of assets outside the organisation, e.g. between the organisation and a service company.</li>
    </ul>

    <h2>Preparatory warehouse</h2>
    <p>A technician who hands over an asset to an employee often must first prepare the asset for use, e.g. install the necessary applications on the computer, etc. Similarly, when receiving returned property from an employee, the property must be prepared for storage, e.g. wiping the contents of the computer's hard drives, etc. In the object tree, you can create an object for each technician for these tasks according to the <i>Preparation Warehouse</i> template. In the <a href="../implementation/tree-design">Responsible for assets</a> property, specify the name of the technician.</p>
    <p>If a technicians is preparing several asset moves at the same time, they can create a separate work folder in their staging warehouse for each move in progress.</p>

    <h2>Transfer of property to an employee</h2>
    <ol>
        <li>Move the assets in the object tree <a href="../objects-and-properties/moving-object">from the warehouse to your staging warehouse</a> if you are using it.</li>
        <li>Prepare the property for use.</li>
        <li>Physically transfer the asset to the recipient while:</li>
        <li>In the object tree, move the asset under the recipient.</li>
        <li>If you want to issue a <b>summary</b> report, select the recipient in the tree. If you want to issue a <b>distributive</b> report, in the tree (or on the Child Objects tab),
  select only the asset that has just been moved.</li>
        <li>Use the <b>Print</b> command and select the appropriate log template.</li>
        <li>Edit or add missing data.</li>
        <li>Print the protocol twice on paper.</li>
        <li>Both copies to be signed by you and the recipient.</li>
        <li>Give one copy to the recipient and file the other in the archives.</li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You do not need to print internal handover protocols on paper or archive them in paper form or scan them into an electronic archive. Recipients can validate them directly in the application in PDF format. This functionality is part of the <a href="../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> module.
    </div>

    <h2>Receipt of returned property from an employee</h2>
    <ol>
        <li>Physically accept the returned property from the employee while:</li>
        <li>Move the property in the <a href="../objects-and-properties/moving-object">object tree</a> to your staging warehouse if you are using it.</li>
        <li>If you want to issue a <b>summary</b> report, select the employee in the tree. If you want to issue a <b>distributive</b> log, in the tree (or on the Child Objects tab),
  select only the asset that has just been returned.</li>
        <li>Use the <b>Print</b> command and select the appropriate log template.</li>
        <li>Edit or add missing data.</li>
        <li>Print the protocol twice on paper.</li>
        <li>Both copies to be signed by you and the recipient.</li>
        <li>Give one copy to the employee and file the other in the archives.</li>
        <li>Prepare the subsequently returned property for storage.</li>
        <li>Physically store the returned property in the warehouse and move the objects in the object tree.</li>
    </ol>

    <h2>Employee's salary</h2>
    <p>For an employee leaving the organisation, upon return of all entrusted property, issue a (blank) <b>summary</b> handover protocol in paper form as evidence that all entrusted property has been returned.</p>

    <h2>Archive of handover protocols</h2>
    <p>
        The archive of exposed internal handover protocols can be found in <b>AM Console - Tools - Lists - </b><a href="../../list-of-windows/alvao-asset-management-console/tools/lists/documents">Documents</a>.
  For each internal handover protocol, a <a href="../documents">document</a> is automatically created, with the handover protocol as a PDF attachment.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        See <i>Transfer Protocol Internal - Generate New Document</i>, or <i>WebApp - Administration - Asset Management - Settings - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/general">General</a> - The "Generate New Document" option in the forwarding log will be enabled by default</i>.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        The internal handover protocol numbers can be automatically generated <a href="sequences">in numeric sequence</a>.
    </div>

</asp:Content>

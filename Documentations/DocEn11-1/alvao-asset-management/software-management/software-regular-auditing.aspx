<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Regular license purity check</h1>

    <p>The license manager checks the status of licenses periodically (e.g., 1x/month) as follows:</p>
    <ol>
        <li>In the <strong translate="no">ALVAO Asset Management Console</strong>, select <strong>Software - Overview of Licenses and Installations</strong>.</li>
        <li>In the <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview">License and Installation Overview</a> window, step through the products for which an exclamation point is displayed. Select each product and look at the error message for the entries with an exclamation mark in the list below.  </li>
        <li>
        If you are missing a license on a computer and have a free license available, you can assign it using the "Assign License..." command,
  "Allocate license automatically" from the local menu.  >
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Unaudited products can be displayed by enabling the <strong>Show - Unaudited Products</strong> in the main menu of the window.
    </div>


    <h2>Setting up alternative approved SW</h2>
    <ol>
        <li>In the AM Console, use the <strong>Software -
  Products (software)...</strong>.</li>
        <li>A list of all products will be displayed. Select the products and from the local menu use the <strong>Set Alternate Approved Software...</strong> command.</li>
        <li>The <strong>Set Alternate Approved Software</strong> window appears, in which you enter a list of alternate products that users can use instead of the disabled products.</li>
        <li>Finally, press the <strong>OK</strong> button.
        </li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        <ul>
            <li>The set value is for informational purposes only.</li>
            <li>Alternative software can also be set in bulk. If you select multiple products with different values, the <strong>Alternative approved software</strong> is blank when the edit window is displayed.</li>
        </ul>
    </div>


    <h2>Setting the person who is responsible for the software on a specific PC (if not managed by the IT department)</h2>

    <ol>
        <li>In the AM Console, go to the computer template in the tree and edit the value of the "Responsible for software" property:
  <ol>
      <li>If most of the computers are managed by the IT department - set the value to "Software Administrator on computers" (default setting).</li>
      <li>If most computers are managed by users - set the value to "[PC User]".</li>
  </ol>
        </li>
        <li>Select the computer template and use the "Object - Unify Objects" command, this will add the "Responsible for Software" property to all computers in the inventory and set them to the appropriate value.</li>
    </ol>
    Optional: If most of the PCs are managed by the IT department but some of the PCs are managed by the user, locate these PCs and adjust the value of the "Responsible for software" property to "[PC user]".
 <br />
    <br />
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        <ul>
            <li>You can type the name of any other user group into the value of the "Responsible for software" property.</li>
            <li>The system automatically delegates responsibility to the system group "Computer Software Administrator" in the following case:
                <ul>
                    <li>If a computer does not have the "Software Responsible" property.</li>
                    <li>If no computer is placed under any user in the tree and the value of the "Responsible for software" property is "[PC user]".</li>
                    <li>If the value of the "Responsible for software" property does not match any group name, nor "[PC User]".</li>
                </ul>
            </li>
        </ul>
    </div>

    <h2>Example of an internal directive</h2>

    <h3>Computers and other IT equipment</h3>

    <ol>
        <li>Computers and other IT equipment entrusted to users are registered in the ALVAO Asset Management system.</li>
        <li>Each user can view the list of devices registered with them on <span class="console">https://server/asset</span>.</li>
    </ol>

    <h3>Software</h3>

    <ol>
        <li>The IT user must not use the software in a way that is not in accordance with the license terms for that type of software (e.g. installing illegal software, copying, redistributing or modifying the software).</li>
        <li>Each computer has its own <strong>software administrator</strong>,
 who is responsible for the legality of the software on the computer. If the user of the computer (i.e. the user to whom the computer is entrusted for use) has software installation rights enabled, the software administrator on the computer is the user of the computer. Otherwise, the software administrator is the designated internal IT staff member.</li>
        <li>Software licenses are registered in the internal ALVAO Asset Management system. The registration of licenses is handled by internal IT.</li>
        <li>Software installed on company computers is automatically inventoried at least once a year.</li>
        <li>If during the inventory the IT department detects a serious violation of the license conditions of a software, it immediately calls on the software administrator of the computer in question to take corrective action. Once the problem has been corrected, the computer administrator can check the result of the last inventory at <a href="https://server/asset">https://server/asset</a>. The software inventory on the computer is automatically performed every 24 hours after the problem is detected. After 1 month, an automatic health check is performed. If the problem with the product is still not corrected, a call is resent to the computer's software administrator. This second prompt is also copied to the software administrator's direct supervisor. It is also logged in the internal Service Desk as a task to be resolved.</li>
    </ol>



</asp:Content>

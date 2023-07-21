<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Web signing</h1>

    <p>
        In this method of signing the handover protocol, the recipient confirms the acceptance of the property by pressing a button in the application. It is not necessary to print the handover protocol on paper and the recipient can confirm it with any device with a web browser (PC, mobile phone, tablet, ...) without any special technical equipment. 
    </p>

    <h2>Settings</h2>
    <p>
        After issuing a new transfer protocol, the application automatically notifies the recipient by e-mail of the need to sign it. In <b>WebApp - Administration - Asset Management - Settings -
  </b><a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/electronic-handover-forms">Signing documents via the web</a> first set the message text and other notification parameters. 
    </p>

    <h2>Publishing the handover protocol</h2>
    <ol>
        <li>When <a href="../../alvao-asset-management/documents/transfer-protocols">building a transfer protocol</a>, select the <b>Transfer Protocol Internal Summary</b> protocol template.
	  <div class="note">
          <div class="icon"></div>
          <div class="title">Note:</div>
          Returns of individual assets via the <i>Difference Transfer Protocol</i> cannot be confirmed electronically, so we recommend using the <i>Transfer Protocol Summary</i>. By signing the protocol, the user always confirms the complete list of assets and thus has a better overview of the current status of the entrusted assets.
      </div>
        </li>
        <li>On the <a href="../../list-of-windows/alvao-webapp/objects/object/print">form</a>, select <b>Method of Signing</b> <i>Through the Web</i>.</li>
        <li>After pressing <b>OK</b>, you will see a <a href="../../list-of-windows/alvao-webapp/objects/object/print/preview">preview</a> of the print report where you can review the handover protocol.</li>
        <li>Send the report using the <b>Send</b> command. An email will be sent to the recipient with a link to the ALVAO WebApp where they can view and sign the handover protocol.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The recipient's email address comes from <i>ALVAO WebApp - Administration - Users</i> and not from the object tree. The pairing of users between <i>Administration</i> and objects is based on GUID, personal number, username, and email (in that order).
    </div>

    <h2>Signing the protocol via the web</h2>
    <p>
        The employee to whom the property is being handed over will receive an email with a message that the property has been handed over to them and their signature is required.<br />
        In the text of the email is a link to the user's documents page on the ALVAO WebApp.
    </p>
    <p>To sign the handover protocol:</p>
    <ol>
        <li>Go to the <b>My Documents</b> page.</li>
        <li>Open the requested document and review it.</li>
        <li>Click <b>Sign</b> next to the document.</li>
        <li>You will then be asked if you agree with the content of the document.</li>
        <li>Select <b>Confirm</b> to sign the handover protocol and record the date, the person who signed it and the name of the computer from which the signature was made.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When signing the log, you can also force a login password to make the signing more provable. This behavior can be set in <i>ALVAO WebApp - Administration - Asset Management - Settings - </i>
  <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/electronic-handover-forms">Signing documents via the web</a> by selecting <i>Require login password when signing</i>.
    </div>

    <h2>Signature control</h2>
    <p>To check the signing status of a document, use the following procedure:</p>
    <ol>
        <li>In the <b>AM Console</b>, select <b>Tools - Lists - Documents</b> from the main menu.</li>
        <li>In the list that appears, view the <b>Signature Method, Signed, Signed by and Signed from Computer</b> columns.</li>
        <li>Search (e.g. using a filter) for the desired document, the signing method has <b>Web signing</b>.</li>
        <li>A document is signed if the <b>Signed</b> and <b>Signed by</b> columns contain the date and the person who signed it. The <b>Signed from computer</b> column then contains the name of the computer from which the document was signed.</li>
    </ol>

    <h2>Changing the signing method</h2>
    <p>If the report has been signed in a different way (e.g. you have printed the handover protocol afterwards and the recipient has signed it manually) and you wish to change the signing method, please proceed as follows:</p>
    <ol>
        <li>In the <b>AM Console</b>, select <b>Tools - Lists - Documents</b> from the main menu.</li>
        <li>Select the desired handover protocol from the list and select <b>Edit</b>.</li>
        <li>Set <i>Signature Method</i> to the desired value.</li>
    </ol>

</asp:Content>

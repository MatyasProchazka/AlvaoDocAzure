<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Installation</h1>

    <h2>Technical requirements</h2>
    <ul>
        <li>ALVAO Asset Management</li>
    </ul>

    <h2>Installing and activating the module</h2>
    <p>
        The module is part of the ALVAO Asset Management installation. The module must be activated with an activation key, which you can obtain from your Alvao supplier. In the <b>ALVAO WebApp - Administration - Licenses</b>
        select <b>Insert Activation Key</b> and enter the activation key. 
    </p>

    <h2>Changing the text on the My Documents page</h2>
    Using the <a href="../../list-of-windows/alvao-webapp/search/persons/person">My Documents</a> command from the user menu, each user can view a list of their forwarding logs. Above the list is the instructional text, which you can optionally change with the following SQL script.
    <span class="style1">UPDATE tProperty SET sPropertyValue='text of procedure link' WHERE sProperty='AM.MyDocumentsWorkflowText';
        <br />
        UPDATE tLocalization SET NeedsUpdate=1 WHERE sTable='tProperty' AND iRecordId=(SELECT id FROM tProperty WHERE sProperty='AM.MyDocumentsWorkflowText');
    </span>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Format the text using common html tags and possibly translate it into multiple <a href="#multilanguage-environment">languages</a>.
    </div>

    <h2 id="multilanguage-environment">Multilingual environment</h2>

    Electronic Handover Forms supports <a href="../../alvao-service-desk/implementation/multi-languages">multi-language environment</a>. 
    You can translate the following items into multiple languages:
    <ul>
        <li>Messages
	<ul>
        <li>Subject</li>
        <li>Message text</li>
    </ul>
        </li>
        <li>Workflow on the <i>My Documents</i>page</li>
    </ul>

</asp:Content>

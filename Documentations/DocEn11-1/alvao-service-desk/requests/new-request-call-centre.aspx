<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


    <h1>PBX</h1>
    <p>You can integrate the Service Desk with the PBX. When the phone rings, the main solver's computer will then automatically open the New Request form and, based on the caller's phone number, will automatically fill in the caller's details, including, for example, a table of the requests they have recently made. This automatically provides the principal investigator with all the necessary information to start the call.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        For this functionality, you need to have application support for the PBX, which allows you to launch any configured application from the command line or open the URL in a web browser when a call comes in.
    </div>

    <h2>Settings</h2>
    <p>
        <strong>ALVAO WebApp</strong> - if you wish to make new requests via the web application, set the PBX application to open the following URL on the main solver's computers when a call comes in:<br />
        <span class="console">&lt;server&gt;/Alvao/Ticket/New?phoneNumber=<em>&lt;caller's phone number</em>&gt;</span>
    </p>

    <p>This setting automatically opens the <em>New Request</em> form in the selected application with the Requester pre-populated by phone number when a call comes in. If no phone number is listed for any user, only that number and the Requester Host are filled in the form.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        The method of locating an applicant by the phone number provided by the PBX can be modified using a custom stored procedure in the database. Create a procedure in the database:<br />
        <span class="console">CREATE PROCEDURE [<em>&lt;custom schema&gt;</em>].[spPersonByPhoneNumber_Custom] @caller nvarchar(255) AS<br />
            BEGIN<br />
            ...<br />
            END<br />
            GO</span><br />
        The procedure must return the requester id that is stored in the
	<a href="../../alvao-asset-management/implementation/customization/database">tPerson.iPersonId</a>.
    </div>

</asp:Content>

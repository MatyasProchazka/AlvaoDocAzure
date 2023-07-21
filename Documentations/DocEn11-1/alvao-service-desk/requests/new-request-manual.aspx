<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Manual request creation</h1>
    <p>You can write a new request using <strong>ALVAO WebApp</strong> - <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> - <strong>New Request</strong>.</p>

    <h2>Types of New Requests and Events</h2>
    <table>
        <thead>
            <tr>
                <th>Event Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>email</td>
                <td>Message sent by e-mail.
                    <br />
                    This record cannot be created manually. Records are created only by retrieving an email from the service mailbox.</td>
            </tr>
            <tr>
                <td>phone</td>
                <td>A spoken conversation between two or more people remotely (telephone, conference call, video conference, etc.)</td>
            </tr>
            <tr>
                <td>in-person meeting</td>
                <td>A conversation between two or more people. The participants are present in person at the meeting place.</td>
            </tr>
            <tr>
                <td>letter</td>
                <td>Document delivered by post.</td>
            </tr>
            <tr>
                <td>voice message</td>
                <td>A voice message recorded over the telephone.</td>
            </tr>
            <tr>
                <td>written message</td>
                <td>Document delivered by internal mail.</td>
            </tr>
            <tr>
                <td>form</td>
                <td>Message sent self-service via the ALVAO application user interface.</td>
            </tr>
            <tr>
                <td>note</td>
                <td>A general remark recorded during the resolution of a request by the solver, service manager or approver.
                    <br />
                    This record cannot be used when the request is created.</td>
            </tr>
            <tr>
                <td>process</td>
                <td>A record of the execution of a request operation.
                    <br />
                    These records are created automatically and cannot be created manually.</td>
            </tr>
            <tr>
                <td>other</td>
                <td>General Communication. No communication channel (phone, email, etc.)</td>
            </tr>
            <tr>
                <td>warning</td>
                <td>A record of automatic alert generated for inactivity or impending resolution.
                    <br />
                    These alerts are created automatically and cannot be created manually.</td>
            </tr>
        </tbody>
    </table>

</asp:Content>

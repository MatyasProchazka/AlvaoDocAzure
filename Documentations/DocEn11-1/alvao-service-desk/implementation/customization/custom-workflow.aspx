<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom workflow</h1>

    <p>This type of modification requires a good knowledge of the ALVAO Service Desk database. You set up the URL workflow in the service administration (<strong>WebApp - Administration - Service Desk - Services - New Request Form</strong>). The URL is always used when the request page is displayed. The URL may contain special symbols.</p>

    <table>
        <thead>
            <tr>
                <th>Symbol</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>~</td>
                <td>Represents the address of the WebApp</td>
            </tr>
            <tr>
                <td>{0}</td>
                <td>Represents the request number (without prefix and suffix)</td>
            </tr>
        </tbody>
    </table>
    <p>For example: &quot;<em>~/Custom/HdTicketNew_NewEmployee?iHdTicketId={0}</em>&quot;</p>

</asp:Content>

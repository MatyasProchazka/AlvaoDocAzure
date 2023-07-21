<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Signatures</h1>

    <p>Your signature is automatically added to the new message. You can define your own signature instead of the <strong>default signature</strong>, which the system creates automatically according to your contact details (name, function, department, organisation).</p>


    <h2>Custom signatures</h2>
    <p>You can create your own signatures in <strong>ALVAO WebApp - User Menu - Settings</strong> - <a href="../../list-of-windows/alvao-webapp/settings/signatures">Signatures</a>.</p>
    <p>You can define the following types of signatures:</p>
    <table>
        <thead>
            <tr>
                <th>Order</th>
                <th>Signature Type</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1.</td>
                <td>Personal signature for the service</td>
                <td>Only you can use your signature in certain listed services.</td>
            </tr>
            <tr>
                <td>2.</td>
                <td>Personal signature for all services</td>
                <td>Only you can use the signature in any service.</td>
            </tr>
            <tr>
                <td>3.</td>
                <td>Group signature for a service</td>
                <td>A signature can be used by all members of the solution teams of certain services and only in those services.</td>
            </tr>
            <tr>
                <td>4.</td>
                <td>Group signature for all services</td>
                <td>The signature can be used by all members of the solution teams in all services.</td>
            </tr>


        </tbody>
    </table>


    <p>Your personal signature for the service will be inserted into the new message as a preference. If not defined, your personal signature for all services etc. in the order shown in the table. If you have no personal signature defined, your default signature is inserted in the new message.</p>

</asp:Content>
<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Property Security</h1>
    <p>
        <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/security">Property security</a> is used to set access permissions to object properties.
        Property security is set for each <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail">property definitions</a> independently of <a href="object-access-rights">object security</a>.
    </p>

    <h2>Rights</h2>
    <p>The system allows you to set the following permissions:</p>
    <table>
        <thead>
            <tr>
                <th>Permissions</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Read</td>
                <td>The user sees the property and its values. Properties are displayed, for example, in the AM Console on the Properties and Objects tabs, in the Object Lists window, in the ALVAO WebApp on the object page, etc.</td>
            </tr>
            <tr>
                <td>Change</td>
                <td>The user can change property values. Note: If <a href="object-access-rights">object security</a> is enabled, the user must also have the Modify permission enabled on the object.</td>
            </tr>
        </tbody>
    </table>

    <p>The permission can be specified unlimitedly for all object types, or it can be set only for a specific object type.</p>
    <p>When you create a new property definition, the system automatically sets permissions for Asset Management system groups as follows:</p>
    <table>
        <thead>
            <tr>
                <th>Group</th>
                <th>Read</th>
                <th>Change</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Object property readers</td>
                <td>Yes</td>
                <td></td>
            </tr>
            <tr>
                <td>Object property administrators</td>
                <td>Yes</td>
                <td>Yes</td>

            </tr>
        </tbody>
    </table>

    <p>If no permissions are set on the property definition, only members of the <i>Asset Management administrators</i> group can see the property and change its value.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Asset Management administrators can always read and change all property values, permissions cannot be restricted for them.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you need to display a specific property to all users in the ALVAO WebApp in the My Trust section, set the system group Everyone to Read in the property definition. (In this case, users who are only registered in the object tree and are not listed in ALVAO WebApp - Administration - Users are exceptionally considered members of the Everyone group.)
    </div>

</asp:Content>

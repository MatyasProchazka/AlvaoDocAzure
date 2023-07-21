<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Multilingual environment</h1>

    <p>See <a href="../../alvao-asset-management/implementation/multi-languages">Asset Management - Multilingual Environment</a>.</p>
    <p>You can translate the following values in SD:</p>
    <ul>
        <li>Service<ul>
            <li>Service Name</li>
            <li>Service Description</li>
            <li>Service keywords</li>
        </ul>
        </li>
        <li>SLA<ul>
            <li>Name of SLA</li>
            <li>Description of the SLA</li>
        </ul>
        </li>
        <li>Process<ul>
            <li>Process name</li>
            <li>status name</li>
            <li>Description of statuses</li>
            <li>Instructions for the solver</li>
            <li>Authorizer Report Template</li>
            <li>status transition message template for applicants</li>
        </ul>

        </li>
        <li>Priority
            <ul>
                <li>Name of priority (high, medium, ...)</li>
            </ul>
        </li>
        <li>Request relationships<ul>
            <li>Link type name</li>
        </ul>
        </li>
        <li>Custom request items
            <ul>
                <li>Item name</li>
                <li>Item description</li>
                <li>Values in the list of values for items of type int and nvarchar
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        <br />
                        Translations of custom field value lists are disabled by default. You can enable them on each <a href="../../list-of-windows/alvao-webapp/administration/custom-items/create-custom-item">custom field</a> separately by enabling the <strong>Enable translation</strong> option.
                    </div>
                </li>
            </ul>
        </li>
        <li>Custom Notifications<ul>
            <li>Subject and text of the notification</li>
        </ul>

        </li>
    </ul>

</asp:Content>
<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Product status</h1>
    <p>Product status is used to track the life cycle of individual products. The main idea is to have an overview of the company's attitude towards each product from a global perspective, regardless of the License registry or Software Profiles on individual machines. The Alvao system describes the life cycle of products using the following statuses:</p>
    <p>
        1.&nbsp;Unclassified<br />
        2.&nbsp;Approval&nbsp; &lt;------&gt; 3b. Rejected<br />
        3a. Approved<br />
        4.&nbsp; Approved - scheduled for decommissioning<br />
        5.&nbsp; Decommissioned
    </p>

    <table class="wide">
        <thead>
            <tr>
                <th>Product Status</th>
                <th>Description of product status</th>
                <th>Notes</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Unclassified</strong></td>
                <td>New products that have not been approved or rejected yet.</td>
                <td>Request</td>
            </tr>
            <tr>
                <td><strong>Approval</strong></td>
                <td>Product approval is in progress for use in the organization.</td>
                <td>Items:Request</td>
            </tr>
            <tr>
                <td><strong>Approved</strong></td>
                <td>The product is approved for use in the organization.</td>
                <td>Items: Request, Approved version</td>
            </tr>
            <tr>
                <td><strong>Approved - scheduled for decommissioning</strong></td>
                <td>The product is approved for use, but it is an older version that will be decommissioned on the specified date.
                    <br />
                    On the date set in "To be decommissioned", the product status will automatically switch to "Decommissioned".</td>
                <td>Items: Request, Approved version, To be decommissioned</td>
            </tr>
            <tr>
                <td><strong>Decommissioned</strong></td>
                <td>The product has been decommissioned.</td>
                <td>Items Requested</td>
            </tr>
            <tr>
                <td><strong>Rejected</strong></td>
                <td>The use of the product in the organization was rejected during the approval process.</td>
                <td>Items:Request</td>
            </tr>
        </tbody>
    </table>

    <p>If you want to use the <em>product status</em> feature, in <strong>Administration</strong> - <strong>Asset Management</strong> - <strong>Settings</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/general">General</a> tab turn on the <strong>Alert for installed products with &quot;Unclassified&quot; state</strong> option to be alerted for the installations of the new products that should be evaluated.</p>



</asp:Content>

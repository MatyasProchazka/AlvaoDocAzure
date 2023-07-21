<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Enable downgrade</h1>

    <p>This is a scenario where the license may cover older versions of products in addition to the main product license.</p>
    <ul>
        <li>Go to <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry">License Registry</a> and locate the license for which you want to enable older versions of the product, and use the <b>Enable downgrade</b> command.
        </li>
        <li>A window will appear in which you select the specific products that the license should also cover, and then press <b>OK</b>.
        </li>
    </ul>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The license covers the main license product (+ package components) as well as all products (and their package components) listed on the tab <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/substitute-products">Substitute products</a> (license modification).

    </div>

</asp:Content>

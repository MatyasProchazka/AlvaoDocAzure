<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Discarded asset registry</h1>
    <p>There is a special folder in the object tree called <em>Disposed assets</em> for the accounting of discarded assets. This folder is used to keep track of discarded assets, i.e. assets that were previously used in the company but have now been physically disposed of. It is not a warehouse of assets to be scrapped.</p>
    <p><em>Properties of &quot;discarded assets&quot;</em></p>
    <ul>
        <li>Discarded computers &quot;do not take up&quot; license</li>
        <li>inherited computers cannot be detected</li>
        <li>all allocated licenses on computers will be released; the exception is OEM licenses - these will be invalidated - this behavior can be influenced by querying the system.</li>
        <li>all installed software on computers will be marked as uninstalled -
this behaviour can be influenced by querying the system.</li>
        <li>cannot view installed software</li>
    </ul>
    <p>You can rename and move an object for retired assets to any object in the inventory. There is no limit to the number of such objects.</p>

</asp:Content>

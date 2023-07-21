<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Number sequences</h1>
    <p>Each document in the records should have a unique designation. When entering a document into the register, you can enter its designation manually or have it automatically generated.</p>
    <p>Media can be marked similarly to documents, see <a href="../software-management/licenses#media">Media</a>.</p>
    <p>Number series are used to automatically generate labels. The <strong>Tools - Lists - Numeric Sequences</strong> command opens the <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences">Numeric Sequences</a> window on the screen. The list in the window contains the numeric sequences of the tagging:</p>
    <ul>
        <li>invoices</li>
        <li>transfer reports</li>
        <li>media</li>
        <li>documents</li>
        <li>certificates</li>
        <li>licensing arrangements</li>
        <li>contracts</li>
    </ul>
    <p>When you double-click on an item, the <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences/numeric-sequence">Edit Numeric Sequence</a> window opens, where you can enable or disable the use of the sequence and change its settings.</p>
    <p>Each numeric sequence generates a label in the format:</p>
    <p><em>pppnnnsss</em></p>
    <p>where:</p>
    <ul>
        <li><em>ppp</em> is a prefix</li>
        <li><em>pnnn</em> is a number</li>
        <li><em>sss</em> is a suffix</li>
    </ul>
    <p>You can specify the prefix and suffix arbitrarily, or leave them blank. The number series setting is used to specify the number that will be used for the next generated label.</p>
    <p><strong>Example 1. Number Series</strong></p>
    <p>Setting the number series for invoices:</p>
    <ul>
        <li>Prefix: <em>"f-"</em></li>
        <li>Additional number: <em>"56"</em></li>
        <li>Prefix: <em>"/04"</em></li>
    </ul>
    <p>With this setup, the next invoice entered will have the designation f-56/04. The next one after that will be marked f-57/04, etc.</p>


</asp:Content>

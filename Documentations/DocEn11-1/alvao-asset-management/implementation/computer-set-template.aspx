<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Computer set template</h1>

    <p>The system has a standard template for a computer assembly (Assembly object), which contains the computer, monitor, keyboard, etc. You can configure the system so that the Assembly object is not used and only computers are registered in the tree. In that case, however, monitors and printers would not be created either and you would have to register them manually.</p>
    <p>If you want to register only computers, change the templates as follows:</p>
    <ol>
        <li>Mouse drag the computer object that is inside the report directly to the Object Templates folder.</li>
        <li>Remove the Assembly object from the templates.</li>
    </ol>

</asp:Content>

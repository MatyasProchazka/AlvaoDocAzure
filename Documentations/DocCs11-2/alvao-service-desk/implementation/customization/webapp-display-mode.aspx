<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Režim zobrazení aplikace ALVAO WebApp</h1>

    <p>Při přístupu k aplikaci WebApp je možné do adresy URL přidat parametr DisplayMode a upravit tak způsob zobrazení. Podporované hodnoty parametru jsou: Normal a NoHeading</p>
    <!--NoLogo is not currently supported on the WebApp and behaves the same as Normal.-->
    <p>Například: http: <code>//localhost/Tickets?DisplayMode=NoHeading</code></p>
    <p>Pokud je stránka zobrazena v rámu, záhlaví se automaticky skryje.</p>

</asp:Content>

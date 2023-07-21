<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>
<%@ Register Src="~/_Controls/ProblemListViewControl.ascx" TagName="ProblemListViewControl" TagPrefix="DocCtrl" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vydané aktualizace - ALVAO 11.2</h1>
    <h2>FIX1 (verze ?, plánované vydání ?)</h2>

    <p>Opravené problémy:</p>
   <%--<DocCtrl:ProblemListViewControl ID="ProductListViewControlFIX1" runat="server" VersionFilter="11.2.0000" />--%>

    <h2 class="plannedVersion"><span class="notranslate">FIX2 (verze ?, plánované vydání ?)</span></h2>
    <p>Nové funkce a změny:</p>
    <ul>
        <li></li>
    </ul>
    <p>Opravené problémy:</p>
    <ul>
        <li></li>
    </ul>

</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .plannedVersion { color: #C0C0C0; } .plannedVersion a { color: #9B9B; } .plannedVersion h2 { color: #999999; } .plannedVersion h3 { color: #999999; } </style>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<%@ Register Src="~/_Controls/ProblemListViewControl.ascx" TagName="ProblemListViewControl" TagPrefix="DocCtrl" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 id="important">Odstraněné problémy</h1>
    <p>Na této stránce jsou uvedeny všechny problémy, které byly opraveny do verze ALVAO 11.2. Seznam dosud známých problémů s produkty a způsob jejich řešení naleznete na stránce <a href="../known-issues">Známé problémy</a>.</p>

    <DocCtrl:ProblemListViewControl ID="ProductControl" runat="server" VersionFilter="11.2.0000" />

</asp:Content>

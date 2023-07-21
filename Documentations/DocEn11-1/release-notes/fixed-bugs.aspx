<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<%@ Register Src="~/_Controls/ProblemListViewControl.ascx" TagName="ProblemListViewControl" TagPrefix="DocCtrl" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 id="important">Fixed issues</h1>
    <p>This page lists all the issues that have been fixed for ALVAO 11.1. For a list of known issues with the products so far and how to resolve them, please visit <a href="../known-issues">Known Issues</a>.</p>

    <DocCtrl:ProblemListViewControl ID="ProductControl" runat="server" VersionFilter="11.1.0000" />

</asp:Content>

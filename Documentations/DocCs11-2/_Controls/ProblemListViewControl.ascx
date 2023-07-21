<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ProblemListViewControl.ascx.cs" Inherits="DocCs._Controls.ProblemListViewControl" %>
<%@ Import Namespace="DocCs.App_Code" %>

<asp:SqlDataSource ID="ProblemsSource" runat="server" connectionstring="<%$ ConnectionStrings:Db %>"></asp:SqlDataSource>

<asp:ListView ID="ProblemsListView"
    DataSourceID="ProblemsSource"
    DataKeyNames="iHdTicketId"
    runat="server">
    <LayoutTemplate>
        <ul>
            <div runat="server" id="itemPlaceholder" />
        </ul>
    </LayoutTemplate>
    <ItemTemplate>
        <li><a href="https://doc.alvao.com/en/<% Page.RenderVersion(); %>/known-issues?issue=<%# Eval("iHdTicketId") %>"><%# Eval("sHdTicket") %> (<%# Eval("sHdTicketMessageTag") %>)</a>
    </ItemTemplate>
</asp:ListView>
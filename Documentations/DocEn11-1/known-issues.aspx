<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" CodeBehind="~/known-issues.aspx.cs" Inherits="DocEn.troubleshooting.KnownIssues" AutoEventWireup="True" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <%--KNOWN ISSUES LIST--%>
    <div id="knownIssuesList" runat="server">

        <h1>Known issues</h1>
        <p>
            <label for="MainContentPlaceHolder_VersionSelector">Select release:</label><br />
            <asp:DropDownList ID="VersionSelector" runat="server" OnSelectedIndexChanged="VersionSelector_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </p>

        <p>This page lists known issues with the product in the selected release and how to resolve them. For a full list of issues that have already been fixed, see the <a href="release-notes/updates">Release notes - Released updates</a> page.</p>

        <h2>Critical issues</h2>

        <asp:GridView ID="KnownIssuesGridCritical" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Fix planned for release" SortExpression="sPlannedToVersion">
                    <ItemTemplate>
                        <%# Documentation.Models.ProblemArticle.GetIcon(Eval("sSolvedInVersion") as string, Eval("sPlannedToVersion") as string) %>&nbsp; <%# Documentation.Models.ProblemArticle.TransformTargetVersion(Eval("sPlannedToVersion").ToString(), true) %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <p>Critical issue definition: A problem that makes the product impossible to use, i.e.: a) the "crashing" of the entire system or an important part of it during normal use; b) the loss or corruption of data during normal use.</p>

        <h2>Medium issues</h2>
        <asp:GridView ID="KnownIssuesGridMedium" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Fix planned for release" SortExpression="sPlannedToVersion">
                    <ItemTemplate>
                        <%# Documentation.Models.ProblemArticle.GetIcon(Eval("sSolvedInVersion") as string, Eval("sPlannedToVersion") as string) %>&nbsp; <%# Documentation.Models.ProblemArticle.TransformTargetVersion(Eval("sPlannedToVersion").ToString(), true) %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <p>Definition of a medium issue: A problem limiting the use of the product, i.e.: (a) significant problems in use that are surmountable by an alternative problem-solving procedure; (b) a part of the product deviates significantly from the specification in the documentation.</p>

        <h2>Minor issues</h2>
        <asp:GridView ID="KnownIssuesGridMinor" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Fix planned for release" SortExpression="sPlannedToVersion">
                    <ItemTemplate>
                        <%# Documentation.Models.ProblemArticle.GetIcon(Eval("sSolvedInVersion") as string, Eval("sPlannedToVersion") as string) %>&nbsp; <%# Documentation.Models.ProblemArticle.TransformTargetVersion(Eval("sPlannedToVersion").ToString()) %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <p>Definition of minor issue: A problem that does not restrict operation but complicates the procedures for working with the product, i.e. a mismatch of controls or outputs with the behavior described in the documentation.</p>

        <h2>Older product issues</h2>
        <ul>
            <li><a href="https://doc.alvao.com/en/11.0/known-issues">ALVAO 11.0</a></li>
            <li><a href="https://doc-alvao-com.translate.goog/cs/10.4/troubleshooting/default.aspx?_x_tr_sl=cs&_x_tr_tl=en&_x_tr_hl=en">ALVAO 10.4</a></li>
            <li><a href="https://doc-alvao-com.translate.goog/support/doc/cs/alvao_10_3/troubleshooting/default.aspx?_x_tr_sl=cs&_x_tr_tl=en&_x_tr_hl=en">ALVAO 10.3</a></li>
            <li><a href="https://doc-alvao-com.translate.goog/support/doc/cs/alvao_10_2/troubleshooting/default.aspx?_x_tr_sl=cs&_x_tr_tl=en&_x_tr_hl=en">ALVAO 10.2</a></li>
            <li><a href="https://doc-alvao-com.translate.goog/support/doc/cs/alvao_10_1/troubleshooting/default.aspx?_x_tr_sl=cs&_x_tr_tl=en&_x_tr_hl=en">ALVAO 10.1</a><br />
            </li>
        </ul>

    </div>

    <%--KNOWN ISSUE DETAIL --%>
    <div id="knownIssuesIssue" runat="server">
        <asp:FormView ID="ArticleDetail" DataKeyNames="ArticleId" runat="server" ItemType="Documentation.Models.ProblemArticle" SelectMethod="GetArticle" RenderOuterTable="false">
            <ItemTemplate>
                <h1><%# Item.Title %></h1>


                <h2>This article is about product releases</h2>
                <p><%# Item.ForVersion %></p>

                <h2>Symptoms</h2>
                <p><%# Item.Symptoms %></p>

                <h2>Cause</h2>
                <p><%# Item.Cause %></p>

                <h2>Solution</h2>
                <p><%# Item.Solution %></p>

                <h2>Workaround</h2>
                <p><%# Item.Workaround %></p>

                <div class="<%#:string.IsNullOrWhiteSpace(Item.ReproductionSteps) ? "hide" : "" %>">
                    <h2>Steps to reproduce this behavior</h2>
                    <p><%# Item.ReproductionSteps %></p>
                </div>

                <div class="<%# !Item.Attachments.Any() ? "hide" : "" %>">
                    <h2>Attachments</h2>
                    <%# Item.GetAttachmentList() %>
                </div>

                <h2>Issue number</h2>
                <p>T<%# Item.ArticleId %>ALVAO</p>
            </ItemTemplate>
        </asp:FormView>
    </div>


</asp:Content>

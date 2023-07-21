<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>
<%@ Register Src="~/_Controls/ProblemListViewControl.ascx" TagName="ProblemListViewControl" TagPrefix="DocCtrl" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Released updates</h1>
    <h1>ALVAO 11.1</h1>

    <h2 class="plannedVersion"><span class="notranslate">FIX1 (version ?, released ?.?.2021)</span></h2>
    <p>New functionality and changes:</p>
    <ul>
        <li></li>
    </ul>
    <p>Problems fixed:</p>


    <DocCtrl:ProblemListViewControl ID="ProductControlFIX1" runat="server" VersionFilter="11.1.1000" />


    <%-- uncomment this component and set the version (VersionFilter) to list the removed problems. Note: each component must have a unique I in the page <DocCtrl:ProblemListViewControl ID="ProductControlFIX2" runat="server" VersionFilter="10.2.2092"/> --%>


    <h2 class="plannedVersion"><span class="notranslate">SP1 (version ?, release ?.?.2021)</span></h2>


</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .plannedVersion {
            color: #C0C0C0;
        }

            .plannedVersion a {
                color: #9B9B;
            }

            .plannedVersion h2 {
                color: #999999;
            }

            .plannedVersion h3 {
                color: #999999;
            }
    </style>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Relations</h1>
    <p>To keep track of the relations between the records of each ITIL process, we recommend using the following types of relations:</p>
    <img src="relations/itil.png" width="693" height="335" />
    <p>For "simple" ITIL, we recommend recording all relations as "related."</p>
    <p>If you want to implement ITIL more consistently, we recommend using the following types of relations:</p>
    <table>
        <thead>
            <tr>
                <th>ITIL</th>
                <th>Relation Type</th>
                <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Incident - similar Incident (parent - child)</td>
                <td>duplicated - duplicate</td>
                <td>
                    <p class="style2">
                        <span style="mso-bidi-font-family: calibri">The first incident is marked as "duplicated". All other incidents related to the same fault are duplicated.<o:p></o:p></span>
                    </p>
                </td>
            </tr>
            <tr>
                <td>Incident - Problem/Known Error</td>
                <td>related</td>
                <td>
                    <p class="style2">
                        <span style="mso-bidi-font-family: calibri">An incident may occur to an existing problem. A problem can arise from an existing incident. For this reason, it is not appropriate to use "preceding - following".</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td>Incident - Service Request&nbsp;</td>
                <td>preceding - following</td>
                <td>
                    <p class="style2">
                        <span style="mso-bidi-font-family: Calibri">Service Request is created and based on an incident (SR handles the incident).</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td>Incident - RFC (N:N) - RFC is triggered by an incident&nbsp;</td>
                <td>preceding - following&nbsp;</td>
                <td>
                    <p class="style2">
                        <span style="mso-bidi-font-family: calibri">RFC resolves an incident.</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td>RFC - Incident (caused by)</td>
                <td>preceding - following</td>
                <td>
                    <p class="style2">
                        <span style="mso-bidi-font-family: calibri">Incident caused by a poorly executed change.</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td>Problem - RFC</td>
                <td>preceding - following</td>
                <td>
                    <p class="style2">
                        <span style="mso-bidi-font-family: calibri">The problem is solved via an RFC.</span>
                    </p>
                </td>
            </tr>
        </tbody>
    </table>


</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 {
            border-collapse: collapse;
            font-size: 10.0pt;
            font-family: Calibri, sans-serif;
            border: 1.0pt solid #52A8FF;
        }
    </style>

</asp:Content>

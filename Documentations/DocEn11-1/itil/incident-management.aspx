﻿<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Incident Management</h1>
    <p>
        The purpose of Incident Management is to respond to unplanned situations where services are not being provided at the agreed levels (e.g. Exchange server downtime or reduced availability) and restore Normal Service Operation as quickly as possible. Emphasis is placed on minimising the impact of service failure on the business of the company (Business Impact).
    </p>
    <p>It follows from the above that incidents that cannot be resolved by 1st line support within internally agreed timeframes, e.g. using the Known Error Database and Knowledge Base, must be escalated to the technical teams without delay.</p>
    <p>The Incident Records workflow can be defined by the service whose level has been reduced below an agreed threshold by the incident. However, from a practical point of view, we recommend not to present many statuses for generality and to use only the New - Resolved - Closed request statuses. Differences in the typical procedures leading to the resolution of an incident in different services can be reflected in the instructions to the solver or even in the workflow itself. This is subject to customer needs analysis. </p>

    <h2>Default process pattern</h2>
    <p>This is the default process template, which can be further modified by the customer according to their needs.</p>
    <table>
        <thead>
            <th>Status</th>
            <th>Description</th>
            <th>Instructions for the solver</th>
        </thead>
        <tbody>
            <tr>
                <td>
                    <b>New</b></td>
                <td>Incident classification is in progress. </td>
                <td>Check that this is an Incident. If not, use the &quot;Move to another service&quot; command to move the request to the correct service.
                    <br />
                    Determine the priority of the solution.
                    <br />
                    Then use the &quot;Assign&quot; command to assign the request to a specific solver. </td>
            </tr>
            <tr>
                <td>
                    <b>Solution</b> </td>
                <td>Incident resolution is in progress. </td>
                <td>Restore normal service operations as quickly as possible.
                    <br />
                    Finally, close the incident with the command &quot;Close&quot;.
                    <br />
                    If it is a known problem, bind the Incident to it as &quot;related&quot;.
                </td>
            </tr>
            <tr>
                <td>
                    <b>Closed</b> </td>
                <td>The request has been closed. The request is closed. </td>
                <td></td>
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

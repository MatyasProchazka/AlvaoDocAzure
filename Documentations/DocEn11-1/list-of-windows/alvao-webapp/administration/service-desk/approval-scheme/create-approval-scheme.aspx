<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New approval scheme</h1>
  <p>Use this form to create a new <a href="../../../../../alvao-service-desk/implementation/services/processes/request-approval">approval schema</a>.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Name</strong> - enter the name of the approval scheme.</li>
  <li><strong>Description</strong> - enter a description of the approval scheme.</li>
  <li><strong>Automatically approve approver steps from previous steps</strong> - turn on if this is a multi-step scheme in which some steps may be approved by the same people, and you do not want an approver who has already approved a request in one step to have to approve the request again in subsequent steps. These subsequent steps will then be approved automatically.</li>
  </ul>

</asp:Content>

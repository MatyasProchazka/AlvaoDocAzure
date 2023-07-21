<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Approval steps</h1>
<p>Use this window to manage the steps of the <a href="../../../../../../alvao-service-desk/implementation/services/processes/request-approval">approval scheme you are editing</a>.</p>

<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong><ul>
  <li><strong>New Step</strong> - create a new <a href="approval-scheme-item">approval step</a>.</li>
  <li><strong>Edit</strong> - edit the selected step.</li>
  <li><strong>Delete</strong> - delete the selected step.</li>
  <li><strong>Move up</strong> - move the selected step up one row.</li>
  <li><strong>Down</strong> - move the selected step one row lower.</li>
  </ul>
  </li>
  <li><strong>Steps table</strong> - contains the steps of the schema.Approval starts with the first step. If the request is approved in the first step, it automatically moves to the next step, and so on. If the request is rejected in a step, the next step does not proceed and the entire schema is terminated with the result <em>rejected</em>. You can <a href="../../../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
</ul>

</asp:Content>

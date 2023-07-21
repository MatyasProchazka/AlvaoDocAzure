<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Edit</h1>
  <p>Use this form to edit one or more <a href="../../../../alvao-service-desk/requests">requests</a>.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Request Name</strong> - edit the request name if necessary.</li>
  <li><strong>Status</strong> - if applicable, change the status of the request, see <a href="../request">Request</a> - <em>Solution Progress</em> tab.</li>
  <li><strong>Internal Target</strong> - enable if you want to set an <a href="../../../../alvao-service-desk/requests/internal-target">internal target</a> in the request, and then enter the target name and term. When the internal target is completed, use the <em>Edit</em> command again and turn off the <em>Internal Target</em> option or change it to another internal target.<br />
 The name of the internal objective should correspond to the desired outcome of the solution at the time of the scheduled deadline. For example, if the request is being analyzed, the internal objective is "Analysis" with a specified completion date. The name of the internal objective does not always have to correspond to the name of the request status, e.g., within the <em>Solution</em> status, analysis, design, and implementation may be in progress.
  <li>For other items, see the <a href="../new-request">New Request</a> form. If you are editing multiple requests at once, you can only edit items that exist in all selected requests.</li>
  </ul>


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


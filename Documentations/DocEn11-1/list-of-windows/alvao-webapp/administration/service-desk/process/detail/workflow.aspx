<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Solution progress</h1>
  <p>This window is used to define the request statuses that each request will go through during its lifetime.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Commands Panel</strong><ul>
  <li><a href="status-request">New Status</a> - create a new request status.</li>
  <li><strong>Show diagram</strong> - switch the display mode to status diagram, see the window workspace.</li>
  <li><strong>Show List</strong> - switch the display mode to a list of statuses, see the window workspace.</li>
  </ul>
  </li>
  <li>
  <strong>List of statuses</strong> - the left side of the window contains an ordered list of statuses that the request progresses through during normal resolution. The right part contains a list of exceptional statuses that the request usually does not reach in an ideal process. You can <a href="status-request">edit</a> and possibly remove individual statuses using the buttons at the right edge of the list. You can drag & drop the statuses in and between the two lists.
  <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  Sort the statuses in the left list as they should follow each other.  </div>
  </li>
  <li><strong>status Diagram</strong> - a graphical representation of each request status and possible transitions between them. This display mode is useful for checking the allowed transitions between statuses and the overall form of the solution procedure (process). You can edit individual statuses by using the buttons displayed on the right above each status that you hover over.  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  Each time you switch to this view mode, the statuses are automatically positioned in the diagram. Manual changes to the status placement are not saved.  </div>
  </li>
  </ul>


 <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  Have the process status diagram drawn in MS Visio using the <a href="../../../../../../alvao-service-desk/implementation/services/processes/generating-process-diagram">GenerateProcessDiagram</a> utility.
  </div>
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  Note: You cannot delete end status approvals. </div>

  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The system statuses <em>New</em>, <em>Solved</em> and <em>Closed</em> cannot be deleted, modified or moved. The exceptions to this rule are the <em>New</em> status, which can be renamed, and the <em>Solved</em> status, which can be moved.  </div>


</asp:Content>

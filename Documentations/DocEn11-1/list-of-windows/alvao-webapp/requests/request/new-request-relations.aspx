<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New linked request</h1>
  <p>
  The form contains the same items as <a href="new-request">New request</a>.
  </p>
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  When opening a form, for example using a custom command, you can select the type of link and service that will be pre-populated on the form by entering the following parameters in the url: <ul>
  <li>
  <strong>relCompositeId</strong> - this number represents the link type to be pre-populated on the form. The parameter value is obtained by adding the two parts. The upper 16 bits are used for the id of the link type from the <a href="../../alvao-asset-management/implementation/customization/database#U_dbo.TicketRelationType">TicketRelationType</a> table, and the lower 16 bits contain the number 1 or 2, which determines which side of the request is in the link.  <br />
  <br />
  <table>
  <tr>
  <th>Link Type</th>
  <th>RelCompositedId</th>
  </tr>
  <tr>
  <td>Related to</td>
  <td>65637</td>
  </tr>
  <tr>
  <td>It is superior to</td>
  <td>131073</td>
  </tr>
  <tr>
  <td>Precedes</td>
  <td>196609</td>
  </tr>
  <tr>
  <td>Blocking</td>
  <td>262145</td>
  </tr>
  <tr>
  <td>Is duplicated</td>
  <td>327681</td>
  </tr>
  <tr>
  <td>It is subordinate to</td>
  <td>131074</td>
  </tr>
  <tr>
  <td>Follows</td>
  <td>196610</td>
  </tr>
  <tr>
  <td>Is blocked</td>
  <td>262146</td>
  </tr>
  <tr>
  <td>Duplicates</td>
  <td>327682</td>
  </tr>
  </table>
  <br />
  </li>
  <li>
  <strong>sectionId</strong> - the id of the service (<a href="../../../alvao-asset-management/implementation/customization/database#U_dbo.tHdSection">tHdSection</a>.iHdSectionId) to be pre-populated on the form.  </li>
  </ul>
  </div>

</asp:Content>


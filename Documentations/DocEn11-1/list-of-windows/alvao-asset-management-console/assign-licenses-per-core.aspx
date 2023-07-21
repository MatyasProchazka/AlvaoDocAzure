<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Assign licenses per-core</h1>
<p>
In this window, you can specify the number of kernel licenses you want to allocate to a particular machine.</p>
Options:<ul>.
  <li><strong>License Name</strong> - the name of the license to be assigned (cannot be changed)</li>
  <li><strong>Computer</strong> - the computer to which the license is assigned (cannot be changed)</li>
  <li><strong>Number of physical CPU cores (detected)</strong> </strong>- number of physical CPU cores detected for the specified computer (cannot be changed)</li>
  <li><strong>Number of licenses assigned</strong> - enter the number of licenses you want to assign to the given computer.</li>
  </ul>

</asp:Content>

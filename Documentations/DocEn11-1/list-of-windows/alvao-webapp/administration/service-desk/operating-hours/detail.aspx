<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Operating hours</h1>
 <p>This page, or panel, displays information about the selected <a href="../../../../../alvao-service-desk/implementation/services/operating-hours">operating hours</a>.
  You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>
  
  <p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>Delete</strong> - remove operating hours.</li>
  </ul>
  </li>
  <li>Block<ul>
  <li><strong>Name</strong> - <a href="detail/edit">general</a> information about operating hours</li>
  <li><a href="detail/working-hours">Operating hours</a> - regular intervals of operating hours</li>
  <li><a href="detail/exceptions-operating-hours">Exceptions for operating hours</a> - exceptions to regular operating hour intervals</li>
   </ul>
  </li>
	</ul>

</asp:Content>

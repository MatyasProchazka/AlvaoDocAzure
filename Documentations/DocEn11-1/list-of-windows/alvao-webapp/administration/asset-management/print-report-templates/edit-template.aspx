<%@ Page masterpagefile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Edit</h1>
  <p>Use this form to edit <a href="../print-report-templates">print report templates</a>.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Name</strong> - enter a name for the template.</li>
  <li><strong>Description</strong> - enter a description of the template if applicable.</li>
  <li><strong>Add Files</strong> - upload all files defining the template.  Usually these are three mandatory files with rep, htm and xsl extensions or one htm file, as well as css files and possibly images, e.g. in gif or png format.  <div class="note">
	  <div class="icon"></div>
	  <div class="title">Note:</div>
	  Templates of print report types other than <a href="../../../../../alvao-asset-management/implementation/customization/reports">REP</a> cannot be uploaded to the database. However, you can select them from a folder on disk in the AM Console when you use them.  </div>
  </li>
  </ul>

</asp:Content>

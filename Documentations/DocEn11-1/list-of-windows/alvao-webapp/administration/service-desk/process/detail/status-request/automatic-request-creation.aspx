<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Automatic request creation</h1>
  <p>In this window you can set rules for automatic creation of linked requests in the selected process status.</p>
  <p>Options:</p>

  <ul>
      <li><b>Command Panel</b>
            <ul>
                <li><a href="automatic-request-creation/add">New rule</a> - create a new rule</li>
                <li><a href="automatic-request-creation/edit">Edit</a> - edit the selected rule</li>
                <li>Delete - delete rule for selected request template</li>
            </ul>
        </li>  
        <li><b>Table</b> - the table contains rules for automatic creation of linked requests in the selected process status. The contents of the table can be <a href="../../../../../../../alvao-asset-management/working-with-tables">customized</a> as needed.</li>
  </ul>

</asp:Content>

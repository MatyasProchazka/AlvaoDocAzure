<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Knowledge base</h1>
  <p>On this page you can search and read <a href="../../alvao-service-desk/knowledge-base">knowledge</a>.</p>

  
  Options:<ul>
  <li>Page header<ul>
  <li><strong>Search in...</strong> - enter the word or text that is contained in the knowledge you are searching for and press <span class="key">Enter</span>. The found knowledge will be displayed in the knowledge list on the left side of the page. The title, annotation, text of the knowledge, and attachment names are searched.<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  You can use the <em>Advanced Search</em> command to limit the search to knowledge from a specific service. <em>&nbsp;</em>
</div>

  </li>
  </ul>
  </li>
  <li>Commands panel<ul>
  <li><strong>Advanced Search</strong> - display options for advanced knowledge search<ul>
  <li><strong>Service</strong> - enter at least part of the service name and then select the service from the drop-down menu. This will display only the knowledge from the selected service in the knowledge list on the left side of the page.</li>
  <li><strong>Including child services</strong> - enable this option if you want to display knowledge from the selected service and also from all its sub-services. </li>
  </ul>
  </li>
  <li><strong>Basic Search</strong> - hide options for advanced search</li>
  <li><a href="knowledge-base/manage">Manage</a> - create new and edit existing knowledge </li>
  <li><a href="knowledge-base/manage/new-knowledge">New Knowledge</a> - create new knowledge</li>
  <li><a href="knowledge-base/manage/edit-knowledge">Edit</a> - edit selected knowledge </li>
  <li><strong>Delete</strong> - delete the selected knowledge. This will stop the knowledge from being displayed to users, but it will remain stored in the database and you can restore it if necessary with the <em>Modify</em> command. </li>
  </ul>
  </li>
  <li>Knowledge list - the knowledge list is displayed on the left side of the page. Click on a knowledge in the list and the selected knowledge will be displayed on the right side of the page. </li>
  <li>Knowledge - the knowledge that is currently selected in the list on the left is displayed on the right side of the page.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


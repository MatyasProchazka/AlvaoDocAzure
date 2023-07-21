<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Media</h1>
<p>The table contains a library of installation <a href="../../../../alvao-asset-management/software-management/licenses#media">
media</a> and documentation associated with the registered hardware or software.</p>
<p>Options:</p>
	<ul>
 <li><a href="media/medium-edit">New</a> - add new media to the library.</li>
 <li><a href="media/medium-edit">Edit</a> - edit the selected media.</li>
 <li><strong>Delete</strong> - remove selected media from the library.</li>
 <li><strong>Lend/Return</strong> - lend the selected media to the user or, conversely, return the borrowed selected media to the library. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Borrowing history is stored in the User Log. This gives you an overview of which media is held by which user and whether it has been returned.  </div>
 </li>
	</ul>
</asp:Content>


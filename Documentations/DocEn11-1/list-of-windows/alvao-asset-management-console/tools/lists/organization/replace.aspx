<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Replace user companies</h1>
<p>In this Window, you can replace custom contact records for companies and organizations with certified records. The list of certified companies and organizations is stored in <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
Software Product Library</a> and is updated incrementally. The goal of replacing user companies is to avoid creating duplicate entries in the database.<br/>
The left table shows the user records and the right table shows the certified records.</p>
<p>Options:</p>
	<ul>
 <li><strong>Replace</strong> - replace the selected user record with the selected certified record.</li>
 <li><strong>Close</strong> - close the window (without saving changes).</li>
	</ul>
</asp:Content>

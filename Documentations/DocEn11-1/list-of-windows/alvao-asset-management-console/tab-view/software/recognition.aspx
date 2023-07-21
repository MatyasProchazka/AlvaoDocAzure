<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Send SW for identification - step 1 of 3</h1>
	<p>The recognition feature allows you to send unrecognized registry entries to our <a href="../../../../alvao-asset-management/software-management/custom-swlib">
	Software Product Library</a>. The recognized product will be added to the library.</p>
	<ul>
 <li><strong>Don't show this page next time</strong> - turn this on if you don't want to show this splash page in the future and want to show straight <a href="recognition/send-to-recognition-2">step 2</a>.</li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 It is also possible to enable the automatic sending of unrecognized records in the Collector settings in <strong> ALVAO WebApp – Administration - Asset Management - Servers - Edit Server - Properties</strong>
 - <a href="../../../alvao-webapp/administration/asset-management/servers/detail/edit"> Software Products Library</a> section.
	</div>
</asp:Content>

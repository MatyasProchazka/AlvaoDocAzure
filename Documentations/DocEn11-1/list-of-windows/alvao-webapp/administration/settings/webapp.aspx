<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>WebApp</h1>

<p>This page is used to configure the WebApp and its appearance.</p>

<p>Options:</p>
	<ul>
 <li><strong>WebApp (URL)</strong> - enter the root URL of the ALVAO WebApp.<br/>
 E.g. <span class="console">http://app.company.com/alvao</span>.

   <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  Applications use this root address when building links to the ALVAO WebApp. </div></li>

  <li><strong>Upper navigation panel</strong>
  <ul>
  <li><strong>Logo image</strong> - preview of the current log image <ul>
  <li><strong>Upload logo</strong> - select the logo image file on disk to display in the top navigation bar of the application.  The file must be in png, jpg, jpeg or bmp format. The maximum image resolution is 200x30px.   
  </li>
  </ul>
  </li>
  </ul>
  </li>

  <li><strong>Home page</strong> - setting the content of <a href="../../main">Main Page</a>
  <ul>
  <li><strong>Background</strong> - preview the current background image <ul>
  <li><strong>Change Background</strong> - select the image file on disk that you want to display in the background of the <i>main page</i>.
  The file must be in png, jpg, jpeg or bmp format. It is recommended to choose images up to 1MB in size, so that the image does not slow down the loading of the main page into the web browser.   The recommended image width to height ratio is 5:1. On the main page, depending on the size of the browser window, the largest possible central cut-out of the image is displayed.  </li>
  </ul>
  </li>
  <li><strong>Set Links</strong> - displays the <i>Administration - Service Desk - <a href="../service-desk/service">Services</a></i> page, where the service catalog in the <i>Links on the main page</i> folder
  create the services you want to display as links on the main page. </li>
  </ul>
  </li>
	
	</ul>
</asp:Content>

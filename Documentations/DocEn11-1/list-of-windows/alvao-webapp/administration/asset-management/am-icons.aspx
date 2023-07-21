<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Object icons</h1>
  <p>
  On this page you can manage object icons and also property icons (which are only displayed in the AM Console). While the <a href="../../../../alvao-asset-management/webApp">WebApp</a> uses vector icons in SVG format, the <a href="../../../../alvao-asset-management/console">AM Console</a> displays raster icons in BMP format. </p>
  <p>Options:</p>
  <ul>
  <li><b>Command Panel</b>
  <ul>
  <li><b>New Icon</b> - create a new icon. First, prepare an icon file in SVG vector format. You can use one of the freely available icons, e.g. from <a href="https://www.flaticon.com">https://www.flaticon.com</a>, or draw your own icon in a graphical editor, e.g. <a href="https://inkscape.org/">INKSCAPE</a>. Then use this command to upload the file to Alvao. A raster version of the icon is automatically generated from the vector icon.  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  If you want to use an icon other than the generated raster icon, select both SVG and BMP files when uploading. If you want to use only the raster icon, select only the BMP file. The WebApp will then display the default object icon. The raster icon must be 16x16 pixels and have a color depth of 24 bits. The white color (R=255, G=255, B=255) is considered transparent.  </div>
  </li>
  <li><b>Edit</b> - edit the selected icon.</li>
  <li><b>Remove</b> - remove selected icons. It is only possible to remove custom icons that are not used. System icons cannot be removed.</li>
  <li><b>Download</b> - save selected icons to a ZIP file. You can then edit the icon files in the graphical editor and use the <em>Edit</em> command to upload them back to the corresponding icons in Alvao, or upload them to another Alvao instance as new icons using the <em>New Icon</em> command.</li>
  </ul>
  </li>
  <li><b>Icon table</b> - contains all icons and their selected attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
  </ul>

  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  Icons may be stored in memory and therefore a change may not be immediately apparent. To update in <i>AM Console</i> you need to restart it.  </div>

</asp:Content>

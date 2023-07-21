<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Object icon</h1>
  <p>Use this form to create a new or edit an existing object icon.</p>
  <p>Options:</p>
  <ul><li><b>Name</b> - edit the name of the icon if necessary.</li>
  <li><b>SVG</b> - preview the vector icon in SVG format. This object icon will be displayed in the WebApp.</li>
  <li><b>Convert</b> - automatically generate a raster icon (BMP) from the uploaded vector icon (SVG). </li>
  <li><b>BMP</b> - preview a raster icon in BMP format. This icon will be displayed in the AM Console.</li>
  <li><b>Upload Icons</b> - change the vector or raster icon. Select one SVG file or one BMP file or both.</li>
  </ul>
  
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Select an icon</h1>
<p>This window allows you to select a service icon from a library of icons and also manage this library.</p>
<p>Options:</p>
	
<ul>
  <li><strong>Search</strong> - enter part of the icon name. Icons displayed below this line are immediately filtered as you type.</li>
  <li><strong>Icons</strong> - a table of icons in the library. Select the icon you want to use by double-clicking the mouse to close this window immediately. Alternatively, you can select an icon by clicking the mouse and confirming the selection with the OK button.<br />
  To <strong>remove</strong> an icon from the library, click on it with the mouse. A cross to remove the icon will appear in the upper right corner of the icon. System icons cannot be removed from the library.</li>
	<li><strong>Load from file</strong> - add new icons to the library by loading from files. Images must be in PNG format, recommended size is 64x64 pixels.</li>
  <li><strong>OK</strong> - confirms the selection and closes the window.</li>
  <li><strong>Cancel</strong> - deselects and closes the window.</li>
</ul>
	
</asp:Content>

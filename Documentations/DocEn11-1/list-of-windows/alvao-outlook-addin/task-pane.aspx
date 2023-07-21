<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>ALVAO Task Panel</h1>
	<ul>
 <li><img alt="Icon: Refresh" src="../../modules/alvao-outlook-addin/Refresh.png" />
 <strong>Refresh</strong> - refreshes the contents of the panel by reloading the request page related to the currently selected item in MS Outlook. This switches the panel to preview mode.<br/>
 </li>
 <li>
 <img alt="Icon: New item from request" src="../../modules/alvao-outlook-addin/NewItem.png" />
 <strong>New item from request</strong> - creates a new item of your choice (email message, event, meeting, task) that is related to the selected message for the request in MS Outlook.<br/>
 </li>
 <li><img alt="Icon: Open in separate window" src="../../modules/alvao-outlook-addin/NewWindow.png" />
 <strong>Open in new window</strong> - opens the page that is currently displayed in the taskbar in a separate web browser window. The page will open in the browser according to the current URL, so changes you have made while working with the page, such as form entries you have filled in, may not be transferred to the page.<br/>
 </li>
 <li><img alt="icon: search requests" src="../../modules/alvao-outlook-addin/FindIcon.png" />
 <strong>Search in requests</strong> - enter the number of the request you are looking for or part of its name in the input field and press this button. A table of found requests will be displayed in the taskbar.<br/>
 </li>
 <li><img alt="icon: Menu" src="../../modules/alvao-outlook-addin/menu.png" />
 <strong>Menu</strong> - opens the ALVAO WebApp main and user menus on the current ALVAO WebApp page.</li>
 <li><strong>Panel Area</strong> - the panel area displays a request from the ALVAO Service Desk related to the currently selected item in MS Outlook, i.e. a message (email), event, appointment or task. The item must contain the subject tag of an existing request (e.g. T123ALVAO).
 <ul>
 <li>If there is no request corresponding to the currently selected item, the dashboard displays a summary of the most recently viewed requests and the sender's most recent communication if their email address is entered in the <strong>Service Desk</strong>. <br />
 </li>
 </ul>
 By default, the panel is in <strong>preview mode</strong>, where its content is automatically updated according to the selected item in MS Outlook. If you start working with a request in the panel (e.g. start writing a note in its journal), the panel switches to <strong>edit mode</strong>,
 where the content is not updated when you select another item in MS Outlook. You can switch the panel back to preview mode by clicking <strong>Refresh</strong>.</li>
	</ul>
</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>


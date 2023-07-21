<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


  <h1>Connecting the reader to the computer</h1>
  <p>In order to copy files to the reader, you must first connect it to your computer.</p>
  <ol>
  <li>Make sure you have "Windows Mobile Device Center" (Microsoft Windows Mobile Device Center) installed in Windows.</li>
  <li>If it is not installed, <a href="https://www.google.com/search?q=%22Microsoft+Windows+Mobile+Device+Center%22+download">download it</a> and install it.</li>
  <li>Connect the reader to your computer using a USB cable.</li>
  <li>The "Windows Mobile Device Center" will appear and select "Connect without setting up a device."<br />
  Note: If you have Windows 10 OS on your computer and after connecting the reader with the cable, "Windows Mobile Device Center" will not appear:
 <ol>
  <li type="a">Disconnect the cable with the reader from the computer.</li>
  <li type="a">Launch a command prompt as administrator and the following commands in it:<br />
  <pre translate="no" style="margin-top: 5px; margin-bottom: 5px;">
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\RapiMgr /v SvcHostSplitDisable /t REG_DWORD /d 1 /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\WcesComm /v SvcHostSplitDisable /t REG_DWORD /d 1 /f</pre>
  <p style="margin-top: 5px; margin-bottom: 5px;">
  Note: after running the commands, the following information must be displayed: <i>Operation completed successfully.</i>
  </p>
  </li>
  <li type="a">Restart the computer.</li>
  <li type="a">After Windows boots up, reconnect the reader to the computer with the USB cable.</li>
  </ol>
  </li>
  </ol>
</asp:Content>

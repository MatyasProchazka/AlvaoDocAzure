<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Detection method</h1>
  <p>
  This tab allows you to select the <a href="../../../../alvao-asset-management/implementation/detection">detection method</a> and, if necessary, specify other settings for the selected method.  </p>
  <p>Options:</p>
  <ul>
  <li><strong>Detection method</strong> - select how you want to detect the computer from the menu. Detection methods and how to select a detection method are described <a href="../../../../alvao-asset-management/implementation/detection/detection-way">here</a>.</li>
  <li><strong>Agent Port Number</strong> - Enter the port number for TCP/IP data communication with the agent if you are using detection: <strong>Agent over TCP/IP</strong>.</li>
  

  </ul>
  <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  In administration, you set a global detection setting that will detect all computers by default.<br />
  In the Asset Management Console, you can set custom detection settings for specific computers and change the detection method there.  </div>


</asp:Content>

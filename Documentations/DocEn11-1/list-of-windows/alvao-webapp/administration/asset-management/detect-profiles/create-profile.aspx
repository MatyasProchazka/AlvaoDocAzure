<%@ Page masterpagefile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New detection profile</h1>
  <p>Use this form to create a new <a href="../../../../../alvao-asset-management/implementation/detection">detection profile</a>.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Profile Name</strong> - enter the name of the profile.</li>
  <li><strong>Default Profile</strong> - enable if the profile is to be taken as the default for newly added computers.</li>
  <li><strong>Period of automatic detection planning (days)</strong> - specify the number of days after which to automatically perform discovery. A value of 0 means that scheduling will be disabled and detections will not be performed repeatedly. </li>
  <li><strong>Use the same detection method for hardware and software detection</strong> - select if you want to detect hardware and software in the same way.  <ul>
  <li><strong>Detection method</strong> - select the <a href="../../../../../alvao-asset-management/implementation/detection/detection-way">detection method</a> you want to use to detect computers.</li>
  <li><strong>Agent Port Number</strong> - if you are using the <em>Agent over TCP/IP</em> detection method, enter the port number for TCP/IP data communication with the agent.</li>
  </ul>
  </li>
  <li><strong>Hardware</strong>
  <ul>
  <li><strong>Detect Hardware</strong> - enable if you want to detect the computer hardware. </li>
  <li><strong>Update objects in tree</strong> - turn on if you want to automatically update objects in the tree according to the detection result, see <a href="../../../../../alvao-asset-management/implementation/detection">Hardware detection</a>. </li>
  </ul>
  </li>
 <li><strong>Software</strong>
  <ul>
  <li><strong>Detect Software</strong> - turn on if you want to detect the computer software.   <ul>
  <li><strong>Normal (registry, services, and selected files)</strong> - select if you are happy to detect SW by normal detection.   <div class="note">
   <div class="icon"></div>
   <div class="title">Note:</div> <em>Normal</em> detection detects data from the Windows system registry and data about files that are launched from the Start menu or the Desktop. This option is faster and in practice is usually fully satisfactory.</div>
  </li>
  <li><strong>Complete (as Normal and also all files on local hard drives)</strong> - select if you want to detect SW with full detection.  <ul>
  <li><strong>Include Files</strong> - specify a mask for the folder and file names to be searched during detection. For example, if you only want to search for files with exe and dll extensions, enter the mask "*.exe;*.dll".
By default, files with exe and com extensions are searched. </li>
  <li><strong>Skip files</strong> - specify a mask for the folder and file names to be omitted in the detection. For example, to skip the <em>System Volume Information</em> folder, enter "*\System Volume Information\*".
If the masks for including and omitting files conflict with each other, the omit mask takes precedence. </li>
  </ul>
  <div class="caution">
   <div class="icon"></div>
   <div class="title">Caution:</div> <em>Complete</em> detection collects information from the Windows system registry and information about all executable files on the computers hard drives, which can be time consuming.</div>
  </li>
  <li><strong>Update Installation Registry</strong> - enable this option if you want the information about the detected software to be automatically written to <em>Installation Log</em>.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>
 
</asp:Content>

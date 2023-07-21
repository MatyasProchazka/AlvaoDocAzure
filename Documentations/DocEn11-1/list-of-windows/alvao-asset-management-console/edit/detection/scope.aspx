<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Scope</h1>
<p>Use this tab to specify the range in which computers will be detected.</p>
<p>Options:</p>
	<ul>
 <li><strong>Detect Hardware</strong> - turn on if you want to detect computer hardware.  <ul>
 <li><strong>Update objects in tree</strong> -
 turn on to automatically write detected hardware objects to the object tree.</li>
  </ul>
 </li>
 <li><strong>Detect Software</strong> - turn on if you want to detect computer software.  <ul>
 <li><strong>Normal (registry, services, and selected files)</strong> - select if you are happy to detect SW by normal detection. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 <em>Normal</em> detection detects data from the Windows system registry and data about files that are launched from the <strong>Start</strong> menu or the Desktop. This option is faster and in practice is usually fully satisfactory.</div></li>
 <li><strong>Full (registry and all files on local hard drives)</strong> - select if you want to detect SW with full detection. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 With <em>Full</em> detection, data from the Windows system registry and data about all executable files on the computers' hard drives are collected, which can be time consuming.</div></li>
 <li><strong>Include Files</strong> - Specify a mask for the names of folders and files to be searched during detection. <br />For example, if you only want to search for files with <em>
 exe</em> and <em>dll</em>, specify the mask <em>&quot;*.exe;*.dll&quot;</em>.
 <br />The default search is for files with the extensions <em>exe</em>, <em>
 com</em>, <em>dll</em>, <em>ocx</em>, <em>drv</em> and <em>scr</em>.
 </li>
 <li><strong>Omit Files</strong> - Specify a mask for the folder and file names to be omitted during detection. <br />For example, to skip the <em>System Volume Information</em> folder, enter <em>&quot;*\System Volume Information\*&quot;</em>. <br />
 If the include and omit file masks conflict with each other, the omit mask takes precedence. </li>
 <li><strong>Update installation log</strong> -
 Enable to automatically write the information about the found software to the Installation Log.</li>
  </ul>
 </li>
 <li><strong>Options:</strong>
  <ul>
 <li><strong>Use different detection methods</strong> -
 Check this box if you want to detect hardware and software in different ways.</li>
 <li><strong>Reset all computers</strong> -
 Check this box if you want to reset the detection settings for all computers in the inventory. All individual detection settings for computers will be removed and these settings will be used for new detections in the future.</li>
  </ul>
 </li>
 <li><strong>Automatic Detection Scheduling</strong>
  <ul>
 <li><strong>Hardware and Software Detection Period</strong>
 - Specify the number of days after which to automatically perform detection. A value of 0 means that scheduling will be disabled and detections will not be performed repeatedly.</li>
  </ul>
 </li>
 <li><strong>Agent Verification</strong>
  <ul>
 <li><strong>Agent Authentication Code</strong> - Enter the code used to authenticate autonomous Agents when communicating with the Web Service. You must enter the same code when installing Agents. This code can also be blank.</li>
  </ul>
 </li>
	</ul>

</asp:Content>

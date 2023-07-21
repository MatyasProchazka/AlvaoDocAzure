<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>

<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Import user portraits from SharePoint server</h1>

  <h2>Regular automatic import</h2>
  <p>Create a scheduled task on the server with a recurrence period of e.g. 1 time per day that runs the following command:</p>
<p><span class="console">
%ProgramFiles%\ALVAO\AlvaoService\utilities\ImportPortraitsSharepoint.exe /server &lt;sql_server&gt; /db &lt;database_alvao&gt; /portalUrl &lt;url&gt; /username &lt;login&gt; /password &lt;pass&gt;</span></p>

<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	This task can optionally be created when you install ALVAO Server using <a href="../installation">ALVAO Server Setup</a>.
</div>

<h2>One-time import</h2>

<p>For a one-time import of portraits, run a scheduled task created on the server or copy the <em>ImportPortraitsSharepoint</em> application from the application server to your computer and 
	run it from the command line. The application is installed together with the ALVAO Service in the "%ProgramFiles%\ALVAO\AlvaoService\utilities" directory.
</p>

<h2>Utility ImportPortraitsSharepoint</h2>

  <p>The ImportPortraitsSharepoint utility loads user portraits from SharePoint 2010, 2013 or SharePoint Online (Office 365) into Alvao.</p>
  <p>The utility is part of the ALVAO Service installation and is installed in the same folder, usually in &quot;%ProgramFiles%\ALVAO\AlvaoService\utilities&quot;.</p>

<h3>Command line parameters</h3>

<table>
	<thead>
 <tr>
  <th>Parameter</th>
  <th>Description</th>
  <th>Mandatory</th>
  <th>Example</th>
 </tr>
	</thead>
	<tbody>
 <tr>
  <td>/conn &lt;string&gt;<br />/server &lt;server&gt;<br />/db &lt;db&gt;</td>
  <td>Setting the DB connection.</td>
  <td>Yes</td>
  <td>/conn &quot;Integrated Security=True;Initial Catalog=ALVAO;Data Source=.\SQLEXPRESS;TrustServerCertificate=True&quot; /server .\SQLEXPRESS /db ALVAO</td>
 </tr>
 <tr>
  <td>/portalUrl &lt;url&gt;</td>
  <td>SharePoint address.</td>
  <td>Yes</td>
  <td>/portalUrl https://firma.sharepoint.com</td>
 </tr>
 <tr>
  <td>/office365</td>
  <td>Flag that this is Office 365.</td>
  <td>No</td>
  <td>/office365</td>
 </tr>
 <tr>
  <td>/username &lt;login&gt;</td>
  <td>User name for logging into SharePoint.</td>
  <td>No</td>
  <td>/username jan.rychly@firma.cz</td>
 </tr>
 <tr>
  <td>/password &lt;pass&gt;</td>
  <td>Password to log into SharePoint.</td>
  <td>No</td>
  <td>/password password</td>
 </tr>
 <tr>
  <td>/wait</td>
  <td>Wait for a keystroke at the end of the import.</td>
  <td>No</td>
  <td>/wait</td>
 </tr>
 <tr>
  <td>/progress</td>
  <td>Display import progress.</td>
  <td>No</td>
  <td>/progress</td>
 </tr>
	</tbody>
</table>

<p>If no username is specified for SharePoint login, the current account is used (note: not supported in Office 365, or if SharePoint has forms authentication). If the SharePoint address contains "sharepoint.com" or "onmicrosoft.com", the office365 option is automatically enabled.

<h3>User pairing</h3>

<p>To convert users from SharePoint to Alvao users, use:<ul>
	<li>E-mail - SharePoint attribute Email.</li>
	<li>User Name - SharePoint attribute Name (standard domain comparison).</li>
	<li>Name - SharePoint attribute Title.</li>
</ul></p>


</asp:Content>

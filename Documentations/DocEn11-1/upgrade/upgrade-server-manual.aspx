<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	<h1>ALVAO Server - manual upgrade</h1>
	<p>This chapter describes the manual upgrade procedure for Alvao server applications used in non-typical installations and when upgrading from ALVAO 7.1 and earlier. For upgrading a typical ALVAO Server installation, we recommend using <strong>ALVAO Server Setup</strong>, see the standard <a href="../upgrade">Upgrade from previous versions</a> procedure.</p>
	
	<h2>Upgrade database</h2>

<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:<br />
	</div>
	Before you start upgrading the database, back up the database and the existing installation (following the <a href="../upgrade">Upgrade from previous versions</a> procedure).
</div>


<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	The Alvao application database can only be upgraded by users with <em>
	sysadmin</em> or <em>db_owner</em>.</div>


	<ol>
 <li>From the <a href="https://www.alvao.com/download/">ALVAO downloads</a> page, download the <strong>DatabaseDeploy.zip</strong> file.</li>
 <li>Extract the ZIP package to any folder on the disk.</li>
 <li>Check that you have permissions on the target SQL Server to change the database schema.</li>
 <li>Use the <a href="../alvao-asset-management/implementation/installation/database-deploy">DatabaseDeploy</a> utility to upgrade the database to the new version.</li>
	</ol>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 When upgrading the database, the current activation key is verified over the Internet.</div>


	<h2>Upgrade server applications</h2>
	<ol>
	<li>Install server application MSI packages for the new product version on the server. For a typical installation, these are the following packages.
		<ul>
			<li>AlvaoWebApp.msi</li>
			<li>AlvaoRestApi.msi</li>
			<li>AlvaoService.msi</li>
			<li>AlvaoCustomAppsWebService.msi</li>
			<li>ALVAO Asset Management
				<ul>
					<li>AlvaoAssetWebService.msi</li>
					<li>Deprecated: AlvaoAssetCollector.msi - after upgrading, re-set the account under which the service runs to some account with Domain Admins permissions.</li>
				</ul>
			</li>
		</ul>
	</li>
  <li>Check that all Alvao server services are running and start them if necessary.</li>
  <li>Continue with the procedure <a href="../upgrade">Upgrade from previous versions</a>
  after the ALVAO Server chapter.</li>
 </ol>
	<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	If you install <strong>Asset Management</strong> and <strong>
	Service Desk</strong>, run the <strong>Alvao WebApp</strong> installation
	only once.</div>

 
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	<h1>Server ALVAO - ruční aktualizace</h1>
	<p>Tato kapitola popisuje postup ručního upgradu aplikací serveru Alvao používaných v netypických instalacích a při upgradu z verze ALVAO 7.1 a starší. Pro upgrade typické instalace serveru ALVAO doporučujeme použít nástroj <strong>ALVAO Server Setup</strong>, viz standardní postup <a href="../upgrade">Upgrade z předchozích verzí</a>.</p>
	
	<h2>Upgrade databáze</h2>

<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:<br />
	</div>
	Před zahájením upgradu databáze proveďte zálohu databáze a stávající instalace (podle postupu <a href="../upgrade">Upgrade z předchozích verzí</a> )</div>


<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Databázi aplikace Alvao mohou upgradovat pouze uživatelé s oprávněním <em>sysadmin</em> nebo <em>db_owner</em>.</div>


	<ol>
 <li>Ze stránky <a href="https://www.alvao.com/download/">ALVAO ke stažení</a> stáhněte soubor <strong>DatabaseDeploy.zip</strong>.</li>
 <li>Rozbalte balíček ZIP do libovolné složky na disku.</li>
 <li>Zkontrolujte, zda máte na cílovém serveru SQL Server oprávnění ke změně schématu databáze.</li>
 <li>Pomocí nástroje <a href="../alvao-asset-management/implementation/installation/database-deploy">DatabaseDeploy</a> proveďte upgrade databáze na novou verzi.</li>
	</ol>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Při upgradu databáze se přes internet ověřuje aktuální aktivační klíč.</div>


	<h2>Upgrade serverových aplikací</h2>
	<ol>
	<li>Nainstalujte na server balíčky MSI serverových aplikací pro novou verzi produktu. Pro typickou instalaci se jedná o následující balíčky<ul>
			<li>AlvaoWebApp.msi</li>
			<li>AlvaoRestApi.msi</li>
			<li>AlvaoService.msi</li>
			<li>AlvaoCustomAppsWebService.msi</li>
			<li>Asset Management ALVAO<ul>
					<li>AlvaoAssetWebService.msi</li>
					<li>Vyřazeno: AlvaoAssetCollector.msi - po aktualizaci přenastavte účet, pod kterým služba běží, na nějaký účet s oprávněním Domain Admins.</li>
				</ul>
			</li>
		</ul>
	</li>
  <li>Zkontrolujte, zda jsou spuštěny všechny služby serveru Alvao, a v případě potřeby je spusťte.</li>
  <li>Pokračujte postupem <a href="../upgrade">Upgrade z předchozích verzí</a>podle kapitoly Server ALVAO.</li>
 </ol>
	<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:</div>
	Pokud instalujete <strong>Asset Management</strong> a <strong>Service Desk</strong>, spusťte instalaci <strong>aplikace Alvao WebApp</strong> pouze jednou.</div>

 
</asp:Content>

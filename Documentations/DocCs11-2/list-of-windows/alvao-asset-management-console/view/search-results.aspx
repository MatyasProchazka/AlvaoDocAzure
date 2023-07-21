<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nalezené předměty</h1>
	<p>V tomto okně najdete objekty nalezené pomocí <em>Úpravy - <a href="../edit/find">Najít</a></em>.</p>
	<p>Možnosti:</p>
	<ul>
		<li>Hlavní nabídka: 
			<ul>
			<li><a href="action">Akce</a></li>
			<li><a href="../tab-view/properties/table-options">Tabulka</a></li>
			</ul>
		</li>
		<li><strong>Object Table</strong> - tabulka nalezených objektů. <a href="../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
	</ul>
	<p> Možnosti místní nabídky v seznamu objektů:</p> 
		<ul>
			<li>Pokud je v seznamu objektů vybrán objekt typu <strong>Počítač</strong>, jsou k dispozici následující možnosti<ul>
					<li><strong>Detekovat</strong> - <a href="../edit/detection">detekce</a> vybraného počítače (lze detekovat pomocí uloženého nastavení počítače nebo nastavení jednorázově upravit).</li>
					<li><strong>Nastavení detekce</strong> - upraví <a href="../edit/detection/detection-setup">nastavení detekce</a> vybraného počítače.</li>
					<li><strong>Hardware</strong> - zobrazení <a href="../tab-view/detection/detail/hardware">podrobností o</a> detekci hardware vybraného počítače.</li>
					<li><strong>Software</strong><ul>
							<li><strong>Registr instalace</strong> - zobrazení <a href="../software/installation-registry">registru instalace</a> pro daný počítač.</li>
							<li><strong>Evidence licencí</strong> - zobrazení <a href="../software/license-registry">registru licencí</a> pro daný počítač.</li>
							<li><strong>Podrobnosti</strong> - zobrazení <a href="../tab-view/detection/detail/software">podrobností o</a> detekci softwaru pro vybraný počítač.</li>
						</ul>
					</li>
					<li><strong>Změnit profil softwaru</strong> - <a href="../edit/object/software-profile">nastavení</a> profilu softwaru.</li>
				</ul></li>
			<li><strong>Nástroje správce</strong> - příkazy pro <a href="../admin-tools">správu</a> objektu dostupné pouze správci.</li>
			<li><strong>Ping</strong> - zjištění, zda počítač na dané IP adrese odpovídá.</li>
			<li><strong>Vybrat ve stromu</strong> - výběr konkrétního objektu ve stromu objektů.</li>
			<li><strong>Označit ve stromu</strong> - označení vybraného objektu ve stromu objektů.</li>
			<li><strong>Přesunout</strong> - <a href="../object/choose-object"> přesun</a> vybraného objektu.</li>
			<li><strong>Nový požadavek</strong> - vytvoření <a href="../../alvao-webapp/requests/new-request">nového požadavku</a> v ALVAO Service Desk týkajícího se vybraného objektu. </li>
			<li><strong>Přidat do požadavku</strong> - přidání vybraných objektů do položky <a href="../../alvao-webapp/requests/table-of-requests">Objekty</a> existujícího požadavku v <a href="../../../alvao-service-desk">ALVAO Service Desk</a>.</li>
			<li><strong>Související požadavky</strong> - zobrazení požadavků v aplikaci <a href="../../../alvao-service-desk">ALVAO Service Desk</a>, které souvisejí s vybraným objektem.</li>
			<li><strong>Tabulka</strong> - <a href="../tab-view/properties/table-options">možnosti</a> práce s tabulkou.</li>
			<li><strong>Najít</strong> - vyhledání zadaného textu.</li>
			<li><strong>Tisk</strong> - zobrazení informací o vybraném objektu v náhledu tisku. Z nabízených <a href="../../alvao-webapp/administration/asset-management/print-report-templates">šablon</a> vyberte tu, která vám nejvíce vyhovuje. U některých budete muset <a href="../file/query-parameters">Zadat parametry dotazu</a>.<br/>Pokud vyberete sestavu pro Předávací <strong>protokol</strong>, otevře se příslušné okno pro vyplnění potřebných informací o předání<ul>
							<li><a href="../../alvao-webapp/objects/object/print">Interní předávací protokol</a></li>
							<li><a href="../../alvao-webapp/objects/object/print">Externí předávací protokol</a></li>
						</ul> 

			</li>
			<li><strong>Smazat</strong> - vymazání vybraného objektu.</li>
			<li><strong>Přidat odkaz na dokument</strong> - přidá <a href="../tools/lists/documents">odkaz na dokument</a> k vybranému objektu.</li>
			<li><strong>Upravit</strong> - <a href="../edit/object">upraví</a> vybraný objekt.</li>
  
 </ul>
</asp:Content>

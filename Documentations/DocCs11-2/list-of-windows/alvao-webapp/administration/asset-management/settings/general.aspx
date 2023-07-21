<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
<p>Tato stránka obsahuje obecná nastavení pro <a href="../../../../../alvao-asset-management">správu majetku ALVAO</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Použít oprávnění ve stromu objektů</strong> - povolte, pokud chcete, aby se přístup ke stromu objektů řídil právy explicitně <a href="../../users/detail/security-object">nastavenými pro každého uživatele</a>. Ve výchozím nastavení je tato možnost zakázána a oprávnění uživatelů k objektům ve stromu se řídí jejich <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">rolemi</a><div class="caution">
  <div class="icon"></div>
  <div class="title">Upozornění:</div>
 Některé <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">role udělují práva</a> ke čtení nebo manipulaci s objekty nezávisle na právech ve stromu objektů. Například správci Asset Management (Asset Management) mají všechna práva pro práci s objekty a tuto roli nelze odebrat. </div>

 </li>
 <li><strong>Vytvářet soubory dokumentů</strong> - povolte, pokud chcete při vytváření interních předávacích protokolů automaticky vytvářet dokumenty PDF.</li>
 <li><strong>Volba &quot;Vytvořit nový dokument&quot; v předávacím protokolu bude ve výchozím nastavení zapnuta</strong> - povolte, pokud chcete mít při vytváření interního předávacího protokolu v dialogu <a href="../../../objects/object/print">Interního před</a> ávacího protokolu zapnutou volbu <strong>Vytvořit nový dokument</strong>.</li>
 <li><strong>Upozornění na nainstalované produkty se stavem &quot;Nezařazeno&quot;</strong> - zapněte, pokud chcete kontrolovat životní cyklus softwarových produktů, viz <a href="../../../../../alvao-asset-management/software-management/product-state">stav produktu</a>. Instalace sw produktů, které nebyly výslovně schváleny, se v AM Console zobrazí zvýrazněné.</li>
 <li><strong>Přílohy dokumentů k uložení</strong> - vyberte, kam se mají interně ukládat vygenerované předávací protokoly. <ul>
 <li><strong>Do databáze</strong> - protokoly budou uloženy v databázi Alvao.</li>
 <li><strong>Do sdílené složky (nedoporučuje se</strong>) - protokoly budou uloženy do sdílené složky na disku. Zadejte cestu ke složce.  Lze použít i síťové cesty (např. <span class="console">\\server\doc</span>) </li>
  </ul>
 </li>
 <li><strong>Výchozí druh objektu pro počítače </strong>- <a href="../../../../../alvao-asset-management/implementation/node-class">druh objektu</a> typu počítač. Tento typ bude přednastaven (výchozí volba) při ručním vytváření nových počítačů a při jejich importu. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br />
 Aby bylo možné vybrat druh objektu počítače, musí pro něj existovat šablona. </div></li>
  <li><strong>Uvádět název domény v názvech počítačů (FQDN</strong> ) - povolte, pokud chcete registrovat počítače z více domén. Název domény pak bude uveden i v názvech počítačů ve stromu objektů. Tato možnost řídí vytváření nových počítačů ve stromu <a href="../../../../alvao-asset-management-console/object/retrieve-objects-AD">načítáním z AD</a>, <a href="../servers/detail/scan-network">skenováním sítě</a>a <a href="../../../../../alvao-asset-management/implementation/detection/detection-way">detekcí autonomním agentem</a><div class="note"><div class="icon"></div><div class="title">Poznámka:</div><br />
   Po změně této volby se při příštím načtení z AD automaticky přejmenují dříve načtené počítače ve stromu. Při prohledávání sítě ve stromu se vytvoří nové počítače.   </div>
  </li>
	</ul>


</asp:Content>

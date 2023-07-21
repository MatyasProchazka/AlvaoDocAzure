<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení instalace - Asset Management</h1>
	<ul>
 <li><strong>Collector</strong><ul>
 <li><strong>Spustit pod účtem</strong> - pokud chcete používat <a href="../../../alvao-asset-management/implementation/detection">detekci bez agenta</a> HW/SW, zadejte přihlašovací údaje účtu, pod kterým má být služba AM Collector spuštěna. Zadaný účet musí mít na detekovaných koncových stanicích roli <em>Administrators</em> <ul>
 <li><strong>Uživatelské jméno (domain\login)</strong></li>
 <li><strong>Heslo</strong></li>
 </ul>
 </li>
 <li><strong>Místní systémový účet</strong> - pokud nebudete používat <a href="../../../alvao-asset-management/implementation/detection">detekci bez agenta</a>, můžete nechat službu běžet pod místním systémovým účtem.</li>
  </ul>
 </li>
 <li><strong>Webová služba správy aktiv</strong><ul>
 <li><strong>URL</strong> - v případě potřeby upravte adresu služby. Například: http: <span class="console">//app.company.com/AssetWebService/AssetWebService.asmx.</span></li>
 <li><strong>Další nastavení</strong><ul>
 <li><strong>Virtual Folder Name (Asset Management WebService</strong> ) - možnost nastavení názvu virtuální složky pro službu Asset Management WebService. Výchozí název složky je <em>AssetWebService</em></li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>
</asp:Content>

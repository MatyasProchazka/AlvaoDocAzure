<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Připojení MS SCCM</h1>
<p>Tato stránka slouží k nastavení detekce hardware a software pomocí metody <a href="../../../../../alvao-asset-management/implementation/detection/detection-way">MS SCCM</a>. Tuto stránku lze zobrazit pouze po aktivaci modulu <a href="../../../../../modules/alvao-microsoft-intune-connector">ALVAO Microsoft Intune Connector</a>.</p>
<p>Funkce:</p>
	<ul>
 <li>
 <strong>Příkazový panel</strong><ul>
 <li><strong>Nové připojení</strong> - vytvoření <a href="ms-sccm-connections/create-connection">nového připojení</a></li>
 <li><strong>Upravit</strong> - úprava vybraného připojení</li>
 <li><strong>Odstranit</strong> - odstranění vybraných připojení</li>
  </ul>
 </li>
 <li><strong>Tabulka připojení</strong> - obsahuje všechna připojení. Tabulku si přizpůsobte <a href="../../../../../alvao-asset-management/working-with-tables">podle potřeby</a>.</li>
 
	</ul>

</asp:Content>

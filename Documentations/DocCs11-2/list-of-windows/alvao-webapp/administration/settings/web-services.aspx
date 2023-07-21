<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Webové služby</h1>

<p>Možnosti:</p>
	<ul>
		<li>(<strong>URL)</strong> - zadejte URL webové služby AM.  Je třeba zadat adresu souboru assetwebservice.asmx. Například: https: <em>//alvao.contoso.com/AssetWebService/AssetWebService.asmx.</em> Tato možnost je k dispozici pouze v případě, že je aktivován produkt ALVAO Asset Management.</li>
		<li><strong>Custom Apps WebService (URL</strong> ) - zadejte adresu URL webové služby CA. Musíte zadat adresu (bez .asmx) souboru customappswebservice.asmx. Například: http: <em>//alvao.contoso.com/AlvaoCustomAppsWebService</em>. 
			Tato možnost je k dispozici pouze v případě, že je aktivován alespoň jeden z modulů Asset Management/Service Desk Custom Apps</li>
		<li><strong>REST API (URL</strong> ) - zadejte adresu URL rozhraní ALVAO REST API, například <em>https://alvao.contoso.com/AlvaoRestApi</em>.</li>
	</ul>

    </asp:Content>

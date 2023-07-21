<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení</h1>
	<ul>
 <li><strong>Asset Management WebService</strong> - zadejte adresu (URL) služby AssetWebService, která je obvykle ve formátu: https://server/assetwebservice/assetwebservice.asmx.</li>
 <li><strong>Autentizační kód</strong> - zadejte autentizační kód pro komunikaci agenta se službou ALVAO Asset Management WebService.</li>
 <li><strong>Komunikovat pomocí připojení TCP/IP (legacy</strong>) - tuto možnost vyberte pouze v případě, že chcete používat Agenta v režimu, který je kompatibilní s verzí ALVAO 7.1 a staršími verzemi.<ul>
 <li><strong>Použít výchozí port TCP (760</strong> ) - Agent bude při komunikaci s aplikací AM Collector používat výchozí port.</li>
 <li><strong>Použít vlastní port TCP -</strong> zadejte číslo portu, pokud nechcete použít výchozí port.</li>
 </ul>
 </li>
	</ul>

<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>Tato nastavení jsou uložena v registru, ve <em>větvi HKEY_LOCAL_MACHINE\Software\ALC\ ALVAO Asset Management\Agent</em>, klíč &quot;WSUrl&quot;, &quot;AuthenticationCode&quot;, &quot;UseTCPConnection&quot;</div>

</asp:Content>

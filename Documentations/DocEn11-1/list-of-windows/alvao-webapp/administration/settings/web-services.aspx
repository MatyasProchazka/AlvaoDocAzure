<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Web services</h1>

    <p>Options:</p>
    <ul>
        <li><strong translate="no">Asset Management WebService (URL)</strong> - enter the URL of the <span translate="no">AM WebService</span>.  You must specify the address of the assetwebservice.asmx file. For example: <em translate="no">https://alvao.contoso.com/AssetWebService/AssetWebService.asmx</em>.
			This option is only available if the <span translate="no">ALVAO Asset Management</span> product is activated.</li>
        <li><strong translate="no">Custom Apps WebService (URL)</strong> - enter the URL of the <span translate="no">CA WebService</span>. You must specify the address (without .asmx) of the customappswebservice.asmx file. For example: <em translate="no">http://alvao.contoso.com/AlvaoCustomAppsWebService</em>. 
			This option is only available if at least one of <span translate="no">Asset Management/Service Desk Custom Apps</span> module is activated.
        </li>
        <li><strong translate="no">REST API (URL)</strong> - enter the URL of the ALVAO REST API, e.g., <em>https://alvao.contoso.com/AlvaoRestApi</em>.</li>
    </ul>

</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nové připojení</h1>
<p>Tento formulář slouží k vytvoření nového připojení k <a href="../../../../../../modules/alvao-microsoft-endpoint-manager-connector">MS SCCM</a>.</p>
<p>Funkce:</p>
	<ul>
 <li>
 <strong>Typ připojení</strong> - Vyberte typ připojení.  <ul>
 <li>
 <strong>Služba správy</strong> - Vyberte, zda chcete, aby Collector načítal data prostřednictvím služby správy. <ul>
 <li><strong>Adresa URL</strong> - Zadejte adresu URL služby Administration Service. Například <span class="console">https://cmg.cloudapp.net/CCM_Proxy_ServerAuth/12345678987654321/AdminService/</span>.</li>
 <li><strong>Uživatelské jméno</strong> - zadejte přihlašovací jméno uživatele, který se bude připojovat ke službě Administration Service.</li>
 <li><strong>Heslo</strong> - zadejte heslo uživatele.</li>
 <li><strong>ID aplikace (klienta)</strong> - zadejte identifikátor GUID nativní klientské aplikace registrované v Azure pro připojení prostřednictvím služby Cloud Management Gateway.</li>
 <li><strong>Koncový bod tokenu OAuth 2.0 (v2</strong> ) - pro připojení prostřednictvím brány Cloud Management Gateway zadejte adresu URL přístupového bodu nativní klientské aplikace pro získání autorizačního tokenu.</li>
 <li><strong>Identifikátor URL pro ID aplikace</strong> - pro připojení prostřednictvím brány Cloud Management Gateway zadejte adresu URL webové aplikace registrované v Azure.</li>
 </ul>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Služba správy je v systému SCCM k dispozici až od verze 1810.</div>
 </li>
 <li>
 <strong>Databáze</strong> - vyberte, zda chcete, aby Collector načítal data přímým připojením k databázi SCCM SQL. <ul>
 <li><strong>Připojovací řetězec</strong> - zadejte připojovací řetězec k databázi MS SCCM.<br />
 Například <span class="console">Zdroj dat=localhost;Počáteční katalog=CM-SITE;Integrované zabezpečení=SSPI;Poskytovatel=sqloledb</span></li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>


</asp:Content>

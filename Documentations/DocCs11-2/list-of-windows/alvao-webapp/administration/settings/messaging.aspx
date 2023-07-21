<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Odesílání zpráv</h1>
<p>Tato stránka slouží k nastavení základního zasílání zpráv v systému Alvao.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>SMTP Server</strong><ul>
 <li><strong>Adresa</strong> - zadejte adresu nebo název serveru SMTP v síti.</li>
 <li><strong>Port</strong> - zadejte číslo portu serveru SMTP. Pro zabezpečené připojení (STARTTLS) je to obvykle 587, pro nezabezpečené připojení je to 25.</li>
 <li><strong>Ověřování</strong> - z nabídky vyberte metodu ověřování.<ul>
  <li><strong>Uživatelské jméno a heslo</strong> - do následujících polí zadejte jméno a heslo uživatele, který je oprávněn odesílat zprávy ze serveru SMTP. <div class="caution">
 <div class="icon"></div>
 <div class="title">Pozor:</div>
   Uživatelské jméno a heslo jsou uloženy v databázi Alvao v nezašifrované podobě.</div>

  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
   Pokud jsou uživatelské jméno a heslo vyplněny, musí mít tento uživatel oprávnění k odesílání (SendAs) pro e-mailové adresy všech služeb.</div>
    </li>
  <li><strong>Integrované ověřování (nedoporučuje se</strong> ) - tuto možnost vyberte, pokud je server SMTP schopen integrovaně ověřovat uživatele. Uživatelský účet, na kterém je spuštěna služba Alvao Service, musí mít oprávnění k odesílání zpráv z tohoto serveru SMTP.</li>
  </ul>
  </li>
  <li><strong>Uživatelské jméno</strong> - zadejte uživatelské jméno uživatele, který je oprávněn odesílat zprávy z uvedeného serveru SMTP.</li>
  <li><strong>Heslo</strong> - zadejte heslo uživatele.</li>
 <li><strong>SSL</strong> - povolte, pokud se chcete k serveru SMTP připojit bezpečně (šifrovaně).</li>
  </ul>
 </li>
 <li><strong>Odesílatel zpráv</strong><ul>
 <li><strong>Adresa</strong> - zadejte e-mailovou adresu pro odesílání obecných zpráv z Alvao, například <em>Contoso Alvao<a href="mailto:alvao@contoso.com">&lt;alvao@contoso.com&gt;.</a></em> Tato adresa slouží k zasílání <a href="../../../../alvao-service-desk/news">aktuálních zpráv</a>, <a href="../../../../alvao-asset-management/implementation/periodic-alerts">pravidelných upozornění</a>, <a href="settings-check">upozornění na problémy v nastavení systému</a> apod. Zprávy spojené s <a href="../../../../alvao-service-desk/requests">požadavky</a> jsou odesílány z e-mailových adres služeb těchto požadavků. <p>Doporučujeme zadat e-mailovou adresu existující služby, která se používá pro <a href="../service-desk/service/loading-messages">příjem zpráv do Service Desku</a>. V opačném případě Alvao odpovědi ze schránky nenačte. V takovém případě doporučujeme zadat e-mailovou adresu bez schránky (např. <em>Contoso DontReply &lt;do-not-reply@contoso.com&gt;</em>) nebo adresu, na které lze zajistit vyzvedávání zpráv jiným způsobem. Postup nastavení e-mailové adresy bez schránky naleznete v části <a href="https://learn.microsoft.com/en-us/Exchange/mail-flow-best-practices/how-to-set-up-a-multifunction-device-or-application-to-send-email-using-microsoft-365-or-office-365#option-3-configure-a-connector-to-send-mail-using-microsoft-365-or-office-365-smtp-relay">Konfigurace konektoru pro odesílání pošty pomocí Microsoft 365 nebo Office 365 SMTP relay</a>.</p>

<p> Pokud je v systému Microsoft 365 použita neexistující e-mailová adresa a uživatelské jméno a heslo jsou zadány správně, bude jako odesílatel použita adresa poštovní schránky přidružené k danému uživatelskému jménu.</p>
      </li>
  </ul>
 </li>
	</ul>
</asp:Content>

<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení doplňku ALVAO</h1>
	<ul>
 <li><strong>Připojení</strong><ul>
 <li><strong>Název domény Alvao (nebo REST API url</strong>) - zadejte název vaší domény, např. <em>contoso.onalvao.com</em>.<br />
		Pokud má vaše aplikace Alvao REST API nestandardní adresu nebo používáte protokol HTTP místo HTTPS, zadejte celou adresu REST API, např. <em>http://app.company.com/RestApi</em>.</li>

 <li><strong>Ověřování</strong> - vyberte metodu ověřování uživatele: <ul>
  <li>
     <strong>Azure Active Directory autentizace</strong> - pro autentizaci bude použit uživatelský účet Microsoft 365 nebo jiný uživatelský účet AAD.</li>
  <li><strong>Integrované ověřování systému Windows</strong> - pro ověření bude automaticky použit uživatelský účet, který je aktuálně přihlášen do systému Windows na tomto počítači, aniž by bylo nutné znovu zadávat přihlašovací údaje.</li>
  <li><strong>Uživatelské jméno a heslo systému Windows</strong> - použijte jakýkoli jiný uživatelský účet systému Windows, např. uživatelský účet služby Active Directory. <ul>
 <li><strong>Uživatelské jméno</strong> - zadejte uživatelské jméno.</li>
 <li><a href="password">Zadejte heslo</a>- stiskněte toto tlačítko a zadejte heslo.</li>
  </ul>
  </li>
 </ul>

 </li>
  </ul>
 
 </li>
 <li><strong>Hlavní panel</strong><ul>
	<li><strong>Automaticky zobrazovat a skrývat</strong> - pokud vybraná položka aplikace Outlook (zpráva, schůzka, událost, úkol) obsahuje v předmětu nebo názvu značku existujícího požadavku, požadavek se automaticky zobrazí na <a href="task-pane">hlavním panelu</a>. V opačném případě se hlavní panel automaticky skryje.</li>
 </ul>
 </li>
	</ul>
	
</asp:Content>

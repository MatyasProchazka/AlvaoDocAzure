<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>

<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Import portrétů uživatelů ze serveru SharePoint</h1>

  <h2>Pravidelný automatický import</h2>
  <p>Vytvořte na serveru naplánovanou úlohu s periodou opakování např. 1× denně, která spustí následující příkaz:</p>
<p><span class="console">
sharepoint.exe /server &lt;sql_server&gt; /db &lt;databáze_alvao&gt; /portalUrl &lt;url&gt; /uživatelské jméno &lt;login&gt; /heslo &lt;pass&gt;.</span></p>

<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Tuto úlohu lze volitelně vytvořit při instalaci serveru ALVAO pomocí nástroje <a href="../installation">ALVAO Server Setup</a></div>

<h2>Jednorázový import</h2>

<p>Pro jednorázový import portrétů spusťte naplánovanou úlohu vytvořenou na serveru nebo zkopírujte aplikaci <em>ImportPortraitsSharepoint</em> z aplikačního serveru do počítače a spusťte ji z příkazového řádku. Aplikace je nainstalována společně se službou ALVAO v adresáři "%ProgramFiles%\ALVAO\AlvaoService\utilities"</p>

<h2>Utilita ImportPortraitsSharepoint</h2>

  <p>Nástroj ImportPortraitsSharepoint načte do aplikace Alvao portréty uživatelů ze služby SharePoint 2010, 2013 nebo SharePoint Online (Office 365).</p>
  <p>Nástroj je součástí instalace služby ALVAO a instaluje se do stejné složky, obvykle do &quot;%ProgramFiles%\ALVAO\AlvaoService\utilities&quot;.</p>

<h3>Parametry příkazového řádku</h3>

<table>
	<thead>
 <tr>
  <th>Parametr</th>
  <th>Popis</th>
  <th>Povinné</th>
  <th>Příklad</th>
 </tr>
	</thead>
	<tbody>
 <tr>
  <td>/conn &lt;řetězec&gt;<br />/server &lt;server&gt;<br />/db &lt;db&gt;</td>
  <td>Nastavení připojení k DB.</td>
  <td>Ano</td>
  <td>/conn &quot;Integrated Security=True;Initial Catalog=ALVAO;Data Source=.\SQLEXPRESS;TrustServerCertificate=True&quot; /server .\SQLEXPRESS /db ALVAO</td>
 </tr>
 <tr>
  <td>/portalUrl &lt;url&gt;</td>
  <td>Adresa SharePoint.</td>
  <td>Ano</td>
  <td>/portalUrl https://firma.sharepoint.com</td>
 </tr>
 <tr>
  <td>/office365</td>
  <td>Příznak, že se jedná o Office 365.</td>
  <td>Ne</td>
  <td>/office365</td>
 </tr>
 <tr>
  <td>/username &lt;login&gt;</td>
  <td>Uživatelské jméno pro přihlášení do služby SharePoint.</td>
  <td>Ne</td>
  <td>/username jan.rychly@firma.cz</td>
 </tr>
 <tr>
  <td>/heslo &lt;pass&gt;</td>
  <td>Heslo pro přihlášení do služby SharePoint.</td>
  <td>Ne</td>
  <td>/password heslo</td>
 </tr>
 <tr>
  <td>/wait</td>
  <td>Počká na stisknutí klávesy na konci importu.</td>
  <td>Ne</td>
  <td>/wait</td>
 </tr>
 <tr>
  <td>/progress</td>
  <td>Zobrazí průběh importu.</td>
  <td>Ne</td>
  <td>/progress</td>
 </tr>
	</tbody>
</table>

<p>Pokud není zadáno žádné uživatelské jméno pro přihlášení do služby SharePoint, použije se aktuální účet (poznámka: není podporováno v Office 365 nebo pokud má služba SharePoint ověřování pomocí formulářů). Pokud adresa služby SharePoint obsahuje "sharepoint.com" nebo "onmicrosoft.com", je automaticky povolena možnost office365<h3>Párování uživatelů</h3>

<p>Chcete-li převést uživatele ze služby SharePoint na uživatele služby Alvao, použijte následující příkaz:<ul>
	<li>E-mail - atribut SharePoint Email.</li>
	<li>Uživatelské jméno - atribut SharePoint Name (standardní porovnání domén).</li>
	<li>Jméno - atribut SharePoint Název.</li>
</ul></p>


</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import portrétů uživatelů ze souborů</h1>
    <h2>Složka s portréty uživatelů</h2>
    <ol>
        <li>Vytvořte na disku serveru složku s portréty uživatelů, např. &quot;C:\ProgramData\ALVAO\Portréty&quot;.</li>
        <li>Do této složky vložte obrazové soubory s portréty uživatelů v následujícím formátu        <ul>
                <li>Název souboru musí odpovídat uživatelskému jménu uživatele (viz <em>ALVAO WebApp - Administrace</em> - <a href="../../../list-of-windows/alvao-webapp/administration/users">Uživatelé</a>- sloupec <em>Uživatelské jméno</em> ).</li>
                <li>Doporučená velikost obrázku je 200x200 px (šířka x výška).</li>
                <li>Formát obrázku musí být JPEG (přípona .jpg).</li>
            </ul>
            Například uživatel &quot;user1@company.local&quot; bude mít portrét uložen v souboru &quot;C:\ProgramData\ALVAO\Portréty\user1@company.local.jpg&quot;        </li>
        <li>Do této složky průběžně přidávejte portréty nových uživatelů.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">
            Tip   </div>
        Portréty můžete také ukládat do podsložek podle domén uživatelů.  Ve složce portrétů vytvořte podsložku pro každou používanou síťovou doménu. Název podsložky musí být stejný jako název domény ve starém formátu uživatelského jména (viz ALVAO WebApp - Administrace - <a href="../../../list-of-windows/alvao-webapp/administration/users">Uživatelé</a>- <em>sloupec Uživatelské jméno (pro starší systémy)</em>).<br />
        Například pro uživatele s uživatelským jménem &quot;company.local\user1&quot; bude portrét &quot;user1.jpg&quot; uložen ve složce &quot;C:\ProgramData\ALVAO\Portréty\company.local&quot;    </div>

    <h2>Pravidelný automatický import</h2>
    <p>
        Na serveru vytvořte naplánovanou úlohu s periodou opakování např. 1× denně, která spustí následující příkaz    </p>
    <p>
       <span class="console">\ProgramFiles%\ALVAO\AlvaoService\utilities\ImportPortraitsFiles.exe /server &lt;sql_server&gt; /db &lt;database_alvao&gt; /path &quot;C:\ProgramData\ALVAO\Portraits</span>&quot;    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Tuto úlohu lze volitelně vytvořit při instalaci serveru ALVAO pomocí nástroje <a href="../installation">ALVAO Server Setup</a>   </div>

    <h2>Jednorázový import</h2>

    <p>
        Pro jednorázový import portrétů spusťte naplánovanou úlohu vytvořenou na serveru nebo spusťte aplikaci <em translate="no">ImportPortraitsFiles</em> přímo z příkazového řádku. Aplikaci najdete v instalačním adresáři <span translate="no">ALVAO Asset Management Console</span> ("%ProgramFiles%\ALVAO\Asset Management Console\ImportUtilities") nebo ji můžete zkopírovat z aplikačního serveru z instalačního adresáře služby ALVAO ("%ProgramFiles%\ALVAO\AlvaoService\utilities")    </p>

    <h2>Utility ImportPortraitsFiles</h2>

    <p>
        Nástroj ImportPortraitsFiles načte do systému Alvao portréty uživatelů ze souborů uložených na disku. 
    </p>
    <p>
        Nástroj je součástí instalace služby ALVAO a instaluje se do stejné složky, obvykle do &quot;%ProgramFiles%\ALVAO\AlvaoService\utilities&quot;    </p>

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
                <td>/conn &lt;řetězec&gt;<br />
                    /server &lt;server&gt;<br />
                    /db &lt;db&gt;</td>
                <td>Nastavení připojení k DB.</td>
                <td>Ano</td>
                <td>/conn &quot;Integrated Security=True;Initial Catalog=ALVAO;Data Source=.\SQLEXPRESS;TrustServerCertificate=True&quot; /server .\SQLEXPRESS /db ALVAO</td>
            </tr>
            <tr>
                <td>/path</td>
                <td>Cesta na disk ke složce se soubory portrétů.</td>
                <td>Ano</td>
                <td>/path "C:\ProgramData\ALVAO\Portréty"</td>
            </tr>
            <tr>
                <td>/email</td>
                <td>Soubory jsou pojmenovány podle e-mailu uživatele.<br />
                    Poznámka: Soubory nesmí být členěny podle domén.  </td>
                <td>Ne</td>
                <td>/email</td>
            </tr>
            <tr>
                <td>/wait</td>
                <td>Počká na stisknutí klávesy na konci importu.</td>
                <td>Ne</td>
                <td>/wait</td>
            </tr>
        </tbody>
    </table>

</asp:Content>
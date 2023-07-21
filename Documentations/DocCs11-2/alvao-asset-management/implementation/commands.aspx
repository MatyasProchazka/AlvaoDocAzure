<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Příkazy</h1>

    <p>Po kliknutí pravým tlačítkem myši na počítač ve stromu objektů se na obrazovce otevře nabídka se seznamem uživatelsky definovaných příkazů v části Nástroje pro správu.</p>
    <p>
        Chcete-li přidat vlastní příkaz nebo příkaz do nabídky Chcete-li upravit, vyberte v hlavní nabídce konzoly AM možnost <strong>Nástroje - Seznamy - Příkazy </strong>. Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/commands">Příkazy</a> se seznamem příkazů, které můžete upravovat    </p>
    <p>Při vytváření uživatelských příkazů můžete použít následující parametry předávané programem:</p>
    <p>Kromě proměnných operačního systému, jako jsou %SystemRoot%, %ProgramFiles% atd., lze v příkazu použít také následující parametry:</p>
    <p><strong>Tabulka 1. Parametry uživatelských příkazů</strong></p>
    <table>
        <thead>
            <tr>
                <th>Parametr</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>%epcomputer%</td>
                <td>Hodnota vlastnosti <em>Název sítě</em>, která je vybrána ve stromu objektů (tj. počítač, na který je uživatelský příkaz &quot;aplikován&quot;).</td>
            </tr>
            <tr>
                <td>%ephostname%</td>
                <td><em>Název sítě</em> vybraného objektu ve stromu.</td>
            </tr>
            <tr>
                <td>%epip%</td>
                <td>Hodnota vlastnosti <em>IP adresa</em> klientského počítače.  Pokud objekt <em>Počítač</em> tuto vlastnost neobsahuje, je tato vlastnost automaticky převzata z podřazeného objektu typu <em>Síťová karta</em>.</td>
            </tr>
            <tr>
                <td>%ephostname_or_ip%</td>
                <td><em>Síťové jméno</em> nebo <em>IP adresa</em> vybraného objektu ve stromu. Pokud je položka <em>Název sítě</em> prázdná, použije se <em>IP adresa</em>.</td>
            </tr>
            <tr>
                <td>%epmac%</td>
                <td>Hodnota vlastnosti <em>MAC adresa</em> klientského počítače.  Pokud objekt <em>Počítač</em> tuto vlastnost neobsahuje, je vlastnost automaticky převzata z podřazeného objektu typu <em>Síťová karta</em>.</td>
            </tr>
            <tr>
                <td>%epmycomputer%</td>
                <td>Hodnota vlastnosti <em>Network Name (Název sítě)</em> počítače operátora konzoly ALVAO Asset Management Console.</td>
            </tr>
            <tr>
                <td>%epmyip%</td>
                <td>IP adresa počítače operátora konzoly ALVAO Asset Management Console. Pokud objekt Computer tuto vlastnost neobsahuje, je tato vlastnost automaticky převzata z podřazeného objektu typu <em>Network Card</em>.</td>
            </tr>
        </tbody>
    </table>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Jako parametr příkazu je možné použít také libovolnou hodnotu vlastnosti objektu    </div>

    <h2>Vytvoření příkazu s parametrem hodnota vlastnosti objektu</h2>
    <ol>
       <li>V hlavní nabídce konzoly AM použijte <strong>Nástroje - Seznamy - Příkazy</strong>.</li> <li>Zobrazí se okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/commands">Příkazy</a>.</li> <li>Stiskněte tlačítko <strong>Přidat</strong>.</li> <li>Zobrazí se okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/command">Nový příkaz</a><br />. Vyplňte název příkazu a adresář, ve kterém má být příkaz spuštěn.<br />. Zadejte příkaz.</li> <li>Chcete-li použít vlastnost jako parametr příkazu, stiskněte tlačítko <strong>Vložit proměnnou</strong>.</li> <li><br />
            Zobrazí se seznam podporovaných proměnných.<br />Z</li>nabídky tlačítka <li>vyberte <strong>Vlastnost objektu.</strong></li>.. V <li>okně se zobrazí <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/properties-definition">Definice vlastností</a>.<br />Vyberte vlastnost a stiskněte tlačítko <strong>OK</strong> nebo na vlastnost klikněte myší.</li> <li>V okně <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/command">Nový příkaz</a></li>se <li>přidá hodnota vlastnosti jako parametr příkazu</li>   </ol>



</asp:Content>

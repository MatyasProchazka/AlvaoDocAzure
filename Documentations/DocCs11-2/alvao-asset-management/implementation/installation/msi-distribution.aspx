<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Distribuce balíčku msi prostřednictvím SCCM</h1>
    <h2>Shrnutí</h2>

    <p>Tento návod slouží k vytvoření pravidla pro distribuci balíčku <em>.msi</em> prostřednictvím SCCM a jeho následné převedení do požadovaného formátu<em>.mst.</em> </p>

    <h2>Určeno pro produkty</h2>

    <ul>
        <li>ALVAO Outlook Addin</li>
        <li>Asset Management Agent</li>
    </ul>

    <h2>Před spuštěním</h2>

    <p>
        - Microsoft Software Center Configuration Manager<br />
        - k transformaci balíčku m> na <em>.mst</em> je třeba mít nainstalovaný software Orca    </p>


    <h2>Postup</h2>

    <ol>
        <li>Připojte se k <strong>serveru,</strong> na kterém máte nainstalovaný <strong>SCCM</strong>.</li>
        <li>Spusťte nástroj <strong>Microsoft Endpoint Configuration Manager</strong>.</li>
        <li>Knihovna softwaru - Správa aplikací - Aplikace - Vytvořit aplikaci.</li>
        <li>Pomocí tlačítka <strong>Procházet</strong> vyberte instalační soubor<em>(*.msi</em>), který chcete zadat pro nasazení, a pokračujte v průvodci. 
            <div class="wide">
                <img src="app_wizard.png" alt="Create Application Wizard" /></div>
        </li>
        <li>Na kartě <strong>Obecné informace</strong> zadejte do pole <strong>Instalační program</strong> následující řetězec         <br />

            <ul>
                <li>Pro <strong>AO</strong>: <span class="console"> msiexec /i "AlvaoOutlookAddIn.msi" /qn TRANSFORMS="AlvaoOutlookAddIn.mst"</span></li>
                <li>Pro <strong>AM Agent</strong>: <span class="console"> msiexec /i "AlvaoAssetAgent.msi" /qn TRANSFORMS="AlvaoAssetAgent.mst</span>"                </li>


            </ul>
            <br />
            Nastavte <strong>chování instalace</strong> na <strong>Instalace pro uživatele</strong>       </li>

    </ol>
    <h3>Nasazení aplikací</h3>

    <ol>
        <li>Klikněte pravým tlačítkem myši na vytvořenou aplikaci - <strong>Deploy</strong>.</li>
        <li>Vyberte kolekci, na kterou chcete nasazení aplikovat.</li>
        <li>Na kartě <strong>Obsah</strong> vyberte možnost <strong>Distribuční bod</strong>.</li>
        <li>Na kartě <strong>Nastavení nasazení -</strong><strong>Účel</strong> nastavte hodnotu <strong>Požadováno</strong>.</li>
        <li>Na kartě <strong>Uživatelské prostředí</strong> vyberte možnost <strong>Instalace softwaru</strong>.</li>

    </ol>

    <h3>Jak transformovat balíček .msi na balíček .mst pro Asset Management Agent, Outlook Addin</h3>
    <p>Pokud distribuujete ALVAO Asset Management Agent nebo ALVAO Outlook Addin na klientském zařízení, je třeba upravit instalační balíčky msi pomocí softwaru <strong>Orca</strong> a vytvořit <em> balíček *.mst</em>. Pokud instalační soubory neupravíte, nebudou AM Agent a Outlook Addin správně fungovat. V případě potřeby pak musí každý uživatel nastavit aplikace ručně.</p>
    <ol>
        <li>Vyberte instalační balíček, ke kterému chcete vytvořit transformaci.</li>
        <li>V místní nabídce použijte příkaz <strong>Upravit pomocí Orca</strong>.</li>
        <li>V hlavní nabídce použijte příkaz <strong>Transformace - Nová transformace</strong>.</li>
        <li>V tabulkovém zobrazení na levé straně vyberte položku <strong>Vlastnost</strong>.</li>
        <li>V přehledu vlastností použijte příkaz místní nabídky <strong>Přidat řádek</strong> nebo použijte klávesovou zkratku Ctrl+R.<ul>
            <li>Informace o <strong>AO</strong> naleznete v části <a href="../../../modules/alvao-outlook-addin/installation">ALVAO pro Outlook - Instalace</a>. </li>
            <li>Pro <strong>AM Agent</strong> - jako název vlastnosti<em>(Property)</em> zadejte <strong>APIUrl</strong> a hodnotu vlastnosti<em>(Value)</em> nastavte na aktuální adresu <em>REST API</em>. (například <span class="console">http://localhost/restapi/restapi.asmx</span>)                <br />
                Poté vložte další řádek (Ctrl+R) a vložte název vlastnosti (<em>Property</em>) <strong>AUTH_CODE</strong> a přidejte hodnotu vlastnosti<em>(Value)</em> s příslušným kódem      <div class="caution">
               <div class="icon"></div>
                <div class="title">Upozornění:</div>
                Upozornění: je nutné, aby název vlastnosti byl psán velkými písmeny. 
            </div></li>
        </ul>
        </li>

        <li>Použijte příkaz z hlavní nabídky <strong>Transformovat - Generovat transformaci</strong>.</li>
        <li>Zobrazí se dialogové okno pro uložení souboru.</li>
        <li>Vyberte adresář, ve kterém se nachází zdrojový instalační balíček.</li>
        <li>Přepněte filtr souborů na <strong>Všechny soubory (*.*</strong>).</li>
        <li>Vyberte instalační balíček.</li>
        <li>Přepněte filtr zpět na <strong>transformaci instalačního programu systému Windows (*.mst</strong>).</li>
        <li>Stiskněte tlačítko <strong>Uložit</strong>.</li>
        <li>Zavřete okno editoru Orca.</li>

    </ol>

</asp:Content>

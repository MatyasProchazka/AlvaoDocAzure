<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nastavení seznamu důvěryhodných domén</h1>

    <p>Alvao může také importovat informace o členech skupiny, kteří pocházejí z jiných důvěryhodných domén. Pokud tyto domény nejsou ve výchozím doménovém stromu známy, je třeba ručně zadat seznam důvěryhodných domén do tabulky <a href="../../../customization/database">AdTrustedDomain</a>.</p>

    <p>
        Příklad zápisu dvou různých důvěryhodných domén:<ol>
            <li>Upravte tabulku <a href="../../../customization/database#U_AdTrustedDomain">AdTrustedDomain</a> například pomocí aplikace Microsoft SQL Server Management Studio.</li>
            <li>Do prvního řádku tabulky zadejte do sloupce "Hostname" hodnotu "SERVER1" a do sloupce "DomainName" hodnotu "alvao.cz".</li>
            <li>Ve druhém řádku tabulky vložte do sloupce "Hostname" hodnotu "SERVER2" a do sloupce "DomainName" hodnotu "test.alvao.cz"</li>
        </ol>
    </p>


    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o server, který se nachází na adrese serveru, je třeba provést následující kroky:</div>
        Pokud používáte replikaci domény, můžete do tabulky zadat všechny servery, na kterých běží replikovaný řadič domény. Ve sloupci "Pořadí" také nastavte správné pořadí, ve kterém budou servery vyzkoušeny. Import pak postupně vyzkouší všechny servery, a pokud se mu nepodaří připojit ani k jednomu, skončí s chybou    </div>


</asp:Content>


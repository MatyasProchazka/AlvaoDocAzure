<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Detekce </h1>
    <p>
        Nastavení detekcí v systému <a href="../../../../../alvao-asset-management">ALVAO Asset Management</a>   </p>
    <p>Možnosti:</p>
    <ul>
        <li>Pokud nechcete vytvářet nové požadavky na <strong>zjišťování</strong> softwaru a hardware počítače, povolte tuto možnost.<br />
            Použijí se poslední (nejmladší) existující záznamy, podobně jako při <a href="../../../../../alvao-asset-management/implementation/detection">opětovném</a> volání <a href="../../../../../alvao-asset-management/implementation/detection">Detect</a><div class="tip">
     <div class="icon"></div>
      <div class="title">Tip:</div>
      Povolením této možnosti zajistíte, že se detekce nebudou hromadit pro každý počítač.<br />
      Tím zajistíte, že budete mít pouze jednu aktuální detekci pro hardware a software  </div>
        </li>
        <li><strong>Ověřovací kód agentů</strong> - Zadejte kód používaný k ověření samostatných agentů při komunikaci s webovou službou. Stejný kód musíte zadat při instalaci Agentů.</li>
        <li><strong>V záznamech automaticky vytvářet nové počítače s nainstalovaným autonomním Agentem</strong> - zapněte, pokud chcete, aby autonomní Agent automaticky vytvářel nové počítače, které nejsou v evidenci.</li>
        <li><strong>Plánování</strong> - po zapnutí automatické detekce můžete nastavit denní interval automatického načítání a zvolit dny výjimek, kdy se nebude spouštět. </li>
        <li><strong>Načítání souborů</strong> <strong>- Automatické načítání souborů detekce (*.CXM</strong> ) - po povolení se zobrazí další možnosti         <ul>
                <li><strong>Automatické načítání souborů CXM z</strong> - Vyberte úložiště, ze kterého se bude soubor načítat         <ul>
                    <li><strong>Složka</strong> - tuto možnost vyberte pro načítání dat ze složky na disku    <ul>
                        <li><strong>Cesta</strong> - Zadejte cestu ke složce.</li>
                        <li><strong>If the loading process suceeded/failed (Pokud proces načítání proběhl úspěšně/neúspěšně</strong> ) - V každém z případů můžete zvolit, co se stane s datovým souborem po ukončení procesu. (Soubor může být odstraněn nebo přesunut do zadané složky.)         </li>
                    </ul>
                    </li>
                    <li><strong>Úložiště Microsoft Azure</strong>    <ul>
                            <li><strong>Připojovací řetězec</strong> - zadejte platný připojovací řetězec úložiště MS Azure podle příkladu: DefaultEndpointsProtocol=https;AccountName=alvao;AccountKey=***;EndpointSuffix=core.windows.net</li>
                        </ul>
                    </li>
                </ul>
                </li>
            </ul>
        </li>
    </ul>
</asp:Content>

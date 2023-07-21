<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO WebApp</h1>

    <p>
        ALVAO WebApp je společná webová aplikace pro <a href="../alvao-service-desk">ALVAO Service Desk</a> a <a href="../alvao-asset-management">ALVAO Asset Management</a>. Tato kapitola popisuje různé aspekty této aplikace    </p>
    <p>Většina stránek aplikace obsahuje následující společné prvky:</p>
    <p>
        <img src="alvao-webapp/frame.png" alt="Common elements on application pages" /></p>
    <ol>
        <li><em>Hlavní (vertikální) nabídka příkazů</em> - nabídka obsahuje příkazy:<ul>
            <li><a href="alvao-webapp/main">Úvodní stránka</a></li>
            <li><a href="alvao-webapp/requests">Požadavky</a></li>
            <li><a href="alvao-webapp/service-catalog">Katalog služeb</a></li>
            <li><a href="alvao-webapp/objects">Objekty</a></li>
            <li><a href="alvao-webapp/knowledge-base">Báze znalostí</a></li>
            <li>...<ul>
                <li><a href="alvao-webapp/news">Aktuální novinky</a></li>
                <li><a href="alvao-webapp/documents">Dokumenty</a></li>
                <li><a href="alvao-webapp/data-queries">Datové dotazy</a></li>
                <li><a href="alvao-webapp/diary">Záznamy</a></li>
                <li><a href="alvao-webapp/ticket-templates">Šablony požadavků</a></li>
                <li><a href="alvao-webapp/administration">Správa</a></li>
            </ul>
            </li>
        </ul>
            <p>Svislou lištu nabídek můžete rozbalit kliknutím na šipku v její spodní části. Nabídka může obsahovat další příkazy v závislosti na nastavení systému. </p>
        </li>
        <li><em>Panel příkazů (horizontální </em>) - nabídka příkazů, které se vztahují k obsahu stránky.</li>
        <li><em>Panel vyhledávání</em> - vyhledávání záznamů v systému Alvao. Do řádku zadejte hledaný text a stiskněte klávesu <span class="key">Enter</span>. Případně vyberte oblast vyhledávání na pravé straně řádku.</li>
        <li>V pravém horním rohu jsou ikony (v pořadí):<ul>
            <li><em>Nápověda</em> - zobrazí nápovědu pro danou stránku aplikace</li>
            <li><a href="alvao-webapp/news">Aktuální zprávy</a> - ikona zobrazuje počet zpráv, které jste ještě nepřečetli.</li>
            <li><a href="alvao-webapp/administration/settings/settings-check">Upozornění</a> - upozorní správce systému na případné nedostatky zjištěné v nastavení.</li>
            <li><em>Uživatelské menu</em> - v pravém horním rohu se zobrazuje váš portrét. Pokud na něj kliknete myší, zobrazí se nabídka obsahující následující příkazy         <ul>
                    <li><a href="alvao-webapp/my-team">Můj tým</a></li>
                    <li><a href="../modules/alvao-inventory-audits/web-asset-check">Inventář majetku</a></li>
                    <li><a href="alvao-webapp/search/persons/person">Můj majetek</a></li>
                    <li><a href="alvao-webapp/search/persons/person">Moje dokumenty</a></li>
                    <li><a href="alvao-webapp/settings">Settings (Nastavení)</a> - uživatelská nastavení.</li>
                    <li><em>Odhlásit se</em> - odhlášení uživatele z aplikace. Tento příkaz se nezobrazuje při použití integrovaného ověřování uživatele systému Windows.</li>
                </ul>
                <p>Nabídka může obsahovat další příkazy v závislosti na nastavení systému.</p>
            </li>
        </ul>
        </li>
    </ol>

</asp:Content>

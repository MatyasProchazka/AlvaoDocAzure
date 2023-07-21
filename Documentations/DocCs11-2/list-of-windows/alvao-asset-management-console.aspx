<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

   <h1 translate="no">ALVAO Asset Management Console</h1>
    <p>
        Tato kapitola popisuje okna a příkazy, které se zobrazují na obrazovce při práci s <a href="../alvao-asset-management/console">konzolou ALVAO Asset Management Console</a>, která slouží k práci se systémem <a href="../alvao-asset-management">ALVAO Asset Management</a>   </p>

        Hlavní okno obsahuje následující 3 hlavní části:<ul>
            <li><a href="alvao-asset-management-console/object-tree">Strom objektů</a> - je zobrazen v levé části okna. Ve stromu jsou zobrazeny všechny objekty registrované ve Správě aktiv. Další informace o práci s objekty a stromem najdete v části <a href="../alvao-asset-management/objects-and-properties">Objekty a vlastnosti</a>.</li>

            <li><a href="alvao-asset-management-console/tab-view">Záložky Zobrazení</a> - pravá část okna obsahuje záložky Zobrazení. Jednotlivé karty zobrazují podrobnější informace o objektu, který jste vybrali ve stromu.</li>


            <li><b>Stavový řádek</b> - ve spodní části okna se nachází stavový řádek, který obsahuje následující informace:</li>
            <ul>
                <li><a href="alvao-asset-management-console/object">Objekt</a> - objekt vybraný ve stromu objektů (a cesta k objektu z kořene stromu).</li>
                <li><strong>Tabulka</strong> - údaje o aktuálně vybrané tabulce.<br />
                    Pokud je vybrán jediný řádek tabulky, zobrazí se informace o pořadí vybraného řádku a celkovém počtu řádků tabulky. Je-li vybráno více řádků, zobrazí se informace o počtu vybraných řádků a celkovém počtu řádků tabulky.</li>
                <li><strong>Databáze</strong> - název databáze, ke které je AM Console aktuálně připojena.</li>
                <li><strong>User (Uživatel)</strong> - uživatel aktuálně přihlášený do AM Console.</li>
            </ul>
        </ul>

</asp:Content>

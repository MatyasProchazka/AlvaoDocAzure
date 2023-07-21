<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní funkce pro výběr služeb</h1>
    <p>Při vytváření požadavku a případném přesunu požadavku do jiné služby se vybírá služba, do které bude požadavek vytvořen/přesunut.</p>
    <p>
        Týká se to následujících formulářů:<ul>
            <li><a href="../../list-of-windows/alvao-webapp/requests/new-request">Nový požadavek</a></li>
            <li><a href="../../list-of-windows/alvao-webapp/requests/request/move-to-another-service">Přesun do jiné služby</a></li>
        </ul>
    </p>

    <h2>Chování systému</h2>
    <p>V poli <em>Služba</em> se zobrazí lokalizovaný název služby včetně cesty ve stromu.</p>

    <p>Po rozbalení seznamu se v poli zobrazí 20 služeb, ve kterých hlavní řešitel naposledy vytvořil požadavky. Vyhledávání v seznamu zobrazí všechny služby, ve kterých má aktuální řešitel požadavku SLA, bez ohledu na ostatní role přihlášených uživatelů.</p>

    <p>Odstraněné služby, složky a proxy, které mají stejný název a výchozí šablonu požadavku jako zastupovaná služba, se nenabízejí.</p>

    <p>Text zadaný do pole se vyhledává v názvu služby včetně cesty ve stromu a v klíčových slovech.</p>

    <p>Hodnoty jsou seřazeny podle cesty ve stromu.</p>


    <h2>Vlastní funkce</h2>
    <p>Pokud chcete změnit způsob vyhledávání a řazení hodnot v poli služby, přidejte do databáze proceduru <em>spHdSectionForRequesterSearch_Custom</em>.</p>

    <p>Pokud je v databázi definována procedura <em>spHdSectionForRequesterSearch_Custom</em>, použije se místo výchozí procedury <em>spHdSectionForRequesterSearch</em> procedura <em>spHdSectionForRequesterSearch</em>.</p>

    <p>Procedura <em>spHdSectionForRequesterSearch_Custom</em> má stejné vstupy a výstupy jako stávající procedura <em>spHdSectionForRequesterSearch</em>.</p>


</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nová položka</h1>
    <p>Toto okno slouží k vytvoření nového vlastního pole požadavku a jeho přidání do <a href="new-ticket-items">formuláře Nový požadavek</a>.</p>

    <p>Možnosti:</p>
    <ul>
        <li><strong>Název položky</strong> - zadejte název pole, které se má zobrazit ve formuláři.</li>
        <li><strong>Typ položky</strong> - vyberte datový typ pole. 
            <ul>
                <li><strong>Datum</strong> - do položky lze zadat pouze datum.</li>
                <li><strong>Datum a čas</strong> - v položce lze zadat pouze datum a čas.</li>
                <li><strong>Číslo</strong> - do položky lze zadat pouze číselnou hodnotu. Číslo může být desetinné nebo pouze celé, viz volba <em>Desetinné číslo</em>.</li>
                <li><strong>Možnost</strong> - uživatel může vybrat hodnoty pole z rozbalovací nabídky.</li>
                <li><strong>Text</strong> - do pole lze zadat libovolný text. Viz také možnost <em>Víceřádkový text</em>.</li>
                <li><strong>Uživatel</strong> - v poli lze vybrat uživatele systému Alvao.</li>

            </ul>
        </li>
                <li><strong>Zdrojová skupina</strong> - vyberte skupinu uživatelů. Hodnoty pole typu <em>uživatel</em> budou omezeny na členy této skupiny. Toto pole se zobrazuje pouze u <em>položky typu </em>&quot;Uživatel&quot;.</li>
            <li><strong>Popis</strong> - zadejte popis pole, pokyny pro žadatele k vyplnění hodnot apod. Zadaný text se bude zobrazovat uživatelům ve formuláři.</li>
        <li><strong>Hodnoty</strong> - nabídka hodnot pro typ položky <em>Option (Možnost)</em>. 
            <ul>
                <li><strong>Yes/No (Ano/Ne</strong> ) - pole bude ve formuláři zobrazeno jako zaškrtávací políčko.</li>
                <li><strong>Seznam hodnot</strong> - seznam hodnot v rozevírací nabídce. Hodnoty v seznamu můžete přesouvat uchopením ikony vlevo ("šipka nahoru a šipka dolů") myší      <ul>
                        <li><strong>Nová hodnota</strong> - přidání nové hodnoty na konec seznamu.</li>
                        <li><strong>Povolit zadání volného textu</strong> - tuto možnost povolte, pokud chcete uživateli umožnit zadat do pole kromě hodnot v seznamu i libovolný text.</li>
                        <li><strong>Povolit překlad seznamu hodnot</strong> - tuto možnost povolte, pokud chcete exportovat hodnoty ze seznamu hodnot pro <a href="../../../../../../alvao-service-desk/implementation/multi-languages">překlad do jiných jazyků</a> a poté je zobrazit uživatelům v jejich preferovaném jazyce.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><strong>Víceřádkový text</strong> - zapněte, pokud chcete u položky typu <em>Text</em> zobrazit větší vstupní pole. Pokud je vypnuta, zobrazí se pouze jednořádkové vstupní pole a délka textu je omezena na 256 znaků.</li>
        <li><strong>Desetinné číslo</strong> - zapněte, pokud chcete do pole zadávat i desetinná čísla. V opačném případě lze zadávat pouze celá čísla.</li>
    </ul>
</asp:Content>

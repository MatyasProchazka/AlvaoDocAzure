<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nové vlastní pole</h1>
    <p>
        Pomocí tohoto formuláře můžete vytvořit nové <a href="../../../../alvao-service-desk/implementation/custom-items">vlastní pole</a>   </p>

    <p>Možnosti:</p>

    <ul>
        <li><strong>Název vlastního pole</strong> - zadejte název vlastního pole, pod kterým se bude pole v aplikaci zobrazovat uživatelům. Název vlastního pole se nesmí shodovat s žádným jiným polem entity (vlastním nebo systémovým) ani s žádným jiným sloupcem <a href="../../../../alvao-asset-management/implementation/customization/database#report_view_list">zobrazení výkazů</a>.</li>
        <li><strong>Pořadí</strong> - zadejte pořadí, v jakém se má pole zobrazovat ve formulářích. Pole se zobrazují ve vzestupném pořadí na základě hodnoty <em>Order (Pořadí)</em>. Pokud mají dvě pole stejnou hodnotu <em>Order (Pořadí)</em>, jejich relativní pořadí bude náhodné.</li>
        <li><strong>Typ</strong> - z nabídky vyberte typ vlastního pole<table>
        <thead>
            <tr>
                <th>Typ</th>
                <th>Význam</th>
                <th>Prvek uživatelského rozhraní ve formulářích</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">bit</td>
                <td>logická hodnota ano/ne</td>
                <td>zaškrtávací políčko</td>
            </tr>
            <tr>
                <td translate="no">date</td>
                <td>datum</td>
                <td>výběr data</td>
            </tr>
            <tr>
                <td translate="no">datetime</td>
                <td>datum a čas</td>
                <td>pole pro výběr data a času</td>
            </tr>
            <tr>
                <td translate="no">float</td>
                <td>desetinné číslo</td>
                <td>textové vstupní pole</td>
            </tr>
            <tr>
                <td translate="no">int</td>
                <td>celé číslo</td>
                <td>textové vstupní pole</td>
            </tr>
            <tr>
                <td translate="no">nvarchar</td>
                <td>textový řetězec</td>
                <td>jednořádkové nebo víceřádkové textové vstupní pole</td>
            </tr>
            <tr>
                <td translate="no">user</td>
                <td>uživatel Alvao; V databázi je tento typ reprezentován jako typ int obsahující ID uživatele (viz <a href="../../../../alvao-asset-management/implementation/customization/database#U_dbo.tPerson">tPerson</a>.iPersonId).</td>
                <td>rozbalovací menu</td>
            </tr>
        </tbody>
    </table>
            <p>Následující pole se zobrazují pouze pro typ <em>nvarchar</em>:</p>
            <ul>
                <li><strong>Víceřádkový text</strong> - zapněte, pokud chcete, aby formuláře zobrazovaly větší vstupní pole pro zadávání víceřádkového textu. Pokud je vypnuto, zobrazí se pouze jednořádková vstupní pole    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Tuto možnost nelze kombinovat se seznamem hodnot      </div>
                </li>
                <li><strong>Délka</strong> - zadejte maximální délku textu ve znacích, kterou lze do položky zapsat.</li>
                <li><strong>Maximální délka</strong> - zapněte, pokud chcete do pole ukládat dlouhý text.</li>
            </ul>
            <p>Toto pole se zobrazuje pouze pro <em>uživatele</em> typu .</p>
            <ul>
                <li><strong>Zdrojová skupina</strong> - vyberte skupinu uživatelů. Hodnoty pole typu <em>uživatel</em> budou omezeny na členy této skupiny.</li>
            </ul>
        </li>


        <li><strong>Popis</strong> - zadejte popis pole, který se bude zobrazovat ve formulářích a pomůže uživatelům pole vyplnit.</li>
        <li><strong>Tabulka</strong> - vyberte entitu, pro kterou chcete vytvořit vlastní pole    <table>
                <thead>
                    <tr>
                        <th>Hodnota v nabídce (název tabulky v databázi)</th>
                        <th>Entita</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td translate="no">tHdTicketCust</td>
                        <td>Požadavek</td>
                    </tr>
                    <tr>
                        <td translate="no">tPersonCust</td>
                        <td>Osoba</td>
                    </tr>
                    <tr>
                        <td translate="no">tAccountCust</td>
                        <td>Organizace</td>
                    </tr>
                    <tr>
                        <td translate="no">tHdSectionCust</td>
                        <td>Služba</td>
                    </tr>
                    <tr>
                        <td translate="no">tSlaCust</td>
                        <td>SLA</td>
                    </tr>
                    <tr>
                        <td translate="no">LicHistCust</td>
                        <td>Licence</td>
                    </tr>

                    <tr>
                        <td translate="no">ProductCust</td>
                        <td>Produkty</td>
                    </tr>

                    <tr>
                        <td translate="no">TicketStateCust</td>
                        <td>Stav ticketu</td>
                    </tr>
                </tbody>
            </table>

        </li>
        <li><strong>Column -</strong> zadejte název sloupce v databázi, ve kterém bude uložena hodnota tohoto vlastního pole. Název musí být jedinečný a nesmí obsahovat mezery ani speciální znaky. Doporučujeme pojmenovat sloupce v angličtině a dodržovat doporučení pro <a href="https://docs.microsoft.com/en-us/sql/relational-databases/databases/database-identifiers">pojmenování identifikátorů v databázi</a>.</li>


        <li><strong>Použít seznam hodnot</strong> - vlastní pole se bude ve formulářích zobrazovat jako textové pole s rozbalovací nabídkou. Po zapnutí této možnosti vyplňte seznam hodnot pomocí příkazu <em>Upravit</em> - <a href="detail/list-of-values">Seznam hodnot</a>.<br />
            Seznam lze použít pouze pro typy <em>nvarchar</em> a <em>int</em>. Do vlastního pole typu <em>nvarchar</em> lze zapsat i hodnotu, která není uvedena v seznamu hodnot. Hodnoty vlastních polí typu <em>int</em> jsou omezeny pouze na hodnoty uvedené v seznamu hodnot, nelze do nich zapsat žádnou jinou hodnotu a při změně hodnoty v seznamu hodnot se automaticky změní hodnota vlastního pole.</li>
        <li>
           <strong>Povolit překlad seznamu hodnot</strong> - tuto možnost povolte, pokud chcete hodnoty ze seznamu hodnot exportovat pro <a href="../../../../alvao-service-desk/implementation/multi-languages">překlad do jiných jazyků</a> a poté je zobrazit uživatelům v jejich preferovaném jazyce.</li>
    </ul>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  
</asp:Content>


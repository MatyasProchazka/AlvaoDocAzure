<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Požadavek</h1>


    <p>Na této stránce si můžete prohlédnout jeden konkrétní <a href="../../../alvao-service-desk/requests">požadavek</a> v ALVAO Service Desk.</p>
    <p>Možnosti:</p>
    <ul>
        <li>Příkazy - příkazy zobrazené na panelu příkazů jsou stejné jako příkazy zobrazené na stránce <a href="../requests">Požadavky</a>.</li>
        <li>Záhlaví požadavku<ul>
            <li>Portrét žadatele s ikonou služby a přítomností uživatele. Přítomnost uživatele se zobrazuje vedle jména zadavatele požadavku a ostatních účastníků.</li>
            <li><em>Značka požadavku</em> - identifikátor požadavku sestávající z předpony, čísla požadavku a přípony, např. <em>123ALVAO</em>.</li>
            <li><em>Request Name (Název požadavku)</em> - zkrácený název požadavku</li>
            <li><strong>Žadatel</strong> - uživatel, který požadavek podal.</li>
            <li><strong>Požadováno pro -</strong> uživatel, pro kterého byl požadavek vytvořen. Zobrazuje se pouze v případě, že se liší od zadavatele požadavku.</li>
            <li><strong>Řešitel -</strong> člen řešitelského týmu, který je aktuálně pověřen řešením požadavku.</li>
            <li><strong>Stav</strong> - stav požadavku, viz záložka <em>Proces řešení</em>.</li>
            <li><strong>Aktuální cíl / datum splnění</strong> - cíl, kterého má řešitel v požadavku aktuálně dosáhnout, viz <a href="table-of-requests">tabulka požadavků</a> - sloupec <em>Aktuální cíl</em>.</li>
        </ul>
        </li>
        <li>Záložky<ul> <li><strong>Komunikace<br /></strong>Záložka zobrazuje deník požadavku, tj. odeslané a přijaté e-mailové zprávy, interní poznámky řešitelského týmu, zápisy z telefonických hovorů a osobních schůzek, záznamy o změnách hodnot datových položek požadavků apod. Název záložky se mění podle toho, jaký pohled lze vybrat v rozevírací nabídce: <ul> <li><strong>Komunikace</strong> (výchozí pohled) - v tomto pohledu se zobrazují pouze záznamy, které obsahují nějakou zprávu nebo přílohu od uživatelů.</li> <li>Toto zobrazení má k dispozici pouze zadavatel požadavku a může zobrazit pouze záznamy s povolenou možností <a href="request/note">Zobrazit zadavateli požadavku</a>.</li> <li><strong>Důležité</strong> - zobrazení zobrazuje pouze události označené jako <a href="../../../alvao-service-desk/requests/important-communication">důležité nebo jako řešení požadavku</a>.</li> <li><strong>Žadatel</strong> - zobrazuje pouze komunikaci zahrnující žadatele požadavku.</li> <li><strong>Přílohy</strong> - zobrazuje veškerou komunikaci obsahující nějakou přílohu.</li> <li><strong>
            Podrobný deník</strong> - zobrazuje všechny záznamy v deníku požadavku.</li> <li><strong>Rozbalit vše</strong> - rozbalí všechny záznamy zobrazené na této kartě.</li> <li><strong>Najít v deníku</strong> - v horní části karty se zobrazí vstupní pole pro vyhledávání. Zadejte alespoň část jména autora, jména příjemce, předmětu, textu nebo názvu přílohy, stiskněte klávesu Enter a na kartě se zobrazí nalezené záznamy v protokolu.</li>
            </ul>
            </li>
            <li><strong>Obecné<br /></strong>Na této záložce se zobrazují hodnoty položek požadavku, viz sloupce v  <a href="table-of-requests">tabulce požadavků</a>.</li>
            <li><strong>Postup řešení</strong><br />Na této záložce se zobrazuje diagram zobrazující aktuální stav požadavku v kontextu celého procesu řešení, tj. posloupnost stavů požadavku od založení až po uzavření. Postup řešení je určen servisním <a href="../../../alvao-service-desk/implementation/services/processes">procesem</a>. 
                <div class="icon">
                    <div class="title">
                        Tip: 
                    </div>
                    Kliknutím na konkrétní stav v diagramu snadno vyvoláte příkaz <a href="request/transit-to-state">Přejít do stavu</a>.
            </div>
            </li> </ul>
            
            <br />
            <ul><li><strong>Vazby</strong><br />Na této záložce jsou v tabulce zobrazeny požadavky, které jsou <a href="../../../alvao-service-desk/requests/relations">s tímto požadavkem propojeny</a>. </li> </li>
           
            Za názvem záložky je uveden počet navázaných požadavků.<br />V panelu příkazů najdete navíc následující příkazy: <ul>
                <li><a href="request/edit-link">Přidat vazbu</a>- přidání nového odkazu na jiný požadavek</li>
                <li><a href="request/edit-link">Upravit vazbu</a>- úprava vybraného odkazu</li>
                <li><strong>Odstranit vazbu</strong> - odstranění vybrané vazby</li>
            </ul>
            <p>
                Tabulka obsahuje stejné sloupce jako <a href="table-of-requests">tabulka požadavků</a> a můžete v ní také povolit zobrazení vnořených vazeb.</p>
            <p>
                Záložka se zobrazuje pouze členům řešitelského týmu služby požadavku.</p>
                <li><strong>Objekty</strong><br />Na této záložce najdete objekty z <a href="../../../alvao-asset-management">ALVAO Asset Managementu</a>, 
            které jsou navázané na tento požadavek (viz položka požadavku <a href="table-of-requests">Objekty</a>)</li>. 
            Počet navázaných objektů se zobrazuje za názvem záložky.<br />V panelu příkazů najdete navíc následující příkazy:
                    <ul>
                        <li><a href="request/add-object">Přidat objekt</a> - navázání dalšího objektu s tímto požadavkem.</li>
                        <li><strong>Odstranit objekt</strong> - odstranění vazby na vybraný objekt.</li>
                        <li><a href="../../../alvao-asset-management/searching/list-of-objects">Zobrazit v AM Console</a> - zobrazení navázaných objektů v <a href="../../../alvao-asset-management/console">AM Console.</a>
                    
                    Pro 
            použití tohoto příkazu musíte mít v počítači nainstalovanou aplikaci AM Console.</li></ul>
                        <li><b>Schvalování</b><br />Na této záložce můžete sledovat a řídit schvalování požadavku. Za názvem záložky se zobrazuje počet aktivních kroků schvalování.&nbsp; Schvalovací kroky a údaje o&nbsp; nich jsou zobrazeny v tabulce.<br />V panelu příkazů najdete navíc tyto příkazy:
                            <ul>
                                <li><b>Zrušit schvalování</b> - zrušení vybraného schvalovacího kroku.</li>
                            </ul>
                </li> 
                            <br>Zde lze zobrazit i vlastní záložky vytvořené správcem. Příklady naleznete <a href="../../../modules/alvao-am-custom-apps/applications/templates">zde</a>. 
                </li>
        </ul>
        <ul>
            </br>
        </ul>
    </ul>

    </ul>

</asp:Content>

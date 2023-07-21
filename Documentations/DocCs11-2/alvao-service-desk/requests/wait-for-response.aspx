<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Čekání na žadatele</h1>

    <p>U každého požadavku může systém sledovat dobu, po kterou řešitelský tým čekal na odpověď od žadatele při řešení požadavku. Doba čekání je vykazována prostřednictvím záznamů v protokolu požadavků.</p>

    <h3>Příklad:</h3>

    <table>
        <thead>
            <tr>
                <th>Čas</th>
                <th>Záznam v deníku</th>
                <th>Doba čekání žadatele</th>
                <th>Komentář</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>9:25</td>
                <td>E-mail od žadatele na servisní oddělení - podání požadavku.</td>
                <td>-</td>
                <td>Žadatel zadal požadavek.</td>
            </tr>
            <tr>
               <td>9:30</td> <td>E-mail od service desk žadateli - požadavek o doplňující informace</td> <td><strong>Uzavřeno</strong></td> <td>Hlavní řešitel zjistil, že specifikace požadavku je neúplná, a proto zaslal žadateli zprávu s žádostí o doplnění informací. Řešitelský tým se nemůže požadavkem zabývat, dokud žadatel neodpoví. Doba do obdržení odpovědi by proto měla být vykázána jako &quot;čekání na žadatele&quot;. Proto hlavní řešitel při odesílání zprávy ve formuláři <a href="../../list-of-windows/alvao-webapp/requests/request/message">zprávy</a> povolil možnost <em>Čekat na odpověď</em>        </tr>
            <tr>
               <td>9:40</td> <td>Telefonát od žadatele</td> <td><strong>Uzavřeno</strong></td> <td>Žadatel telefonuje hlavnímu řešiteli a společně si vyjasňují chybějící informace. Jelikož žadatel nezná všechny potřebné informace, dohodne se s hlavním řešitelem, že chybějící informace zjistí a zašle je žadateli e-mailem. Hlavní řešitel vloží záznam o telefonátu do deníku požadavku a zapne možnost <em>Waiting for Requester (Čekání na žadatele</em>), protože stále čeká na odpověď         </tr>
            <tr>
                <td>9:50</td>
                <td>Poznámka</td>
                <td>-</td>
                <td>Hlavní řešitel si uvědomí, že se během telefonátu dozvěděl důležité informace, které si nezapsal. Zapíše poznámku do protokolu požadavků a ponechá volbu <em>Čekání na žadatele</em> neaktivní. Tím se nezmění stav čekání z předchozího záznamu v protokolu.</td>
            </tr>
            <tr>
                <td>10:30</td>
                <td>E-mail od žadatele</td>
                <td><strong>Vypnuto</strong></td>
                <td>Žadatel odešle e-mail s potřebnými informacemi. Zpráva se automaticky načte do protokolu s vypnutou možností <em>Čekat na odpověď</em>.</td>
            </tr>
        </tbody>
    </table>

    <p>
        Doba mezi 9:30 a 10:30 se započítá do &quot;doby čekání na žadatele&quot; a bude uvedena ve <strong>sloupci</strong> v tabulce žádostí. Doba čekání na žadatele (hodiny)</strong> se zobrazí hodnota 1 </p>

    <p>V <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">tabulce žádostí</a> můžete sledovat čekací dobu pro žadatele v následujících sloupcích:</p>
    <ul>
        <li>Doba čekání žadatele (hodiny)</li>
        <li>Doba čekání žadatele (v hodinách)</li>
        <li>Doba otevření (hodiny)</li>
    </ul>

    <p>V protokolu žádostí se čekání na žadatele týkají následující sloupce:</p>

    <table>
        <thead>
            <tr>
                <th>Sloupec</th>
                <th>Komentář</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Doba čekání žadatele (v hodinách)</td>
                <td>U záznamů, které ukončují čekání (tj. <strong>čekání na žadatele</strong> je nastaveno na vypnuto), tento sloupec udává dobu v hodinách, po kterou tento záznam čeká. U ostatních záznamů je sloupec prázdný. </td>
            </tr>
            <tr>
                <td>Čekání žadatele</td>
                <td>
                    <table>
                        <thead>
                            <tr>
                                <th>Hodnota</th>
                                <th>Význam</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Ano</td>
                                <td>Začátek čekání</td>
                            </tr>
                            <tr>
                                <td>Ne</td>
                                <td>Konec čekání</td>
                            </tr>
                            <tr>
                                <td>-</td>
                                <td>Záznam nemá vliv na stav čekání (např. pracovní poznámky výzkumného týmu).</td>
                            </tr>
                        </tbody>
                    </table>
                    Hodnota v tomto sloupci odpovídá hodnotě <strong>přepínače Čekání na žadatele</strong> v okně pro editaci záznamů v deníku příkazem <strong>Upravit</strong>.</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Doba čekání a doba otevření požadavku se počítá v <a href="../implementation/services/operating-hours">provozní době,</a> která odpovídá požadavku, tj. v provozní době, která je nastavena pro <a href="../implementation/services/sla">SLA,</a> v jejímž rámci je požadavek řešen. 
    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Doba, po kterou žadatel čekal, se nesmí započítávat do doby, po kterou byl požadavek vyřešen. Termín vyřešení požadavku definovaný příslušnou <a href="../implementation/services/sla">SLA</a> se o dobu čekání zpozdí. To lze nastavit na stránce Správa - Service Desk - nastavení konkrétní <strong>SLA</strong> - Upravit - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/sla/create-sla">Vlastnosti</a> - volba <strong>Pozastavit SLA při čekání na žadatele</strong>   </div>

</asp:Content>
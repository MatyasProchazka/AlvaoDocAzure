<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Šablona zprávy</h1>
    <p>
        V tomto okně můžete definovat šablonu pro vlastní <a href="../../../../../alvao-service-desk/implementation/services/notifications">oznámení</a>.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Předmět</strong> - zadejte předmět zprávy       <ul>
                <li><strong>Vložit proměnnou</strong> - pomocí rozevírací nabídky vyberte proměnnou, kterou chcete vložit do předmětu zprávy na aktuální pozici kurzoru.</li>
            </ul>
            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                Na začátek předmětu vložte pomocí tlačítka <em>Vložit proměnnou</em> dvojici proměnných <em>Požadavek - značka</em> a <em>Požadavek - název</em>, které budou ve zprávě nahrazeny značkou a názvem konkrétního požadavku          </div>

        </li>
        <li><strong>Tělo zprávy </strong>- zadejte text zprávy. V textu můžete použít proměnné, viz tlačítko <em>Vložit proměnnou</em> pod vstupním polem.<br />
            Text zprávy je formátován podle stejného stylu, jaký používají standardní systémová oznámení. Pokud chcete nějaký text ve zprávě zobrazit tučně, vložte jej mezi značky &quot;&lt;b&gt;&quot; a &quot;&lt;/b&gt;&quot;. Jiné značky HTML nejsou podporovány.<ul>
                <li><strong>Vložit proměnnou</strong> - pomocí rozevírací nabídky vyberte proměnnou, kterou chcete vložit do textu zprávy na aktuální pozici kurzoru.</li>
            </ul>
        </li>
    </ul>

    <p>V předmětu nebo těle zprávy můžete použít následující proměnné:</p>
    <div class="wide">
        <table style="width: 1300px">
            <thead>
                <tr>
                    <th rowspan="2">Název</th>
                    <th rowspan="2">Proměnná</th>
                    <th rowspan="2">Popis</th>
                    <th colspan="2">Vlastní šablona oznámení</th>
                    <th rowspan="2"><a href="../process/detail/status-request/requester-notification-template">Šablona oznámení žadateli o změnu stavu</a></th>
                    <th rowspan="2"><a href="../process/detail/status-request/approval-message-template">Šablona zprávy o schválení</a></th>
                </tr>
                <tr>
                    <th>Předmět</th>
                    <th>Tělo zprávy</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Zpráva pro žadatele</td>
                    <td>[$MessageForRequester$]</td>
                    <td>Zpráva pro žadatele, kterou řešitel vyplní do pole, když je požadavek vyřešena, přeložena nebo znovu otevřena. Tuto proměnnou nelze použít v <a href="../../../../../alvao-service-desk/implementation/services/notifications">oznámeních</a> typu <em>Vytvořená požadavek</em><br />
                        V šabloně zprávy pro schvalovatele je to zpráva pro žadatele, kterou řešitel vypsal při řešení požadavku, včetně obrázků a příloh. Tuto proměnnou lze použít pouze pro schvalování ve stavu Vyřešeno.  </td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ne</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Komentář pro žadatele</td>
                    <td>[$CommentForRequester$]</td>
                    <td>Komentář výzkumného pracovníka pro žadatele. Místo tohoto tagu bude přidán komentář, který výzkumník uvedl ve formuláři <em>Přejít na stav</em>. Pokud výzkumník žádný komentář neuvede, bude proměnná obsahovat pomlčku. V šabloně doporučujeme, aby tato proměnná byla označena řádkem, například &quot;&lt;b&gt;Zpráva pro žadatele:&lt;/b&gt;&quot; nebo &quot;&lt;b&gt;Zpráva od řešitele:&lt;/b&gt;&quot;.</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ne</td>
                </tr>
                <tr>
                    <td>Výsledek schválování</td>
                    <td>[$ApprovalResultWithComment$]</td>
                    <td>Výsledek posledního schválování včetně komentáře schvalovatele. Pokud v žádosti nebylo žádné schválení, proměnná obsahuje pomlčku. Proměnnou můžete použít v <a href="../process/detail/status-request/requester-notification-template">oznámení o změně stavu žadateli</a> a v oznámení o vyřešení žádosti. </td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ne</td>
                </tr>
                <tr>
                    <td>Schválování - komentář pro schvalovatele</td>
                    <td>[$CommentForApprover$]</td>
                    <td>Místo tohoto tagu bude přidán komentář, který uživatel vyplnil při zahájení schvalování ve formuláři <em>Přejít na stav</em> nebo <em>Nechat schválit</em>.</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Schválování - tlačítka Schválit/Zamítnout (formulář)</td>
                    <td>[$ApprovalByForm$]</td>
                    <td>Schválit nebo odmítnout <em>Tlačítko pro</em> otevření formuláře pro schválení nebo odmítnutí žádosti. Toto tlačítko bude vloženo pouze do oznámení schvalovateli. Pokud je použito současně s proměnnou <span class="console">[$ApprovalByEmail$]</span>, bude název tlačítka <em>Approve nebo Reject na webu</em>. </td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Schválování - tlačítka Schválit/Zamítnout (e-mail)</td>
                    <td>[$ApprovalByEmail$]</td>
                    <td><em>Tlačítka</em> Schválit a Odmítnout pro schválení e-mailem. Když schvalovatel stiskne jedno z nich, otevře se okno s předvyplněnou novou zprávou, po jehož stisknutí Alvao požadavek schválí, resp. zamítne. Při současném použití s proměnnou <span class="console">[$ApprovalByForm$]</span> budou názvy tlačítek <em>Schválit e-mailem</em> a <em>Odmítnout e-mailem</em>.<br />
                        <div class="caution">
                           <div class="icon"></div>
                            <div class="title">Upozornění:</div>
                            Schválení e-mailem nerespektuje případnou logiku <a href="../../../../../modules/alvao-sd-custom-apps/custom-form-approval-template">vlastního schvalovacího/odmítacího formuláře</a>. Pokud některý z kroků schvalovacího schématu používá vlastní formulář pro schválení/odmítnutí, který se stará o další logiku, nepoužívejte v šabloně zprávy schvalovatele tlačítka pro schválení/odmítnutí e-mailem nebo přesuňte logiku formuláře do <a href="../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events">automatizovaných akcí založených na událostech v žádosti</a>        </div>
                    </td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Schválování - Schvalovatelé aktuálního kroku</td>
                    <td>[$ApprovalStepCurrentApprovers$]</td>
                    <td>Seznam aktuálních schvalovatelů včetně e-mailových adres ve tvaru &quot;Name &lt;email address&gt;&amp;quot. Jednotliví schvalovatelé jsou odděleni středníky.</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Schválování - vypršení platnosti aktuálního kroku</td>
                    <td>[$ApprovalStepExpirationTime$]</td>
                    <td>Čas vypršení platnosti aktuálního kroku schvalování.</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ne</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - číslo</td>
                    <td>[$TicketID$]</td>
                    <td>Číslo požadavku.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - značka</td>
                    <td>[$TicketMessageTag$]</td>
                    <td>Značka požadavku v e-mailech, např. &quot;T45412HD&quot;.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - název</td>
                    <td>[$TicketTitle$]</td>
                    <td>Název požadavku.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - termín&nbsp; první reakce</td>
                    <td>[$FirstReactionDeadline$]</td>
                    <td>Lhůta první reakce podle <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - termín vyřešení</td>
                    <td>[$TicketDeadline$]</td>
                    <td>Termín stanovený pro vyřešení požadavku.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žádost - zakládací zpráva - předmět</td>
                    <td>[$OriginalMessageSubject$]</td>
                    <td>Předmět původní zprávy, která vyvolala vytvoření nového požadavku.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žádost - základací zpráva - Text</td>
                    <td>[$OriginalMessage$]</td>
                    <td>Text původní zprávy, která vyvolala vytvoření nového požadavku.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žádost - zakládací zpráva - přílohy</td>
                    <td>[$OriginalMessageAttachments$]</td>
                    <td>Přílohy původní zprávy, která vyvolala vytvoření nové žádosti. Pokud chcete, aby hlášení obsahovalo tyto přílohy, vložte tuto proměnnou do textu zprávy na libovolné místo      <br />
                        Tuto proměnnou lze použít pouze pro vlastní oznámení řešiteli.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ne</td>
                    <td>Ne</td>
                </tr>
                <tr>
                    <td>Požadavek - zakládací zpráva - Seznam názvů příloh</td>
                    <td>[$OriginalMessageAttachmentList$]</td>
                    <td>Seznam názvů příloh původní zprávy, která vyvolala vytvoření nové žádosti, včetně názvů obrázků v textu zprávy.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - nejnovější důležitá událost</td>
                    <td>[$LatestImportantMessage$]</td>
                    <td>Text poslední <a href="../../../../../alvao-service-desk/requests/important-communication">důležité události</a> v protokolu požadavků, včetně obrázků a příloh.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - odkaz na požadavek</td>
                    <td>[$TicketUrl$]</td>
                    <td>Adresa URL požadavku v <a href="../../../../../alvao-service-desk/webApp">aplikaci ALVAO WebApp</a>.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - Odkaz na požadavek s tagem</td>
                    <td>[$TicketMessageTagLink$]</td>
                    <td>Tag požadavku jako odkaz na stránku požadavku ve <a href="../../../../../alvao-service-desk/webApp">webové aplikaci ALVAO</a>.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek&nbsp; - tabulka základních informací</td>
                    <td>[$TicketInfo$]</td>
                    <td>Tabulka základních informací požadavku.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - dotazník spokojenosti (URL)</td>
                    <td>[$FeedbackUrl$]</td>
                    <td>Odkaz na dotazník spokojenosti. Tato proměnná je součástí modulu <a href="../../../../../modules/alvao-satisfaction-feedback">ALVAO Zpětná vazba spokojenosti</a>.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - Dotazník spokojenosti</td>
                    <td>[$FeedbackGeneralForm$]</td>
                    <td>Grafický prvek, kterým může žadatel přímo v oznámení ohodnotit svou celkovou spokojenost s řešením požadavku.  Tuto proměnnou lze použít pouze v oznámeních zasílaných žadatelům. Tato proměnná je součástí modulu <a href="../../../../../modules/alvao-satisfaction-feedback">ALVAO Zpětná vazba spokojenosti</a>.</td>
                    <td>Ne</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - položky - systémové</td>
                    <td>-</td>
                    <td>Požadovat položky systému. V rozbalovací nabídce proměnné jsou uvedeny pouze položky, které jsou přiřazeny k procesu upravované služby.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadavek - Položky - Vlastní</td>
                    <td>[$tHdTicketCust<em>.ColumnName$</em>]</td>
                    <td>Vlastní položka požadavku, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tHdTicketCust</em>. V rozbalovací nabídce proměnné jsou uvedeny pouze položky, které jsou přiřazeny k procesu upravované služby nebo se zobrazují ve formuláři nového požadavku.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - název</td>
                    <td>[$TicketRequesterName$]</td>
                    <td>Jméno a příjmení žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - Mobil</td>
                    <td>[$TicketRequesterMobile$]</td>
                    <td>Mobilní telefon žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - e-mail</td>
                    <td>[$TicketRequesterEmail$]</td>
                    <td>E-mailová adresa žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - e-mail 2</td>
                    <td>[$TicketRequesterEmail2$]</td>
                    <td>Druhý e-mail žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - telefonní číslo</td>
                    <td>[$TicketRequesterPhoneToWork$]</td>
                    <td>Telefon žadatele do práce.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - telefonní číslo 2</td>
                    <td>[$TicketRequesterPhoneToWork2$]</td>
                    <td>Druhý telefon žadatele do práce.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - další kontakty</td>
                    <td>[$TicketRequesterOtherContacts$]</td>
                    <td>Další kontakty žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - oddělení</td>
                    <td>[$TicketRequesterDepartment$]</td>
                    <td>Oddělení žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - funkce</td>
                    <td>[$TicketRequesterPosition$]</td>
                    <td>Funkce Requester.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - kancelář</td>
                    <td>[$TicketRequesterOffice$]</td>
                    <td>Úřad žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - jméno nadřízeného</td>
                    <td>[$TicketRequesterManagerName$]</td>
                    <td>Jméno přímého nadřízeného žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - osobní číslo</td>
                    <td>[$TicketRequesterPersonalNumber$]</td>
                    <td>Osobní číslo žadatele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - organizace - název</td>
                    <td>[$TicketRequesterAccountName$]</td>
                    <td>Název žádající organizace.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - organizace - vlastní položky organizace</td>
                    <td>[$TicketRequesterAccount.<br />
                        tAccountCust<em>.ColumnName</em> $]</td>
                    <td>Vlastní položka organizace žadatele, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tAccountCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Žadatel - Ostatní - vlastní položky osoby</td>
                    <td>[$TicketRequester.tPersonCust.<em><br />ColumnName</em> $]</td>
                    <td>Vlastní položka žadatele, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tPersonCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Name</td>
                    <td>[$TicketRequestedForName$]</td>
                    <td>Jméno a příjmení uživatele, pro kterého je požadavek zadáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Mobil</td>
                    <td>[$TicketRequestedForMobile$]</td>
                    <td>Mobilní telefon uživatele, pro kterého je požadavek podán.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - E-mail</td>
                    <td>[$TicketRequestedForEmail$]</td>
                    <td>E-mail uživatele, pro kterého je požadavek zadáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - E-mail 2</td>
                    <td>[$TicketRequestedForEmail2$]</td>
                    <td>Druhý e-mail uživatele, pro kterého je požadavek zadán.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Telefon pro práci</td>
                    <td>[$TicketRequestedForPhoneToWork$]</td>
                    <td>Telefon do práce uživatele, pro kterého je požadavek zadáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Telefon do práce 2</td>
                    <td>[$TicketRequestedForPhoneToWork2$]</td>
                    <td>Druhý telefon do práce uživatele, pro kterého je požadavek zadán.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Ostatní kontakty</td>
                    <td>[$TicketRequestedForOtherContacts$]</td>
                    <td>Ostatní kontakty uživatele, pro kterého je požadavek zadán.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Oddělení</td>
                    <td>[$TicketRequestedForDepartment$]</td>
                    <td>Oddělení uživatele, pro kterého je požadavek zadáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadovánopro - Funkce</td>
                    <td>[$TicketRequestedForPosition$]</td>
                    <td>Funkce uživatele, pro kterého je požadavek podán.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Office</td>
                    <td>[$TicketRequestedForOffice$]</td>
                    <td>Kancelář uživatele, pro kterého je požadavek podáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Jméno nadřízeného</td>
                    <td>[$TicketRequestedForManagerName$]</td>
                    <td>Jméno přímého nadřízeného uživatele, pro kterého je požadavek podán.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadovánoo pro - Osobní číslo</td>
                    <td>[$TicketRequestedForPersonalNumber$]</td>
                    <td>Osobní číslo uživatele, pro kterého je požadavek podáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Organizace - Jméno</td>
                    <td>[$TicketRequestedForAccountName$]</td>
                    <td>Název organizace uživatele, pro kterého je požadavek podáván.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno pro - Organizace - Vlastní položky organizace</td>
                    <td>[$TicketRequestedForAccount.<br />
                        tAccountCust<em>.ColumnName</em> $]</td>
                    <td>Vlastní položka organizace uživatele, pro kterého je požadavek vytvořen, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tAccountCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Požadováno - Ostatní - Vlastní položky osoby</td>
                    <td>[$TicketRequestedFor.<br />
                        tPersonCust<em>.ColumnName</em> $]</td>
                    <td>Vlastní položka uživatele, pro kterého je požadavek zadáván, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tPersonCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - Název</td>
                    <td>[$TicketSolverName$]</td>
                    <td>Jméno a příjmení řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - mobilní telefon</td>
                    <td>[$TicketSolverMobile$]</td>
                    <td>Řešitelův mobilní telefon.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - E-mail</td>
                    <td>[$TicketSolverEmail$]</td>
                    <td>E-mail řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - E-mail 2</td>
                    <td>[$TicketSolverEmail2$]</td>
                    <td>Druhý e-mail řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - telefon do práce</td>
                    <td>[$TicketSolverPhoneToWork$]</td>
                    <td>Řešitelův telefon do práce.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - telefon do práce 2</td>
                    <td>[$TicketSolverPhoneToWork2$]</td>
                    <td>Řešitelův druhý telefon do práce.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - Další kontakty</td>
                    <td>[$TicketSolverOtherContacts$]</td>
                    <td>Další kontakty řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Ředitel - oddělení</td>
                    <td>[$TicketSolverDepartment$]</td>
                    <td>Oddělení řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - funkce</td>
                    <td>[$TicketSolverPosition$]</td>
                    <td>Funkce řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - kancelář</td>
                    <td>[$TicketSolverOffice$]</td>
                    <td>Kancelář řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - jméno nadřízeného</td>
                    <td>[$TicketSolverManagerName$]</td>
                    <td>Jméno přímého nadřízeného řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - osobní číslo</td>
                    <td>[$TicketSolverPersonalNumber$]</td>
                    <td>Osobní číslo řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - organizace - jméno</td>
                    <td>[$TicketSolverAccountName$]</td>
                    <td>Název organizace řešitele.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - Organizace - Vlastní položky organizace</td>
                    <td>[$TicketSolverAccount.<br />
                        tAccountCust<em>.ColumnName</em> $]</td>
                    <td>Vlastní položka organizace řešitele, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tAccountCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Řešitel - Ostatní - Vlastní položky osoby</td>
                    <td>[$TicketSolver.tPersonCust.<em><br />ColumnName</em> $]</td>
                    <td>Vlastní položka Solveru, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tPersonCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Název služby</td>
                    <td>[$TicketService$]</td>
                    <td>Název <a href="../../../../../alvao-service-desk/implementation/services">služby</a> včetně cesty ve stromu služeb.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Služba - Telefon</td>
                    <td>[$TicketServicePhone$]</td>
                    <td>Telefonní číslo služby.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Doručování - procesní</td>
                    <td>[$TicketServiceProcess$]</td>
                    <td>Název <a href="../../../../../alvao-service-desk/implementation/services/processes">procesu</a> služby.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>Služba - položky vlastní služby</td>
                    <td>[$TicketService.tHdSectionCust.<em><br />ColumnName</em> $]</td>
                    <td>Vlastní položka služby, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tHdSectionCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>SLA - Název</td>
                    <td>[$TicketSLA$]</td>
                    <td>Název požadavku <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
                <tr>
                    <td>SLA - Vlastní položky SLA</td>
                    <td>[$TicketSLA.tSlaCust<em>.ColumnName$</em>]</td>
                    <td>Vlastní položka SLA, kde <em>ColumnName</em> představuje název příslušného sloupce v tabulce <em>tHdSectionCust</em>.</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                    <td>Ano</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>

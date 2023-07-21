<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


    <h1>Oznámení</h1>

    <p>Oznámení jsou zprávy o konkrétní události (např. řešení, změna termínu atd.) související s konkrétním požadavkem, které ALVAO Service Desk automaticky zasílá příjemcům.</p>
    <h2>Další oznámení</h2>

    <p>Oznámení jsou rozdělena do dvou základních skupin:</p>

    <ul>
       <li><strong>Oznámení řešiteli</strong> - systém automaticky zasílá řešiteli zprávu o následujících událostech. Pokud požadavek nemá řešitele, ale je přiřazen do skupiny řešitelů, pak je zpráva zaslána všem členům této skupiny. Pokud požadavek nemá řešitele ani skupinu řešitelů, pak je zpráva zaslána všem hlavním řešitelům služby. <li><strong>Vytvořený požadavek</strong></li> <li><strong>Přijatá nová zpráva</strong> - když je přijata zpráva k požadavku.</li> <li> <div class="note"> <div class="icon"></div><div class="title">Poznámka:</div>Pokud je požadavek v procesu schvalování, obdrží oznámení o přijetí nové zprávy také schvalovatelé požadavku.</div></li> <li> <div class="note"> <div class="icon"></div><div class="title">Poznámka:</div>Příjemcům původní zprávy není zasláno žádné oznámení. </div>
                
                
                   </li> <li> <div class="note"> <div class="icon"></div> </div>
                   <div class="note"> <div class="title">Poznámka:</div>Pokud je zpráva nedoručitelným e-mailem odeslaným ze Service Desku nebo je e-mail odesílatele v seznamu <a href="../../requests/new-request">MailerDaemons</a>, oznámení se neodesílá. </div> </li> <li><strong>Požadavek přiřazen</strong> - oznámení řešiteli, kterému byl požadavek přiřazen, a předchozímu řešiteli požadavku (pokud existuje).<br /><div class="note"> <div class="icon"></div> <div class="title">Poznámka:</div>Pokud je požadavek přiřazen jeho současným řešitelem, není tomuto řešiteli zasláno žádné oznámení, pokud je požadavek přiřazen jinému řešiteli. </div>
                
                
                   </li> <li> <div class="note"> <div class="icon"></div> </div>
                   <div class="note"> <div class="title">Poznámka:</div> </div> </li>V <li> <div class="note">případě, že řešitel převzal požadavek k řešení, oznámení o předání požadavku se nezasílá. </div> </li> <li><strong>Znovuotevřený požadavek</strong> - při znovuotevření požadavku (pro řešení po jeho uzavření).</li> <li><strong>Požadavek přesunutý do této služby</strong><br /><div class="note"> <div class="icon"></div> <div class="title">Poznámka:</div> </div> </li>V <li> <div class="note">případě, že se změnou služby mění i řešitel nebo skupina řešitelů, oznámení se zašle novému řešiteli nebo členům skupiny řešitelů (případně hlavním řešitelům, pokud byl řešitel z požadavku vyřazen, například z důvodu nedostatečných práv </div>).
                
                
                   </li> <li> <div class="note"> <div class="icon"></div> </div>
                   <div class="note"> <div class="title">Poznámka:</div>Pokud existující řešitel přesune požadavek a přesunem nedojde k odstranění požadavku, nebude mu při přesunu požadavku do jiné služby zasláno žádné oznámení.</div></li> <li><strong>Požadavek vrácen hlavním řešitelům</strong>- oznámení všem hlavním řešitelům služby    </ul>
    </li>
  
 <li><strong>Oznámení žadateli</strong> - systém automaticky zašle žadateli zprávu o následujících událostech. 
     <ul>
         <li><strong>Vytvoření požadavku</strong></li>
         <li><strong>Změna termínu vyřízení požadavku</strong> - při změně termínu vyřízení požadavku.</li>
         <li><strong>Požadavek vyřešene</strong> - oznámení se zprávou od uživatele, který požadavek vyřešil.</li>
         <li><strong>Požadavek znovuotevřen</strong> - když je požadavek znovuotevřen (k vyřešení poté, co byla uzavřen).</li>
     </ul>
 </li>

    </ul>
  <h2>Úrovně oznámení</h2>
    <p>Oznámení lze nastavit na několika úrovních. Pokud je oznámení povoleno nebo zakázáno na více úrovních současně, použije se nastavení, které je v následující tabulce nejvyšší. Pokud není na nejvyšší úrovni nastaveno žádné oznámení, použije se nastavení z nižší úrovně:</p>

    <table>
        <tbody>
            <tr>
                <td>Uživatelské nastavení pro konkrétní službu</td>
                <td>
                    <p>
                        Každý uživatel jej může změnit v </p>
                    <ul>
                        <li><strong>ALVAO WebApp - Uživatelské menu - Nastavení</strong> - <a href="../../../list-of-windows/alvao-webapp/settings/custom-notification-settings">Oznámení</a></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Uživatelské nastavení společné pro všechny služby</td>
                <td>Každý uživatel jej může změnit výběrem možnosti <strong>&lt;Všechny služby&gt;</strong> v <ul>
                        <li><strong>ALVAO WebApp - Uživatelské menu - Nastavení</strong> - <a href="../../../list-of-windows/alvao-webapp/settings/custom-notification-settings">Oznámení</a></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Nastavení specifické pro danou službu</td>
                <td>Toto nastavení provádí správce Alvao v <strong>ALVAO WebApp - Správa - Service Desk - Služby - Upravit (vlastnosti)</strong>- <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/notification">Oznámení</a>.</td>
            </tr>
            <tr>
                <td>Společné nastavení pro všechny služby</td>
                <td>Toto nastavení provádí správce Alvao v aplikaci <b>ALVAO WebApp - Administration - Service Desk - Settings</b> - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/settings/notification">Notifications</a><table>
     <thead>
         <tr>
             <th>Oznámení řešiteli</th>
             <th>Výchozí nastavení</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td>Odeslaný požadavek</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Požadavek vytvořen</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Požadavek přesunut do této služby</td>
             <td>Neodesílat</td>
         </tr>
         <tr>
             <td>Požadavek otevřen</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Přijata nová zpráva</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Požadavek vrácen hlavním řešitelům</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <th>Oznámení žadateli</th>
             <th>Výchozí nastavení</th>
         </tr>
         <tr>
             <td>Vytvořená požadavek</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Změna lhůty pro podání požadavku</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Požadavek vyřízen</td>
             <td>Odeslat</td>
         </tr>
         <tr>
             <td>Požadavek otevřen</td>
             <td>Odeslat</td>
         </tr>
     </tbody>
 </table>
                </td>
            </tr>
        </tbody>
    </table>

    <h2>Vlastní oznámení</h2>

    <p>
        Výchozí texty oznámení můžete nahradit vlastními oznámeními. Vlastní oznámení se nastavují pro každou službu v <strong>aplikaci ALVAO WebApp - Správa - Service Desk - Služby - Upravit (vlastnosti) </strong>- sekce <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/notification">Oznámení</a>   </p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: </div>
        Vlastní oznámení můžete definovat i ve více <a href="../multi-languages">jazycích</a>   </div>


    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Vlastní oznámení můžete nastavit také hromadně pro více služeb najednou takto: v<strong>ALVAO WebApp - Manage</strong> ve stromu služeb vyberte z nabídky možnost <strong>Zobrazit jako tabulku</strong>, v seznamu vyberte služby, pro které chcete nastavit vlastní oznámení, a v místní nabídce vyberte možnost <strong>Upravit (vlastnosti</strong> ). V části <strong>Notifications (Oznámení)</strong> nastavte vlastní oznámení    </div>

    <h3>Oznámení pro členy výzkumného týmu</h3>

    <p>Do předmětu oznámení určených členům výzkumného týmu můžete přidat vlastní doplňující text. Text se přidá za původní předmět s pomlčkou. Tato úprava je globální pro všechny služby.</p>

    <p>
        Chcete-li přidat text do předmětu, použijte tento skript SQL:<br />
       <span class="console">UPDATE tProperty SET sPropertyValue = 'zde zadejte další textový řetězec' WHERE sProperty = 'ServiceDesk.OperatorsNotificationsSubject</span>'    </p>

    <p>V textovém řetězci lze použít následující proměnné:</p>

    <table>
        <thead>
            <tr>
                <th>Proměnná</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>[$TicketID$]</td>
                <td>Číslo požadavku.</td>
            </tr>
            <tr>
                <td>[$TicketDeadline$]</td>
                <td>Termín vyřešení požadavku</td>
            </tr>
            <tr>
                <td>[$TicketSLA$]</td>
                <td>Název SLA požadavku</td>
            </tr>
            <tr>
                <td>[$TicketService$]</td>
                <td>Název služby</td>
            </tr>
            <tr>
                <td>[$TicketServicePhone$]</td>
                <td>Telefonní číslo služby</td>
            </tr>
            <tr>
                <td>[$TicketUserCompany$]</td>
                <td>Organizace žadatele</td>
            </tr>
            <tr>
                <td>[$TicketUserOffice$]</td>
                <td>Kancelář žadatele</td>
            </tr>
        </tbody>
    </table>

    <p>
        Chcete-li obnovit výchozí objekt, použijte tento skript SQL:<br />
       <span class="console">UPDATE tProperty SET sPropertyValue = NULL WHERE sProperty = 'ServiceDesk.OperatorsNotificationsSubject</span>'    </p>

</asp:Content>

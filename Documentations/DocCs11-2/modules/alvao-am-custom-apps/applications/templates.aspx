<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<%@ Import Namespace="DocCs.App_Code" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Šablony aplikací</h1>

    <p>
        Šablony aplikací jsou hotové aplikace, které můžete ihned použít (viz níže <em>Instalace aplikací</em> ), nebo si je můžete přizpůsobit a vytvořit si vlastní aplikace se specifickými funkcemi. 
    </p>

    <table>
        <thead>
            <tr>
                <th>Šablony</th>
                <th>Popis</th>
                <th>Předpoklady</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectIntune.xml" download>ObjectIntune.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/objects/object">Objekt</a> přidá příkaz <b translate="no">MS Intune</b>, který otevře stránku MS Intune reprezentující vybraný objekt na základě vlastnosti <i translate="no">Intune device id</i>. 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectManufacturerSupport.xml" download>ObjectManufacturerSupport.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/objects/object">Objekt</a> přidá příkaz <b>Podpora výrobce</b>, který otevře webovou stránku výrobce reprezentující vybraný objekt na základě vlastností objektu <i translate="no">Manufacturer</i>, a <i translate="no">Serial number</i> (nebo <i translate="no">BIOS serial number</i>). Funguje pouze pro výrobce Dell a Lenovo. 
                    <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectChatWithUser.xml" download>ObjectChatWithUser.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/objects/object">objektu</a> přidá příkaz <b translate="no">Chat with user</b>, který spustí chat Microsoft Teams s uživatelem, který je za objekt zodpovědný nebo byl pověřen jeho používáním. 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketCreateTaskInToDo.xml" download>TicketCreateTaskInToDo.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/requests/request">Požadavek</a> přidá příkaz <b translate="no">Create task</b>, který vytvoří nový úkol v aplikaci MS To Do  <br />
                    Pro zobrazení příkazu musí být uživatel členem řešitelského týmu služby a musí být importován z AAD. Pro vytvoření úkolu musí být povoleno oprávnění <i translate="no">Microsoft Graph Tasks.ReadWrite</i> <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketCreateOutlookMeeting.xml" download>TicketCreateOutlookMeeting.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/requests/request">Požadavek</a> přidá příkaz <b translate="no">Create meeting</b>, který vytvoří nový úkol v kalendáři MS Outlook       <br />
                    Pro zobrazení příkazu musí být uživatel členem řešitelského týmu služby       <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketCostsCalculation.xml" download>TicketCostsCalculation.xml</a></td>
                <td>Příkaz sečte hodnoty z uživatelských polí <em>SW náklady</em> a <em>HW náklady</em> pro požadavek          <br />
                    Pro provedení příkladu je nutné přidat vlastní pole <i translate="no">costSW</i>, <i translate="no">costHW</i> a <i translate="no">costTotal</i> typu <i translate="no">int</i> do tabulky <i translate="no">tHdTicketCust</i> <br />
                    Dále pomocí <i translate="no">StateId</i> a pomocí <i translate="no">ServiceId</i> zadejte, kde se má požadavek zobrazit        <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketOpenAttachments.xml" download>TicketOpenAttachments.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/requests/request">požadavku</a> přidá příkaz <b>Otevřít přílohy</b> pro otevření odkazu na přílohu uloženou ve vlastním poli <i>Přílohy</i> požadavku          <br />
                    Pro provedení příkladu vyžaduje přidání <a href="../../../list-of-windows/alvao-webapp/administration/custom-items">vlastního pole s</a> názvem <i translate="no">Attachments</i> typu <i translate="no">nvarchar</i> do tabulky <i translate="no">tHdTicketCust</i> <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/MultilingualCommand.xml" download>MultilingualCommand.xml</a></td>
                <td>Příklad vícejazyčné aplikace. 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ReportProblem.xml" download>ReportProblem.xml</a></td>
                <td>Přidává příkaz <b translate="no">Report problem</b> do hlavní nabídky. Pomocí tohoto příkazu může žadatel nahlásit problém prostřednictvím <i>katalogu služeb</i>      <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/custom-commands/general-custom-commands" translate="no">IGeneralCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ApproveByGroupMember.xml" download>ApproveByGroupMember.xml</a></td>
                <td>Při zahájení schvalování požadavku tato aplikace automaticky přidá člena určité skupiny uživatelů na kartu Schvalování požadavku. 
                    Člen skupiny je vybrán podle hodnoty pole Office, která se musí rovnat hodnotě pole Office zadavatele požadavku          <br />
                    Pro spuštění příkladu se předpokládá, že do tabulky <i translate="no">TicketStateCust</i> bude přidáno vlastní pole <i translate="no">ApprovalGroupName</i> typu <i translate="no">nvarchar</i> <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions" translate="no">ITicketAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/AssignToTester.xml" download>AssignToTester.xml</a></td>
                <td>Tato aplikace automaticky přiřadí požadavek řešiteli ze skupiny Testers, pokud je požadavek ve službě <i translate="no">Program Modifications</i> a ve stavu s ID 1 <br />
                    Pro spuštění příkladu se předpokládá, že do tabulky <i translate="no">tHdTicketCust</i> bude přidáno vlastní pole <i translate="no">solvedInVersion</i> typu <i translate="no">nvarchar</i> <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions" translate="no">ITicketAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CreateAnalysis.xml" download>CreateAnalysis.xml</a></td>
                <td>Při vytvoření nového požadavku ve službě <em>Úpravy programu</em> se ve službě <i translate="no">Program modifications/Designs and analyses</i> vytvoří také propojený požadavek, který vytvoří návrh pro vytvořený požadavek          <br />
                    Pro spuštění příkladu se předpokládá, že do tabulky <i translate="no">tHdTicketCust</i> bude přidáno vlastní pole <i translate="no">createAnalysis</i> typu <i translate="no">bool</i> <br />
                    Vzor obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions" translate="no">ITicketAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/SendMailsAboutNewEvent.xml" download>SendMailsAboutNewEvent.xml</a></td>
                <td>Když je v požadavku ve službě <i translate="no">Program Modifications</i> vytvořena událost, je tato událost předána e-mailem každému správci služby, pokud není autorem nebo příjemcem události (nebo pokud není jeho účet zakázán). 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/act-custom-actions" translate="no">IActAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/DeclineMessageSendCustomNotification.xml" download>DeclineMessageSendCustomNotification.xml</a></td>
                <td>Upravuje oznámení o odmítnutí zprávy, pokud odesílatel nemá žádnou <i>SLA</i>  <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/mail-message-custom-actions" translate="no">IMailMessageAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/AssignToSolverByEmail.xml" download>AssignToSolverByEmail.xml</a></td>
                <td>Při načítání zprávy se v textu zprávy pro existující požadavek zkoumá, zda je v něm příkaz, který se má předat řešiteli <i translate="no">ASSIGNTO: solver name</i>. Pokud je příkaz nalezen a řešitel je nalezen podle jména, požadavek se automaticky přiřadí řešiteli a zpráva se nezaznamená do protokolu požadavků.  V opačném případě je zpráva zpracována standardním způsobem. 
                    <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/mail-message-custom-actions" translate="no">IMailMessageAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/OrderAfterApproval.xml" download>OrderAfterApproval.xml</a></td>
                <td>Pokud je požadavek schválen ve službě <i translate="no">Purchase</i> všemi schvalovateli, přejde požadavek do stavu <i translate="no">Order</i> <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-approval-custom-actions" translate="no">ITicketApprovalAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectKnowledgeBase.xml" download>ObjectKnowledgeBase.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/objects/object">Objekt</a> přidává záložku <b>Znalostní báze</b> zobrazující články znalostní báze, které obsahují výrobce a model objektu. 
                    <br />
                    Šablona obsahuje následující typy rozšíření programu:: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IEntityTab</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketKnowledgeBase.xml" download>TicketKnowledgeBase.xml</a></td>
                <td>Na stránku <a href="../../../list-of-windows/alvao-webapp/requests/request">Požadavek</a> přidá záložku <b>Znalostní báze</b> zobrazující seznam příslušných článků znalostní báze (přiřazených k požadavku služby) členům řešitelského týmu služby       <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IEntityTab</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketShowRequesterAddress.xml" download>TicketShowRequesterAddress.xml</a></td>
                <td>Pokud je vybraný požadavek v definované službě a stavu, zobrazí se na stránce <a href="../../../list-of-windows/alvao-webapp/requests/request">požadavku</a> záložka <b>Zobrazit adresu zadavatele požadavku</b> s adresou zadavatele požadavku (podle organizace) v mapě     <br />
                    <br />

                    Příklad pracuje s třídami, jejichž knihovny nejsou součástí výchozího souboru <em translate="no">CodeExtension_Template.cs</em> <br />
                    Jedná se o třídy <span translate="no">WebClient</span>WebClient, <span translate="no">XmlDocument</span> a <span translate="no">StringBuilder</span> <br />
                    Pro správnou funkčnost příkladu byly na začátek souboru přidány následující knihovny: System.Net, System.Xml, System.Text.<br />

                    <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IEntityTab</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketAutoClose.xml" download>TicketAutoClose.xml</a></td>
                <td>Tato aplikace automaticky uzavře vyřešený požadavek poté, co uplyne lhůta, ve které může žadatel požadavek znovu otevřít. 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/AutoCloseInactiveTickets.xml" download>AutoCloseInactiveTickets.xml</a></td>
                <td>U vyřešených žádostí se kontroluje, zda již uplynula lhůta pro žadatele na opětovné otevření požadavků (dny), a vypíná se automatický přechod do stavu <em>Uzavřeno</em>. Pokud tyto požadavky nejsou uzavřeny do 14 dnů, jsou automaticky uzavřeny. 
                    <br />
                    Šablona obsahuje následující typy rozšíření programu: <a href="../../alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/UpdateSuperiorGroup.xml" download>UpdateSuperiorGroup.xml</a></td>
                <td>Tato aplikace automaticky vyplní určitou skupinu uživatelů všemi nadřízenými uživateli z dané organizace. Tuto skupinu uživatelů lze pak použít například v definici vlastního pole typu Uživatel. 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CheckObjectMandatoryProperties.xml" download>CheckObjectMandatoryProperties.xml</a></td>
                <td>Objekty, které nemají vyplněny všechny povinné vlastnosti, nelze přesunout ze <i>skladu</i> na jiné místo ve stromu objektů        <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-object-move" translate="no">IObjectMoveAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td><a href="/<% Page.RenderVersion(); %>/apps/templates/SetComputerDetectionProfile.xml" download>SetComputerDetectionProfile.xml</a></td>
                <td>Při přesunu počítače ze <i>skladu</i> se počítači automaticky přiřadí detekční profil s názvem <i translate="no">Standard</i> <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-object-move" translate="no">IObjectMoveAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CheckPhoneNumberFormat.xml" download>CheckPhoneNumberFormat.xml</a></td>
                <td>Tato aplikace kontroluje formát nové hodnoty vlastnosti objektu <i translate="no">Phone number</i> <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-property-change" translate="no">IObjectPropertyAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CopyNewPropertyValueToAnotherProperty.xml" download>CopyNewPropertyValueToAnotherProperty.xml</a></td>
                <td>Tato aplikace zapíše novou hodnotu vlastnosti <i translate="no">Phone number</i> do vlastnosti <i translate="no">Phone</i> téhož objektu, pokud je prázdná. 
                    <br />
                    Šablona obsahuje následující typy programových rozšíření: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-property-change" translate="no">IObjectPropertyAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
        </tbody>
    </table>

    <h2>Instalace aplikace</h2>

    <ol>
        <li>Stáhněte si soubor s vybranou šablonou do počítače.</li>
        <li>V nabídce <strong>WebApp - Administrace - </strong><a href="../../../list-of-windows/alvao-webapp/administration/applications">Aplikace</a>pomocí příkazu <strong>Importovat</strong> importujte stažený soubor.  </li>
        <li>Pomocí příkazu <strong>Upravit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">Skripty</a>upravte skript <strong>Nastavení</strong> podle pokynů v něm uvedených tak, aby nastavení aplikace odpovídalo nastavení Alvao.  Změny uložte pomocí příkazu <strong>Compile and Save</strong>   </li>
        <li>Nakonec v nabídce <strong>WebApp - Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/applications">Applications</a>příkazem <strong>Allow</strong> povolte spuštění aplikace.  </li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Plná zpětná kompatibilita skriptů není zaručena.  Je možné, že při upgradu systému Alvao na další verzi bude nutné skripty aplikace aktualizovat pomocí šablon pro aktuální verzi systému Alvao. 
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContentPlaceHolder">
</asp:Content>


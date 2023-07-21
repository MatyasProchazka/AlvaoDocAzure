<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">ITicketAutoAction</h1>
    Implementací rozhraní ITicketAutoAction ve <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní akce na základě změny hodnoty položky požadavku nebo reagovat na nově vytvořený požadavek    <br />
    V nově vytvořeném skriptu nastavte v konstruktoru třídy action hodnotu vlastnosti Name (název automatické akce)    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro uložení vlastností a nastavení akcí doporučujeme definovat třídu <em>Settings</em> v samostatném skriptu, který vytvoříte ze šablony <em>Class Library</em>      <br />
    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud chcete v automatické akci používat jen některé metody implementovaného rozhraní, ponechte v těle ostatních metod z rozhraní výjimku: <span class="console" translate="no">throw new NotImplementedException();</span></div>

    <h2>Metody rozhraní</h2>
    <table>
        <thead>
            <tr>
                <th>Metoda</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="#OnTicketChanged">OnTicketChanged</a></td>
                <td>Změna položky požadavku.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnTicketCreated">OnTicketCreated</a></td>
                <td>Vytvoření požadavku.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnTicketChanged">OnTicketChanged</h2>
    Vlastní akce založená na změně hodnoty položky požadavku (vlastní/systémová)    <br />
    V implementované metodě definujte jak podmínky pro provedení operace, tak samotné operace    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnTicketChanged(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>, string <b translate="no">properties</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlPřipojení k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce databáze.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId), ke kterému se vlastní akce vztahuje.</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), který akci na požadavku provedl. V některých případech to může být systém, pak je hodnota NULL.</li>
                <li><strong translate="no">properties</strong> - změněné položky požadavku oddělené čárkou<em>(table.column)</em><table>
     <thead>
         <tr>
             <th>table.column</th>
             <th>Položka požadavku</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td translate="no">tHdTicket.TicketStateId</td>
             <td>Stav</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketSlaId</td>
             <td>SLA</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.dHdTicketDeadline</td>
             <td>Termín</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketHdSectionId</td>
             <td>Služba</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.iHdTicketUser</td>
             <td>Žadatel</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketSolverPersonId</td>
             <td>Řešitel</td>
         </tr>

         <tr>
             <td translate="no">tHdTicket.SolverGroupRoleId</td>
             <td>Skupina řešitelů</td>
         </tr>

         <tr>
             <td translate="no">tHdTicket.sHdTicket</td>
             <td>Název požadavku</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketPriorityId</td>
             <td>Priorita</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.Impact</td>
             <td>Dopad</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.Urgency</td>
             <td>Naléhavost</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.mHdTicketNotice</td>
             <td>Poznámky</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.sHdTicketGroup</td>
             <td>Skupina</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.sHdTicketDeviceCode</td>
             <td>Číslo zařízení</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackSolveSpeed</td>
             <td>Rychlost řešení</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackProfessionality</td>
             <td>Profesionalita </td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackExpertise</td>
             <td>Odbornost</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackComment</td>
             <td>Komentáře a poznámky</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.RelatedAccountId</td>
             <td>Související organizace</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.Objects</td>
             <td>Objekty</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.RequestedForPersonId</td>
             <td>Požadováno pro</td>
         </tr>
         <tr>
             <td translate="no">tHdTicketCust.*</td>
             <td>Vlastní položka</td>
         </tr>
          
     </tbody>
 </table>
                </li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

    Příklad použití viz šablona aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">AssignToTester</a>. <h2 id="OnTicketCreated" translate="no">OnTicketCreated</h2>Vlastní akce na základě vytvoření požadavku    <br />
    V implementované metodě definujte jak podmínky pro provedení operací, tak operace se samotným požadavkem    <ul>
        <li>Syntaxe: Zadejte požadavek, který má být vyřízen: <b translate="no">void</b> OnTicketCreated(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce s databází.</li>
                <li><strong translate="no">ticketId</strong> - ID nového požadavku (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), který požadavek vytvořil (nemusí to být vždy žadatel).</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

    Příklad použití viz šablona aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CreateAnalysis</a> </asp:Content>

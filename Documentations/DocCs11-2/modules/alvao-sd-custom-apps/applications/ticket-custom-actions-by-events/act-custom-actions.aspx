<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">IActAutoAction</h1>
    Implementací rozhraní IActAutoAction ve <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní akce při vytváření události na požadavek    <br />
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
                <td translate="no"><a href="#OnActChanged">OnActChanged</a></td>
                <td>Událost úprav.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnActCreated">OnActCreated</a></td>
                <td>Vytvoření události.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnActRemoved">OnActRemoved</a></td>
                <td>Smazání události.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="OnActChanged" translate="no">OnActChanged</h2>
    Vlastní akce na základě úpravy události    <br />
    V implementované metodě definujte jak podmínky pro provedení operací, tak samotné operace události    <ul>
        <li>Syntaxe: <b>void</b> OnActChanged(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">actId</b>, int <b translate="no">personId</b>, <span translate="no">string</span> <b translate="no">properties</b> )</li>
        <li>Parametry         <ul>
                <li translate="no"><strong>con</strong> - SqlConnection to the database.</li>
                <li translate="no"><strong>trans</strong> - SqlTransaction of the database transaction in progress.</li>
                <li translate="no"><strong>actId</strong> - The ID of the event (tAct.iActId) that was changed.</li>
                <li translate="no"><strong>personId</strong> - The ID of the user (tPerson.iPersonId) who changed the event.</li>
                <li translate="no"><strong>properties</strong> - the changed event items separated by a comma (<em>table.column</em>).
 <table>
     <thead>
         <tr>
             <th>table.column</th>
             <th>Event Item</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td translate="no">tAct.dAct</td>
             <td>Date</td>
         </tr>
         <tr>
             <td translate="no">tAct.liActKindId</td>
             <td>To whom</td>
         </tr>
         <tr>
             <td translate="no">tAct.sActTo</td>
             <td>Date</td>
         </tr>
         <tr>
             <td translate="no">tAct.sAct</td>
             <td>Subject</td>
         </tr>
         <tr>
             <td translate="no">tAct.mActNotice</td>
             <td>Text</td>
         </tr>
         <tr>
             <td translate="no">tDocument.liDocumentActId</td>
             <td>Attachments</td>
         </tr>
         <tr>
             <td translate="no">tActHd.bActHdUserRead</td>
             <td>Show Requester</td>
         </tr>
         <tr>
             <td translate="no">tAct.bWaitingForUser</td>
             <td>Waiting for a requester</td>
         </tr>
         <tr>
             <td translate="no">tAct.nActWorkHours</td>
             <td>Work</td>
         </tr>
         <tr>
             <td translate="no">tAct.nActTravelHours</td>
             <td>Travel time</td>
         </tr>
         <tr>
             <td translate="no">tAct.nActTravelKm</td>
             <td>Distance</td>
         </tr>
         <tr>
             <td translate="no">tAct.bNoCharge</td>
             <td>NoCharge</td>
         </tr>
     </tbody>
 </table>
                </li>
            </ul>
        </li>
        <li>Návratová hodnota: <b>žádná</b>.</li>
    </ul>

   <h2 id="OnActCreated" translate="no">OnActCreated</h2>
    Vlastní akce na základě vytvoření události    <br />
    V implementované metodě definujte jak podmínky pro provedení operace, tak samotné operace události    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnActCreated(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">actId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlPřipojení k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce databáze.</li>
                <li><strong translate="no">actId</strong> - ID nově vytvořené události (tAct.iActId).</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), který událost vytvořil.</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

    Automatické akce lze provádět v následujících situacích:<ul>
        <li>Ruční vytvoření libovolné události pomocí příkazu <em>Nová událost</em> nebo <em>Poznámka</em>.</li>
        <li>Odeslání zprávy pomocí příkazu <em>Odeslat zprávu</em>, <em>Odpovědět</em> atd.</li>
        <li>Přečtení e-mailu ze služební schránky pomocí služby Alvao.</li>
        <li>Ruční načtení zprávy z aplikace Outlook pomocí funkce <em>ALVAO for Outlook - Uložit do protokolu požadavků</em>.</li>
        <li>Vytvoření spouštěcí události při vytvoření nového požadavku.</li>
        <li>Volání webové metody <em>CreateAct</em> nebo <em>CreateTicket</em> pro vytvoření zakládající zprávy.</li>
    </ul>

    Příklad použití najdete v šabloně aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">SendMailsAboutNewEvent</a>. <h2 id="OnActRemoved" translate="no">OnActRemoved</h2>Vlastní akce na základě odstranění události    <br />
    V implementované metodě definujte jak podmínky pro provedení operací, tak samotné operace s událostmi    <ul>
        <li>Syntaxe: V případě, že se jedná o událost, která se stane součástí události, zadejte její název: <b translate="no">void</b> OnActRemoved(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">actId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlPřipojení k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce databáze.</li>
                <li><strong translate="no">actId</strong> - ID odstraňované události (tAct.iActId).</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), který událost odstranil.</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

</asp:Content>

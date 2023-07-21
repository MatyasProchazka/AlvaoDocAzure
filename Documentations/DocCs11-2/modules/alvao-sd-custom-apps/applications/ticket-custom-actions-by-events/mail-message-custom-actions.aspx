<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">IMailMessageAutoAction</h1>
    Implementací rozhraní IMailMessageAutoAction ve <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní akce při načítání zprávy ze schránky služby před uložením zprávy do protokolu existujícího požadavku nebo před vytvořením nového požadavku. V nově vytvořeném skriptu nastavte v konstruktoru třídy action hodnotu vlastnosti Name (název automatické akce)    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro uložení vlastností a nastavení akce doporučujeme definovat třídu <em>Settings</em> v samostatném skriptu, který vytvoříte ze šablony <em>Class Library</em>      <br />
    </div>

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
                <td translate="no"><a href="#OnMessageReceived">OnMessageReceived</a></td>
                <td>Přečte novou zprávu ze schránky služby.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="OnMessageReceived" translate="no">OnMessageReceived</h2>
    Vlastní akci lze provést při načtení zprávy ze servisní schránky před uložením zprávy do protokolu existujícího požadavku nebo před vytvořením nového požadavku. V implementované metodě definujte jak podmínky pro provedení operací, tak samotné operace    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud se zpráva po automatických akcích dále nezpracovává, zapíše se do protokolu událostí varování    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud je implementováno více než jedna z těchto automatických akcí, jsou volány postupně, dokud jedna z nich nevrátí adresu <span class="console" translate="no">false</span>, přičemž pořadí jejich volání není zaručeno    </div>

    <ul>
        <li>Syntaxe: <b translate="no">bool</b> OnMessageReceived(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, MailMessage <b translate="no">message</b>, int <b translate="no">sectionId</b>, int <b translate="no">ticketId</b>, int <b translate="no">fromPersonId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce s databází.</li>
                <li><strong translate="no">message</strong> - objekt zprávy.</li>
                <li><strong translate="no">sectionId</strong> - iD služby (tHdSection.iSectionId), ve které byla zpráva získána.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId), ke kterému zpráva podle subjektu patří, nebo nula, pokud se jedná o vytvoření nového požadavku.</li>
                <li><strong translate="no">fromPersonId</strong> - iD odesílatele zprávy (tPerson.iPersonId) nebo účet <em>hostitele</em>, pokud se odesílatel zprávy nenachází mezi uživateli.</li>
            </ul>
        </li>
        <li>Vrácená hodnota       <ul>
                <li><strong translate="no">bool</strong> - vrací návratovou hodnotu <span class="console" translate="no">true</span> nebo <span class="console" translate="no">false</span>, která udává, zda má být zpráva dále zpracovávána standardně, nebo ne.</li>
            </ul>
        </li>
    </ul>

    Příklad použití viz šablona aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">AssignToSolverByEmail</a> </asp:Content>

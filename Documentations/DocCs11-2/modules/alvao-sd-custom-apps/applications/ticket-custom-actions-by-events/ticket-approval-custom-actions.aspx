<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">ITicketApprovalAutoAction</h1>
    Vlastní akce můžete definovat implementací rozhraní ITicketApprovalAutoAction ve <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptech aplikace</a>   <br />
    Automatické akce jsou volány pouze pro ručně spuštěná schválení s vypnutým automatickým přechodem stavu    <br />
    V nově vytvořeném skriptu nastavte v konstruktoru třídy action hodnotu vlastnosti Name (název automatické akce)    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro uložení vlastností a nastavení akce doporučujeme definovat třídu <em>Nastavení</em> v samostatném skriptu, který vytvoříte ze šablony <em>Knihovna tříd</em>     <br />
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
                <td translate="no"><a href="#OnApproved">OnApproved</a></td>
                <td>Schválení požadavku.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnRejected">OnRejected</a></td>
                <td>Zamítnutí požadavku.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnApproverAdded">OnApproverAdded</a></td>
                <td>Přidání schvalovatele ke schválení.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnApproverCanceled">OnApproverCanceled</a></td>
                <td>Zrušení konkrétního schvalovatele.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="OnApproved" translate="no">OnApproved</h2>
    Vlastní akce na základě schválení požadavku    <br />
    V implementované metodě definujte jak podmínky pro provedení operací, tak samotné operace    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnApproved(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">approvalItemId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlPřipojení k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce databáze.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemId</strong> - iD kroku schválení (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

    Příklad případu použití viz šablona aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">OrderAfterApproval</a>. <h2 id="OnRejected" translate="no">OnRejected</h2>Vlastní akce na základě schválení zamítnutí požadavku    <br />
    V implementované metodě definujte jak podmínky pro provedení operace, tak samotné operace    <ul>
        <li>Syntaxe: <b>void</b> OnRejected(SqlConnection <b>con</b>, SqlTransaction <b>trans</b>, int <b>ticketId</b>, int <b>approvalItemId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlPřipojení k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce s databází.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemId</strong> - iD kroku schválení (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

   <h2 id="OnApproverAdded" translate="no">OnApproverAdded</h2>
    Vlastní akce založená na přidání schvalovatele požadavku    <br />
    V implementované metodě definujte jak podmínky pro provedení operace, tak samotné operace    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnApproverAdded(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, IEnumerable&lt;int&gt; <b translate="no">approvalItemIds</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce databáze.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemIds</strong> - Seznam ID kroků schválení (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

    <h2 id="OnApproverCanceled">OnApproverCanceled</h2>
    Vlastní akce založená na odstranění schvalovatele požadavku    <br />
    V implementované metodě definujte jak podmínky pro provedení operace, tak samotné operace    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnApproverCanceled(SqlConnection <b translate="no">con,</b> SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, IEnumerable&lt;int&gt; <b translate="no">approvalItemIds</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce s databází.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemIds</strong> - Seznam ID kroků schválení (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

   <h1 translate="no">IObjectMoveAutoAction</h1>
    Implementací rozhraní IObjectMoveAutoAction ve <a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní akce, které se automaticky provedou při přesunu objektu na jiné místo ve stromu objektů, včetně odstranění objektu do koše.<div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Metody rozhraní jsou volány také v metodách <span translate="no">Alvao.API.AM.Object.Move</span> a <span translate="no">Alvao.API.AM.Object.Delete</span> <br />
        Při automatickém odstraňování součástí počítače do koše na základě detekce hw se tyto metody nevolají    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud chcete v automatické akci použít pouze některé metody implementovaného rozhraní, ponechte v těle ostatních metod z rozhraní výjimku: <span class="console" translate="no">throw new NotImplementedException();</span></div>

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
                <td translate="no"><a href="#OnObjectMoving">OnObjectMoving</a></td>
                <td>Objekt bude přesunut ve stromu.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnObjectMoved">OnObjectMoved</a></td>
                <td>Objekt byl přesunut.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="OnObjectMoving" translate="no">OnObjectMoving</h2>
    Tato metoda se volá před přesunem objektu ve stromu na jiné místo, např. v rámci příkazu <em>Move</em>   <ul>
        <li>Syntaxe: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>&gt; OnObjectMoving(SqlConnection <b translate="no">con</b>, int <b translate="no">objectId</b>, int <b translate="no">newParentObjectId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">objectId</strong> - ID objektu (tblNode.intNodeId), který má být přesunut.</li>
                <li><strong translate="no">newParentObjectId</strong> - ID objektu (tblNode.intNodeId), do kterého má být objekt přesunut. Hodnota 0 znamená, že objekt bude přesunut do kořene stromu.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), který akci vyvolal.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty       <ul>
                <li><strong translate="no">bool</strong> - pokud metoda vrátí true, objekt se přesune na novou pozici v databázi. Pokud metoda vrátí false, operace se neprovede a připravovaný přesun objektu se zruší.</li>
                <li><strong translate="no">string</strong> - zpráva, která se zobrazí uživateli, pokud je návratová hodnota false.</li>
            </ul>
        </li>
    </ul>

    Příklad použití viz <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CheckObjectMandatoryProperties</a>.<br />

   <h2 id="OnObjectMoved" translate="no">OnObjectMoved</h2>
    Tato metoda je volána po přesunu objektu ve stromu    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnObjectMoved(SqlConnection <b translate="no">con</b>, int <b translate="no">objectId</b>, int <b translate="no">oldParentObjectId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">objectId</strong> - ID přesouvaného objektu (tblNode.intNodeId).</li>
                <li><strong translate="no">oldParentObjectId</strong> - iD objektu (tblNode.intNodeId), který byl otcem (rodičovským objektem) objektu s objectId před jeho přesunem. Hodnota 0 znamená, že objekt byl přesunut z kořene stromu.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), který akci spustil.</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>
    Příklad použití viz šablona aplikace <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">SetComputerDetectionProfile</a> </asp:Content>

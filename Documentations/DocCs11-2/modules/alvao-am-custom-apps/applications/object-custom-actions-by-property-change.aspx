<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

   <h1 translate="no">IObjectPropertyAutoAction</h1>
    Implementací rozhraní IObjectPropertyAutoAction v <a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">aplikačním skriptu</a> můžete definovat vlastní akce, které se automaticky provedou, když uživatel ručně změní hodnotu vlastnosti objektu    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Metody rozhraní jsou volány také v obou variantách metody <span translate="no">Alvao.API.AM.ObjectProperty.Update</span> <br />
        Příkaz <em>AM Console</em> - záložka <a href="../../../list-of-windows/alvao-asset-management-console/tab-view/properties">Vlastnosti</a> - <em>Generate Value</em> nevolá metodu <i translate="no">OnObjectPropertyModifying</i>. Volá pouze metodu <i translate="no">OnObjectPropertyModified</i> </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud chcete v automatické akci použít jen některé metody implementovaného rozhraní, ponechte v těle ostatních metod z rozhraní výjimku: <span class="console" translate="no">throw new NotImplementedException();</span></div>

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
                <td translate="no"><a href="#OnObjectPropertyModifying">OnObjectPropertyModifying</a></td>
                <td>Změní se hodnota vlastnosti.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnObjectPropertyModified">OnObjectPropertyModified</a></td>
                <td>Hodnota vlastnosti byla změněna.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="OnObjectPropertyModifying" translate="no">OnObjectPropertyModifying</h2>
    Tato metoda se volá před uložením změněné hodnoty vlastnosti do databáze, např. v rámci příkazu <em>Modify (property)</em>   <ul>
        <li>Syntaxe: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>&gt; OnObjectPropertyModifying(SqlConnection <b translate="no">con</b>, int <b translate="no">propertyId</b>, int <b translate="no">personId</b>, string <b translate="no">newValue</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">propertyId</strong> - ID vlastnosti (tblProperty.intPropertyId), která je upravována.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), který akci vyvolal.</li>
                <li><strong translate="no">newValue</strong> - nová hodnota vlastnosti.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty       <ul>
                <li><strong translate="no">bool</strong> - pokud metoda vrátí true, nová hodnota se zapíše do databáze. Pokud metoda vrátí false, operace se neprovede a připravovaná změna hodnoty vlastnosti se zruší.</li>
                <li><strong translate="no">string</strong> - zpráva, která se zobrazí uživateli, pokud je návratová hodnota false.</li>
            </ul>
        </li>
    </ul>

    Příklad viz šablona aplikace <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CheckPhoneNumberFormat</a>.<br />

   <h2 id="OnObjectPropertyModified" translate="no">OnObjectPropertyModified</h2>
    Tato metoda se volá po zápisu nové hodnoty vlastnosti do databáze, např. příkazem <em>Modify (property</em> )    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnPropertyModified(SqlConnection <b translate="no">con</b>, int <b translate="no">propertyId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">propertyId</strong> - ID vlastnosti (tblProperty.intPropertyId), která byla změněna.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), který akci vyvolal.</li>
            </ul>
        </li>
        <li>Vrácená hodnota: <b>žádná</b>.</li>
    </ul>

    Příklad případu použití naleznete v šabloně aplikace <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CopyNewPropertyValueToAnotherProperty</a> </asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Mapování atributů SCIM na uživatelská pole</h1>
    <p>V systému Alvao jsou prostřednictvím protokolu SCIM synchronizovány následující <a href="../../../../../../list-of-windows/alvao-webapp/administration/users">uživatelské atributy</a>:</p>
    <table>
        <thead>
            <tr>
                <th><em>Atribut uživatele v systému Alvao</em></th>
                <th><em>Sloupec v DB (viz <a href="../../../../../../alvao-asset-management/implementation/customization/database#U_dbo.tPerson">tPerson</a>)</em></th>
                <th><em>Atribut v SCIM</em></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>-</td>
                <td>AzureAdObjectId</td>
                <td>externalId</td>
            </tr>
            <tr>
                <td>Účet je blokován</td>
                <td>bPersonAccountDisabled</td>
                <td>active (negovaná hodnota)</td>
            </tr>
            <tr>
                <td>-</td>
                <td>sAdDisplayName</td>
                <td>displayName</td>
            </tr>
            <tr>
                <td>-</td>
                <td>sFirstName</td>
                <td>name.givenName</td>
            </tr>
            <tr>
                <td>-</td>
                <td>sLastName</td>
                <td>name.familyName</td>
            </tr>
            <tr>
                <td>Jméno a příjmení</td>
                <td>sPerson</td>
                <td>name.formatted</td>
            </tr>
            <tr>
                <td>Funkce</td>
                <td>sPersonWorkPosition</td>
                <td>název</td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>sPersonEmail</td>
                <td>emails[type eq "work"].value</td>
            </tr>
            <tr>
                <td>Mobilní telefon</td>
                <td>sPersonMobile</td>
                <td>phoneNumbers[type eq "mobile"].value</td>
            </tr>
            <tr>
                <td>Pracovní telefon</td>
                <td>sPersonPhone</td>
                <td>phoneNumbers[type eq "work"].value</td>
            </tr>
            <tr>
                <td>uživatelské jméno</td>
                <td>sPersonLogin</td>
                <td>userName</td>
            </tr>
            <tr>
                <td>-</td>
                <td>iPersonLocaleId</td>
                <td>locale</td>
            </tr>
            <tr>
                <td>Preferovaný jazyk</td>
                <td>sPersonPrefferedLanguage</td>
                <td>preferredLanguage</td>
            </tr>
            <tr>
                <td>Časové pásmo</td>
                <td>TimeZone</td>
                <td>timeZone</td>
            </tr>
            <tr>
                <td>Ostatní kontakty</td>
                <td>mPersonContact</td>
                <td>addresses[type eq "work"].formatted</td>
            </tr>
            <tr>
                <td>Město</td>
                <td>sPersonCity</td>
                <td>addresses[type eq "work"].locality</td>
            </tr>
            <tr>
                <td>Pozemek</td>
                <td>sPersonCountry</td>
                <td>addresses[type eq "work"].region</td>
            </tr>
            <tr>
                <td>Personal Number</td>
                <td>sPersonPersonalNumber</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber</td>
            </tr>
            <tr>
                <td>Divize</td>
                <td>sPersonDepartment</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:department</td>
            </tr>
            <tr>
                <td>Organizace</td>
                <td>liAccountId</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:organization</td>
            </tr>
            <tr>
                <td>Podřízený</td>
                <td>iPersonManagerPersonId</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:manager</td>
            </tr>
            <tr>
                <td>Ostatní (vlastní pole)</td>
                <td>tPersonCust.*</td>
                <td>urn:ietf:params:scim:schemas:extension:alvao_tPersonCust:2.0:User:*</td>
            </tr>
        </tbody>
    </table>
    <p>Ignorované atributy v SCIM:</p>
    <ul>
        <li>(Instant messangings)</li>
        <li>přezdívka</li>
        <li>adresy (jiné než "pracovní")</li>
        <li>addresses[type eq "work"].postalCode, addresses[type eq "work"].steetAddress</li>
        <li>e-maily (jiné než "work")</li>
        <li>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User<strong>:costCenter</strong></li>
        <li>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User<strong>:division</strong></li>
        <li>vlastní rozšíření atributů nesouvisející s Alvao (alvao_tPersonCust, alvao_tblProperty)</li>
    </ul>

    <h2>Mapování atributů v AAD na vlastní uživatelská pole</h2>
    <p>Pokud chcete importovat atributy z AAD do vlastních uživatelských polí, postupujte následovně:</p>
    <ol>
        <li>V AAD přejděte do nastavení mapování<em>(Provisioning - Edit provisioning - Mappings - Provision Azure Active Directory Users</em>).</li>
        <li>Zobrazte rozšířené možnosti a přejděte na položku <em>Upravit seznam atributů pro vlastníaplikace</em></li>
        <li>Pro každé vlastní pole uživatele vytvořte nový atribut s názvem ve tvaru     <br />
           <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tPersonCust:2.0:User:{název sloupce vlastního pole v databázi}.</span><br />
            Příklad: Chcete-li importovat hodnoty do vlastního pole <span class="console">tPersonCust.IpTelefon</span>, vytvořte atribut s názvem <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tPersonCust:2.0:User:IpTelefon</span>       </li>
        <li>Uložte změny a vraťte se do seznamu mapovaných atributů.</li>
        <li>Pomocí příkazu <em>Add New Mapping (Přidat nové mapování</em> ) vytvořte mapování mezi novými atributy v SCIM a poli z AAD (mapování určuje, co a jak bude v atributech vyplněno).</li>
        <li>Všichni stávající uživatelé budou aktualizováni během dalšího cyklu nastavení.</li>
    </ol>
    <p>Další informace o mapování jednotlivých atributů naleznete v části <a href="https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/customize-application-attributes">Tutoriál - Přizpůsobení mapování atributů Azure Active Directory v aplikaci Application Provisioning | Dokumenty Microsoft</a>.</p>




</asp:Content>

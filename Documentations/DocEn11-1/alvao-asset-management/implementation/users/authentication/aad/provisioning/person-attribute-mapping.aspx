<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Mapping SCIM attributes to user items</h1>
    <p>In Alvao, the following <a href="../../../../../../list-of-windows/alvao-webapp/administration/users">user attributes</a> are synchronized via the SCIM protocol:</p>
    <table>
        <thead>
            <tr>
                <th><em>User attribute in Alvao</em></th>
                <th><em>Column in DB (see <a href="../../../../../../alvao-asset-management/implementation/customization/database#U_dbo.tPerson">tPerson</a>)</em></th>
                <th><em>Attribute in SCIM</em></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>-</td>
                <td>AzureAdObjectId</td>
                <td>externalId</td>
            </tr>
            <tr>
                <td>Account is blocked</td>
                <td>bPersonAccountDisabled</td>
                <td>active (negated value)</td>
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
                <td>First and last name</td>
                <td>sPerson</td>
                <td>name.formatted</td>
            </tr>
            <tr>
                <td>Functions</td>
                <td>sPersonWorkPosition</td>
                <td>title</td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>sPersonEmail</td>
                <td>emails[type eq "work"].value</td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>sPersonMobile</td>
                <td>phoneNumbers[type eq "mobile"].value</td>
            </tr>
            <tr>
                <td>Phone for work</td>
                <td>sPersonPhone</td>
                <td>phoneNumbers[type eq "work"].value</td>
            </tr>
            <tr>
                <td>username</td>
                <td>sPersonLogin</td>
                <td>userName</td>
            </tr>
            <tr>
                <td>-</td>
                <td>iPersonLocaleId</td>
                <td>locale</td>
            </tr>
            <tr>
                <td>Preferred language</td>
                <td>sPersonPrefferedLanguage</td>
                <td>preferredLanguage</td>
            </tr>
            <tr>
                <td>Time zone</td>
                <td>TimeZone</td>
                <td>timeZone</td>
            </tr>
            <tr>
                <td>Other contacts</td>
                <td>mPersonContact</td>
                <td>addresses[type eq "work"].formatted</td>
            </tr>
            <tr>
                <td>City</td>
                <td>sPersonCity</td>
                <td>addresses[type eq "work"].locality</td>
            </tr>
            <tr>
                <td>Land</td>
                <td>sPersonCountry</td>
                <td>addresses[type eq "work"].region</td>
            </tr>
            <tr>
                <td>Personal Number</td>
                <td>sPersonPersonalNumber</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber</td>
            </tr>
            <tr>
                <td>Division</td>
                <td>sPersonDepartment</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:department</td>
            </tr>
            <tr>
                <td>Organization</td>
                <td>liAccountId</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:organization</td>
            </tr>
            <tr>
                <td>Subordinate</td>
                <td>iPersonManagerPersonId</td>
                <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:manager</td>
            </tr>
            <tr>
                <td>Other (custom fields)</td>
                <td>tPersonCust.*</td>
                <td>urn:ietf:params:scim:schemas:extension:alvao_tPersonCust:2.0:User:*</td>
            </tr>
        </tbody>
    </table>
    <p>Ignored attributes in SCIM:</p>
    <ul>
        <li>ims (Instant messangings)</li>
        <li>nickname</li>
        <li>addresses (other than "work")</li>
        <li>addresses[type eq "work"].postalCode, addresses[type eq "work"].steetAddress</li>
        <li>emails (other than "work")</li>
        <li>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:<strong>costCenter</strong></li>
        <li>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:<strong>division</strong></li>
        <li>custom attribute extensions not related to Alvao (alvao_tPersonCust, alvao_tblProperty)</li>
    </ul>

    <h2>Mapping attributes in AAD to custom user items</h2>
    <p>If you want to import attributes from AAD into custom user items, do the following:</p>
    <ol>
        <li>In AAD, navigate to the mapping settings (<em>Provisioning - Edit provisioning - Mappings - Provision Azure Active Directory Users</em>).</li>
        <li>View advanced options and navigate to <em>Edit attribute list for customappsso</em></li>
        <li>For each custom user entry, create a new attribute with a name of the form
            <br />
            <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tPersonCust:2.0:User:{column name of the custom field in the database}.</span><br />
            Example: to import values into a custom <span class="console">tPersonCust.IpTelefon</span> item, create an attribute named <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tPersonCust:2.0:User:IpTelefon</span>
        </li>
        <li>Save your changes and go back to the list of mapped attributes.</li>
        <li>Use the <em>Add New Mapping</em> command to create a mapping between the new attributes in SCIM and the items from AAD (the mapping specifies what and how the attributes will be populated).</li>
        <li>All existing users are updated during the next setup cycle.</li>
    </ol>
    <p>For more information on mapping individual attributes, see <a href="https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/customize-application-attributes">Tutorial - Customize Azure Active Directory attribute mappings in Application Provisioning | Microsoft Docs</a>.</p>




</asp:Content>

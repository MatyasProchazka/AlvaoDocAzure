<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import users from CSV</h1>

    <h2>Regular automatic import</h2>
    <p>
        Create a scheduled task on the server with a recurrence period of e.g. 1 time per day that runs the following command:<br />
        <span class="console">%ProgramFiles%\ALVAO\AlvaoService\utilities\ImportUsersCsv.exe /csv &lt;path to CSV file&gt; /server &lt;sql_server&gt; /db &lt;database_alvao&gt; /add /remove</span>
    </p>

    <h2>One-time import</h2>
    <p>
        For a one-time import of portraits on the server, run the created scheduled task once or copy the <em>ImportUsersCsv</em> application from the server to your computer and run it from the command line. The application is installed together with the ALVAO Service in the "%ProgramFiles%\ALVAO\AlvaoService\utilities" folder.
    </p>

    <h2>Utility ImportUsersCSV</h2>
    <p>This utility imports users from a CSV file into Alvao. You can use it, for example, to update users in Alvao according to data in the HR system, etc.</p>

    <h3>Syntax command lines</h3>

    <p>
        <strong>ImportUsersCSV</strong> <strong>/csv</strong> <em>&quot;path and name of CSV file&quot;</em> {<strong>/con</strong> <em>&quot;connection string&quot;</em>
        |
  <strong>/server</strong> <em>&quot;database server name&quot;</em> <strong>/db</strong> <em>&quot;database name&quot;</em>} [<strong>/key</strong> &quot;key column&quot;] [<strong>/cols</strong> &quot;column list&quot;] [<strong>/utcdate</strong>]
 [<strong>/nohdrs</strong>] [<strong>/add</strong>] [<strong>/remove</strong>]
 [<strong>/help</strong>]
    </p>

    <h3>Detailed description of parameters</h3>

    <table class="wide">
        <thead>
            <tr>
                <th class="auto-style2">Parameter</th>
                <th class="auto-style2">Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/csv</td>
                <td>The path and name of the CSV file from which the import is to be performed.</td>
            </tr>
            <tr>
                <td>/con<br />
                    /server<br />
                    /db</td>
                <td>These parameters are used to set the connection to the Alvao database. It is possible to use a connection string (e.g. <strong>/con</strong> <em>&quot;Data source=.\sqlexpress;Initial Catalog=test;Integrated Security = True;TrustServerCertificate=True&quot;</em>), or simply specify a specific SQL server and DB (e.g. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test&quot;</em>).<br />
                    In case you use the <strong>/server</strong> parameters
 and <strong>/db</strong>, the database connection is made using Windows Integrated Authentication. If you specify all these parameters, only <strong>/con</strong> is used
 parameter, <strong>/server</strong> and <strong>/db</strong>
                    will be ignored. </td>
            </tr>
            <tr>
                <td>/key</td>
                <td>The key column is used to search for an existing user in Administration. If no parameter is specified, the key column is <strong>Login</strong> (must exist in the CSV).</td>
            </tr>
            <tr>
                <td class="auto-style1">/cols</td>
                <td class="auto-style1">Allows you to specify the meaning and order of the columns in the CSV (CSV does not contain headers). If <strong>0</strong> is specified in the list
 (zero), the corresponding column from the CSV will not be imported (ignored).<br />
                    Note: The list on the command line may not contain the same number of columns as the CSV (unlisted columns will be skipped -
 ignored).
                </td>
            </tr>
            <tr>
                <td>/utcdate</td>
                <td>Date columns are in UTC time. If the switch is not specified, the time data in the CSV is considered in the current time zone of the computer (local time).</td>
            </tr>
            <tr>
                <td>/nohdrs</td>
                <td>The imported CSV does not contain a header (first row) with column descriptions.</td>
            </tr>
            <tr>
                <td>/add</td>
                <td>Create new users in Alvao.
                    <br />
                    Note: If this switch is not specified, the import will not create new users, but only update existing ones.</td>
            </tr>
            <tr>
                <td>/remove</td>
                <td>Remove users from Alvao that it does not find in the CSV file.</td>
            </tr>
        </tbody>
    </table>

    <h3>Description of all supported columns</h3>

    <table class="wide">
        <thead>
            <tr>
                <th>Name of column in CSV<br />
                    (on the command line - /cols)</th>
                <th>Importance</th>
                <th>Related column in tPerson</th>
 <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID</td>
                <td>The unique identification number of the person in the CSV (e.g. the ID from the system from which the CSV is exported).</td>
                <td>-</td>
                <td>If the CSV contains a <strong>ManagerID</strong> or <strong>DelegateID</strong>, the import requires this column, otherwise it will exit with an error.</td>
            </tr>
            <tr>
                <td>FullName</td>
                <td>Person's first and last name</td>
                <td>withPerson</td>
                <td>Must not be filled in - in this case the value will be composed as [<strong>FirstName LastName</strong>] (if filled in).</td>
            </tr>
            <tr>
                <td>Login</td>
                <td>UserName</td>
                <td>withPersonLogin (if the value is of the form <em>domain</em> and is an AD user, then SamAccountName)</td>
                <td>The username can be entered in the following forms:
                    <ul>
                        <li><em>login@domain (UPN)</em></li>
                        <li><em>login</em></li>
                        <li><em>domain/login</em></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>E-mail</td>
                <td>withPersonEmail</td>
                <td></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>Phone</td>
                <td>withPersonPhone</td>
                <td></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>Mobile</td>
                <td>withPersonMobile</td>
                <td></td>
            </tr>
            <tr>
                <td>Office</td>
                <td>Office</td>
                <td>withPersonOffice</td>
                <td></td>
            </tr>
            <tr>
                <td>Department</td>
                <td>Department</td>
                <td>withPersonDepartment</td>
                <td></td>
            </tr>
            <tr>
                <td>JobTitle</td>
                <td>Job Position</td>
                <td>withPersonWorkPosition</td>
                <td></td>
            </tr>
            <tr>
                <td>Pswd</td>
                <td>SHA1 hash of the user's password</td>
                <td>sPersonPswd</td>
                <td></td>
            </tr>
            <tr>
                <td>IsAccountDisabled</td>
                <td>&quot;Account is disabled&quot;</td>
                <td>bPersonAccountDisabled</td>
                <td>Values allowed: 0,1</td>
            </tr>
            <tr>
                <td>OtherContacts</td>
                <td>Other Contacts</td>
                <td>mPersonContact</td>
                <td></td>
            </tr>
            <tr>
                <td>Notes</td>
                <td>Notes</td>
                <td>mPersonNotes</td>
                <td></td>
            </tr>
            <tr>
                <td>City</td>
                <td>City</td>
                <td>withPersonCity</td>
                <td></td>
            </tr>
            <tr>
                <td>ManagerID</td>
                <td>Manager ID. The person ID must exist in the CSV.</td>
                <td>-</td>
                <td>Requires <strong>ID</strong> column.</td>
            </tr>
            <tr>
                <td>DelegateID</td>
                <td>Delegate ID number. The person ID must exist in the CSV and the related persons must have the same company (<strong>Company</strong>).</td>
                <td>-</td>
                <td>Requires <strong>ID</strong> column.</td>
            </tr>
            <tr>
                <td>PersonalNumber</td>
                <td>Personal Number</td>
                <td>withPersonPersonalNumber</td>
                <td></td>
            </tr>
            <tr>
                <td>OutOfOfficeSinceDate</td>
                <td>Unavailable as of date. Common date and time formats are supported.<br />
                    Example of supported formats:<br />
                    - 2012-11-21<br />
                    - 2012-10-9 15:24:48<br />
                    - 2010-08-15 14:18:44<br />
                    - 2010-07-14</td>
                <td>OutOfOfficeSince</td>
                <td></td>
            </tr>
            <tr>
                <td>OutOfOfficeUntilDate</td>
                <td>Do not include the date and time. Common date and time formats are supported (see OutOfOfficeSinceDate).</td>
                <td>OutOfOfficeUntil</td>
                <td></td>
            </tr>
            <tr>
                <td>LocaleId</td>
                <td>User's preferred language, this is the "language code",
 e.g.:<br />
                    - Czech: 1029<br />
                    - English: 1033<br />
                    - Polish: 1045<br />
                    - Germany: 1031</td>
                <td>iPersonLocaleId</td>
                <td>A good number.</td>
            </tr>
            <tr>
                <td>Company</td>
                <td>Organisation</td>
                <td>-</td>
                <td>Search for an organization by name. If it does not exist, a new organization is created by name.</td>
            </tr>
            <tr>
                <td>FirstName</td>
                <td>FirstName</td>
                <td>withFirstName</td>
                <td></td>
            </tr>
            <tr>
                <td>LastName</td>
                <td>LastName</td>
                <td>withLastName</td>
                <td></td>
            </tr>
            <tr>
                <td>TimeZone</td>
                <td>TimeZone - must match Windows time zone ID -
 more <a href="http://technet.microsoft.com/en-us/library/cc749073(v=ws.10)">here</a>.</td>
                <td>TimeZone</td>
                <td></td>
            </tr>
            <tr>
                <td>AdGUID</td>
                <td>GUID from Active Directory</td>
                <td>withPersonAdGuid</td>
                <td></td>
            </tr>
            <tr>
                <td>AdPath</td>
                <td>Path in ActiveDirectory</td>
                <td>withPersonAdPath</td>
                <td></td>
            </tr>
            <tr>
                <td>AdSID</td>
                <td>AD SID in text form (S-1-5-21-55544...)</td>
                <td>withPersonSID</td>
                <td></td>
            </tr>
            <tr>
                <td>IsHidden</td>
                <td>&quot;Hide in menus&quot;</td>
                <td>bHidden</td>
                <td>Allowed values: 0,1</td>
            </tr>
            <tr>
                <td>IsShared</td>
                <td>This is a &quot;shared account&quot;</td>
                <td>bPersonShared</td>
                <td></td>
            </tr>
            <tr>
                <td>Country</td>
                <td>Country</td>
                <td>withPersonCountry</td>
                <td></td>
            </tr>
            <tr>
                <td>CountryAbbr</td>
                <td>Country (abbreviation, 2 characters)</td>
                <td>withPersonCountryAbbr</td>
                <td></td>
            </tr>
            <tr>
                <td>CountryCode</td>
                <td>CountryCode</td>
                <td>andPersonCountryCode</td>
                <td>Cell number</td>
            </tr>
            <tr>
                <td>PreferredLang</td>
                <td>Preferred language (abbreviation, 2 characters)</td>
                <td>withPersonPreferredLanguage</td>
                <td></td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        Attributes can also be mapped to any existing custom field from the tPersonCust table, except for items of type int that use a list of values, and type <em>user</em>. The attribute name must be <em>&quot;@&quot;+[tPersonCust] +[database column name]</em>, e.g. <em>@tPersonCust.Title</em>.</div>


    <h3>Recommended CSV file structure</h3>
    <p>It is recommended that the imported CSV file contains the following columns:</p>

    <table class="wide">
        <thead>
            <tr>
                <th>Name of column in CSV<br />
                    (on the command line - /cols)</th>
                <th>Importance</th>
                <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID</td>
                <td>The unique identification number of the person in the CSV (e.g. the ID from the system from which the CSV is exported).</td>
                <td>If the columns <strong>ManagerID</strong> and <strong>DelegateID</strong> are blank, they do not need to be filled in.</td>
            </tr>
            <tr>
                <td>FirstName</td>
                <td>FirstName</td>
                <td>Must be filled in <strong>FirstName</strong> and <strong>LastName</strong>, or <strong>FullName</strong>.</td>
            </tr>
            <tr>
                <td>LastName</td>
                <td>Surname</td>
                <td>The <strong>FirstName</strong> and <strong>FirstName</strong> must be filled in.
 <strong>LastName</strong>, or <strong>FullName</strong>.</td>
            </tr>
            <tr>
                <td>FullName</td>
                <td>Person's first and last name</td>
                <td>Must not be filled in - in this case the value will be composed as [<strong>FirstName LastName</strong>].</td>
            </tr>
            <tr>
                <td>PersonalNumber</td>
                <td>PersonalNumber</td>
                <td></td>
            </tr>
            <tr>
                <td>Login</td>
                <td>User Name</td>
                <td>The column must have values.</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>Phone</td>
                <td></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>Mobile</td>
                <td></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>E-mail</td>
                <td></td>
            </tr>
            <tr>
                <td>Office</td>
                <td>Office</td>
                <td></td>
            </tr>
            <tr>
                <td>Department</td>
                <td>Department</td>
                <td></td>
            </tr>
            <tr>
                <td>JobTitle</td>
                <td>Job Position</td>
                <td></td>
            </tr>
            <tr>
                <td>Company</td>
                <td>Organisation</td>
                <td></td>
            </tr>
            <tr>
                <td>IsAccountDisabled</td>
                <td>&quot;Account is disabled&quot;</td>
                <td>Allowed values: 0,1</td>
            </tr>
            <tr>
                <td>ManagerID</td>
                <td>Manager identification number. The person ID must exist in the CSV.</td>
                <td>Requires <strong>ID</strong> column.</td>
            </tr>
            <tr>
                <td>DelegateID</td>
                <td>Delegate ID. The person ID must exist in the CSV and the related persons must have the same company (<strong>Company</strong>).</td>
                <td>Requires <strong>ID</strong> column.</td>
            </tr>
            <tr>
                <td>LocaleId</td>
                <td>User's preferred language, this is the "language code", e.g.:<br />
                    - Czech: 1029<br />
                    - English: 1033<br />
                    - Polish: 1045<br />
                    - Germany: 1031</td>
                <td>A whole number.</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Optional columns can be empty - be careful in&nbsp;this case the corresponding data for the person in Alvao will be removed (they will be empty).
    </div>

    <h5>Sample CSV file</h5>



    <div class="wide">
        <pre translate="no">
ID;FirstName;LastName;FullName;PersonalNumber;Login;Phone;Mobile;Email;Office;Department;JobTitle;Company;IsAccountDisabled;ManagerID;DelegateID;LocaleId;@tPersonCust.Title
44;David;Ostrý;;PN1111;ostry;3256;+420987654321;ostry@demo.cz;321;Marketing;Manager;;0;46;45;1029;Mr
45;Petr;Novák;;PN2222;novak;3247;+420111222333;novak@demo.cz;323;Promotions;Manager;;1;;;1029;Mr
46;Veronika;Clements;;PN3333;clements;3244;+420121353255;clements@demo.cz;111;Marketing;Head of Department;;0;;44;1033;Mrs</pre>
    </div>

    <h4>Import CSV with recommended structure</h4>

    <p>
        CSV contains a header with column names. The import will do a full synchronization, i.e. it will remove users it doesn't find in the CSV and create new users. The key column is <strong>Login</strong>.
  Import command line:
    </p>
    <div class="wide">
        <pre translate="no">ImportUsersCsv.exe /csv &quot;c:\data\users.csv&quot; /server server\sql2005 /db alvao /add /remove</pre>
    </div>

    <h3>Use cases</h3>

    <h4>HR system generates CSV with many columns, we want to import only some data into Alvao</h4>

    <p>HR system generates CSV with fixed structure. This structure cannot be changed. We want to create new users and at the same time remove users who are not in the CSV (full synchronization). Example: the CSV contains 30 columns. We want to import only "login name" (first column) and "first and last name" (4th column). The other columns have no meaning. The CSV does not contain headers (column names). We will use the command line:</p>

    <div class="wide">
        <pre translate="no">ImportUsersCsv.exe /csv &quot;c:\data\users.csv&quot; /server server\sql2005 /db alvao /cols &quot;Login,0,0,FullName&quot; /nohdrs /add /remove</pre>
    </div>

    <h4>Import of users from AD and additional update of persons from HR system</h4>

    <p>
        Import users from AD (new users are created and deleted). We need to update other data from the HR system - the key is the personal number (we don't want to create new or remove users based on the HR system). HR system generates column names to CSV according to Alvao definition.<br />
        Usage example:
    </p>
    <div class="wide">
        <pre translate="no">ImportAD.exe ...
ImportUsersCsv.exe /csv &quot;c:\data\users.csv&quot; /server server\sql2005 /db alvao /key PersonalNumber</pre>
    </div>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            height: 43px;
        }

        .auto-style2 {
            height: 25px;
        }
    </style>
</asp:Content>


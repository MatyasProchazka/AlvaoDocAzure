<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ImportAD utility</h1>

    <h2>Function description</h2>

    <p>This utility is used to import (synchronize) users and groups from Active Directory for the entire Alvao system. The utility also allows you to import objects (users, computers, and organizational divisions) into the Asset Management module.</p>

    <p>
        The utility can be found in the <span translate="no">ALVAO Asset Management Console</span> installation folder <span translate="no">("%ProgramFiles%\ALVAO\Asset Management Console\ImportUtilities")</span>
	or you can copy it from the application server from the ALVAO Service installation folder <span translate="no">("%ProgramFiles%\ALVAO\AlvaoService\utilities")</span>.
    </p>

    <p>
        The account under which you run the utility must be a member of the <em>Domain Admins</em> group
	or have the delegated permission to <em>Read all user information</em>.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If members from other trusted domains appear in the imported groups, in some cases you will need to list those domains in the <a href="ad-trusted-domains" translate="no">AdTrustedDomain</a> table.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The user's language is set by the <em translate="no">prefferedLanguage</em> attribute or <em translate="no">countryCode</em> when importing from <span translate="no">Active Directory</span>.
    </div>

    <h2>Syntax command lines</h2>

    <p translate="no">
        <strong>ImportAD.exe /adpath</strong> <em>&quot;LDAP path&quot;</em> {<strong>/conn</strong> <em>&quot;connection string&quot;</em> | <strong>/server</strong>
        <em>&quot;database server name&quot;</em> <strong>/db</strong> <em>&quot;database name&quot;</em>} [<strong>/users</strong>[remove,outsidegroups]]
 [<strong>/usermap</strong> <em>&quot;attribute mapping&quot;</em>] [<strong>/objects</strong>
        {users,computers,ou,flat}] [<strong>/objectparentid</strong> &quot;NodeId&quot;] [<strong>/login</strong> <em>&quot;login name&quot;</em>] [<strong>/pswd</strong> <em>&quot;password&quot;</em>] [<strong>/log</strong>
        <em>&quot;file&quot;</em>] [<strong>/progress</strong>] [<strong>/wait</strong>]
 [<strong>/help</strong>]<strong> </strong>
        [<span><strong>/noportraits</strong></span>]
    </p>

    <h2>Detailed description of parameters</h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Parameter</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">/adpath &lt;LDAP path&gt;</td>
                <td>An Active Directory path in LDAP format. Three variants are supported:
                    <ol>
                        <li>Import DC (entire AD) - all users and groups are imported, including group and user membership settings (&quot;copy&quot; of the entire AD).</li>
                        <li>Import of a specific OU (organizational unit) -
 all users and groups within the specified OU are imported. It is possible to use the <strong translate="no">outsidegroups</strong>, see more detailed description below.</li>
                        <li>Import of a specific CN (group) - all users and groups that are members of a specific group are imported (in depth - see note below).</li>
                    </ol>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        If you need to use LDAPS, you must add Active Directory server hostname and port before specifying the variants: "LDAP://<b>&lt;AD server hostname&gt;:636/</b>...".
                    </div>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note: </div>

                        <ul>
                            <li>Browsing group memberships in depth involves going through all groups that are members of a particular group, then going through their members, going through their members again, etc.<br />
                                Ex: Group C is a member of group B, which is a member of group A. The import imports all groups A+B+C. </li>
                            <li>The <strong>/objects</strong> switch (importing objects into Asset Management) does not work with a path routed from a specific group (CN).</li>
                        </ul>
                    </div>
                </td>
            </tr>
            <tr>
                <td translate="no">/conn &lt;chain&gt;<br />
                    /server&lt;server name&gt;<br />
                    /db &lt;database name&gt;</td>
                <td>These parameters are used to set the connection to the Alvao database. It is possible to use a connection string (e.g. <strong translate="no">/conn</strong> <em translate="no">&quot;Data source=.\sqlexpress;Initial Catalog=test;Integrated Security = True;TrustServerCertificate=True&quot;</em>), or simply specify a specific SQL server and DB (e.g. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em>
                    <strong>/db</strong><em>&quot;test&quot;</em>).<br />
                    In case you use the <strong>/server</strong> parameters
 and <strong>/db</strong>, the database connection is made using Windows Integrated Authentication. If you specify all these parameters, only <strong translate="no">/conn</strong> is used
 parameter, <strong>/server</strong> and <strong>/db</strong>
                    will be ignored. </td>
            </tr>
            <tr>
                <td translate="no">/users &lt;parameters&gt;</td>
                <td>Import users and groups to Administration. Parameters are separated by a comma.
                    <br />
                    <br />
                    Description of possible parameters:
                    <table class="wide">
                        <thead>
                            <tr>
                                <th>Parameter</th>
                                <th>Significance</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td translate="no">remove</td>
                                <td>Remove users it can't find in AD. This flag only works when importing a group, organizational unit, container, or the entire AD (DC).
                                    <br />
                                    Only accounts that were originally imported from AD are removed. Manually created accounts are not removed. </td>
                            </tr>
                            <tr>
                                <td translate="no">outsidegroups</td>
                                <td>If the import is running on an OU (organizational unit), import also members of groups (groups within an OU) lying outside the selected OU.<div class="note">
                                    <div class="icon"></div>
                                    <div class="title">Note:</div>
                                    search for group members goes to any depth.
                                </div>
                                    <strong>Example:</strong>
                                    <br />
                                    We import an OU &quot;CZ&quot; in which the group is &quot;CZA&quot;. The member of the group &quot;CZA&quot; is the group &quot;SKA&quot;,
 located in another OU &quot;SK&quot;. A member of the &quot;SKA&quot; group is the person &quot;Peter&quot;.<br />
                                    If we use this switch, &quot;SKA&quot; and &quot;Peter&quot; are imported (even if they lie outside the imported OU &quot;SK&quot;). Any additional members of the &quot;SKA&quot; group are also imported to unlimited depth (group members).<br />
                                    If the switch is not used, neither the group &quot;SKA&quot; nor the person &quot;Peter&quot; will be created.</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td translate="no">/usermap &lt;mapping&gt;</td>
                <td>Use this switch to specify the mapping of certain attributes when importing users and groups into Administration. The switch works only in combination with the <strong>/users</strong>.<br />
                    <br />
                    Supported attributes:<br />
                    <table class="wide">
                        <thead>
                            <tr>
                                <th>Attribute</th>
                                <th>Field name in Administration</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td translate="no">Company</td>
                                <td >Organisation</td>
                            </tr>
                            <tr>
                                <td translate="no">PersonalNumber</td>
                                <td>Personal Number</td>
                            </tr>
                            <tr>
                                <td translate="no">@tPersonCust.Column</td>
                                <td>Person's own items - see note</td>
                            </tr>

                        </tbody>
                    </table>
                    <br />
                    Attributes can be mapped either to a constant string on the command line (e.g. you want all persons to have the same Organization entered manually), or to a specific field from AD. See the usage examples for more details.<br />
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        <br />
                        Attributes can also be mapped to any existing custom fields from the <em translate="no">tPersonCust</em> table (except fields of type <em translate="no">int</em> that use a list of values, and type <em translate="no">users</em>). The attribute name must be <em>&quot;@&quot;+[tPersonCust] +[database column name]</em>, e.g. <em>@tPersonCust.Title</em>.
                    </div>
                    <div class="tip">
                        <div class="icon"></div>
                        <div class="title">Tip:</div>
                        The switch can only be used when importing into Administration. To map AD attributes to object properties in Asset Management, use the article <a href="ad-object-property-mapping">Mapping Active Directory attributes to object properties</a>.
                    </div>
                </td>
            </tr>
            <tr>
                <td>/objects &lt;parameters&gt;</td>
                <td>Import objects to Asset Management. Parameters are separated by commas.<br />
                    <br />
                    Description of possible parameters:
                    <table class="wide">
 <thead>
     <tr>
         <th>Parameter</th>
         <th>Significance</th>
     </tr>
 </thead>
                        <tbody>
                            <tr>
                                <td>users</td>
                                <td>Import users.</td>
                            </tr>
                            <tr>
                                <td>computers</td>
                                <td>Import computers.</td>
                            </tr>
                            <tr>
                                <td>ou</td>
                                <td>Import organizational breakdown.</td>
                            </tr>
                            <tr>
                                <td>flat</td>
                                <td>Import only objects in the&nbsp;specified path and do not search including subfolders.</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="caution">
                        <div class="icon"></div>
                        <div class="title">Caution:</div>
                        You must specify at least one of the following parameters: <strong>users, computers, ou</strong>.
                    </div>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note: </div>
                        The mapping of AD attributes to AM properties is set using the <a href="ad-object-property-mapping">table
 tblADMap</a>.<br />
                        The import creates new objects in the <em>folder</em>.
 Objects retrieved from Active Directory</em>.
                    </div>

                </td>
            </tr>
            <tr>
                <td>/objectparentid &lt;NodeId&gt;</td>
                <td>Create new objects as child objects under an object with ID: &lt;NodeId&gt;. Works only in conjunction with the /objects switch.<br />
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note: </div>
                        You can find the NodeId value in the AM Console on the <em>Objects</em> tab.
 by displaying the NodeId system column, or in the tblNode. intNodeId table.
                    </div>
                </td>
            </tr>
            <tr>
                <td>/noportraits</td>
                <td>Import without portraits.</td>
            </tr>
            <tr>
                <td>/wait</td>
                <td>Wait for a keystroke at the end of the import.</td>
            </tr>
            <tr>
                <td>/progress</td>
                <td>Display the progress of the import.</td>
            </tr>
            <tr>
                <td>/login &lt;login&gt;</td>
                <td>User login name. This account will be used to&nbsp;access AD.<br />
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note: </div>
                        If this parameter is not specified, the import will access AD under the account under which the utility was run (the currently logged in Windows user).
                    </div>
                </td>
            </tr>
            <tr>
                <td>/pswd &lt;password&gt;</td>
                <td>The password of the user whose account will be used to access Active Directory. </td>
            </tr>
            <tr>
                <td>/log &lt;file&gt;</td>
                <td>Log to file. Enter the path and name of the file.<br />
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note: </div>
                        Log will be overwritten on each run.
                    </div>
                </td>
            </tr>
            <tr>
                <td>/datetimeformat</td>
                <td>Date format in text strings (e.g. dd/mm/yyyy).
 If the parameter is not specified, the format is automatically recognized during conversion.<br />
                    A detailed description of the possible formats can be found in <a href="https://msdn.microsoft.com/en-us/library/8kb3ddd4%28v=vs.110%29">MSDN</a>.</td>
            </tr>

        </tbody>
    </table>

    <h2>Mapping fields to AD attributes on persons</h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Field Name</th>
                <th>Attribute name in AD</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>First and last name</td>
                <td>cn<br />
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        You can change the default <a href="name-template">user name template</a>.
                    </div>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>email</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>telephoneNumber</td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>mobile</td>
            </tr>
            <tr>
                <td>Office</td>
                <td>physicalDeliveryOfficeName</td>
            </tr>
            <tr>
                <td>Organisation</td>
                <td>company</td>
            </tr>
            <tr>
                <td>Division</td>
                <td>department</td>
            </tr>
            <tr>
                <td>Working position</td>
                <td>title</td>
            </tr>
            <tr>
                <td>User name</td>
                <td>userPrincipalName</td>
            </tr>
            <tr>
                <td>UserName (for legacy systems)</td>
                <td>sAMaccountName</td>
            </tr>
            <tr>
                <td>Supervisor</td>
                <td>manager</td>
            </tr>
            <tr>
                <td>Account is blocked</td>
                <td>userAccountControl</td>
            </tr>
        </tbody>
    </table>

    <h2>Examples of use</h2>
    <ol>
        <li>
            <p>
                Import all members of the <em>mygroup</em> group by entering a simple SQL server login:<br />
                <strong>ImportAD.exe /adpath</strong> &quot;LDAP://CN=mygroup,DC=my,DC=domain&quot; <strong>/server</strong> &quot;server\sql2005&quot; <strong>/db</strong> &quot;alvao&quot;<strong> /users</strong>
            </p>
        </li>
        <li>
            <p>
                Import the entire AD and specific SQL Server connection, removing users it can't find in AD:<br />
                <strong>ImportAD.exe /adpath</strong>
                &quot;LDAP://DC=my,DC=domain&quot; <strong>/conn</strong> &quot;Data Source=.\sqlexpress;Initial Catalog=alvao;Integrated Security=True;TrustServerCertificate=True&quot; <strong>/users</strong> remove
            </p>
        </li>
        <li>
            <p>
                Import a specific organizational folder and a simple SQL login. The <em>Organization</em> field will be set to the string <em>ALVAO</em> for all users. The <em>PersonalNumber</em> field will carry the value from the AD attribute <em>PersonalNumber</em>. The <em>Title</em> custom field will carry the value from the AD attribute <em>Personal</em>.
  PersonalTitle</em>. Groups outside the OU that are members of groups inside the OU are also imported:<br />
                <strong>ImportAD.exe /adpath</strong>
                &quot;LDAP://OU=ou1,DC=my,DC=domain&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/users</strong> outsidegroups<strong> /usermap</strong>
                &quot;Company=&#39;ALVAO&#39;&quot; <strong>/usermap</strong>
                &quot;PersonalNumber=AD.EmployeeID&quot; <strong>/usermap</strong>
                &quot;@tPersonCust.Title=AD.PersonalTitle&quot;
            </p>
        </li>
        <li>
            <p>
                Import of new hires. None of them are freelancers, all are part-time, and they start on Aug. 15 at 10 a.m. in the building at 12 Waterfront St. in room 007. All will be placed in their own line items of their respective types.<br />
                <strong>ImportAD.exe</strong> <strong>/adpath</strong>
                &quot;LDAP://DC=new,DC=domain&quot; <strong>/conn</strong> &quot;Data Source=.\sqlexpress;Initial Catalog=alvao;Integrated Security=True;TrustServerCertificate=True&quot; <strong>/users</strong> <strong>/usermap</strong> &quot;@tPersonCust.Externist=&#39;0&#39;&quot; <strong>/usermap</strong> &quot;@tPersonCust.Part_time=&#39;0,5&#39;&quot; <strong>/usermap</strong>
                &quot;@tPersonCust.Date_of_onboard=&#39;8/15/2015 10:00:00&#39;&quot; <strong>/usermap</strong>
                &quot;@tPersonCust.Building_address=&#39;Nábřežní 12&#39;&quot; <strong>/usermap</strong>
                &quot;@tPersonCust.Room_number=&#39;007&#39;&quot;
            </p>
        </li>
        <li>
            <p>
                Import objects of type <em>Computer</em> and <em>User</em> into Asset Management:<br />
                <strong>ImportAD.exe /adpath</strong>
                &quot;LDAP://OU=ou1,DC=my,DC=domain&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/objects</strong> computers,users
            </p>
        </li>
        <li>
            <p>
                Import objects of type <em>Computer</em> and <em>User</em> to Asset Management and also users and groups to Administration:<br />
                <strong>ImportAD.exe /adpath</strong>
                &quot;LDAP://OU=ou1,DC=my,DC=domain&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/objects</strong> computers,users <strong>/users</strong>
            </p>
        </li>
        <li>
            <p>
                Import computers from the standard Computers container to Asset Management:<br />
                <strong>ImportAD.exe /adpath</strong>
                &quot;LDAP://CN=Computers,DC=my,DC=domain&quot; <strong>/server</strong>
                server1 <strong>/db</strong> alvao <strong>/objects</strong> computers
            </p>
        </li>
    </ol>

    <h2>Key identifiers for creating or updating a user/PC </h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Entity</th>
                <th>Identifier</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>WebApp - Administration - Persons</td>
                <td>
                    <ul>
                        <li>AD GUID</li>
                        <li>login name without domain (and the AD GIUD of the person is also NULL - i.e. a manually created user)</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>WebApp - Administration - Groups</td>
                <td>
                    <ul>
                        <li>AD GUID</li>
                        <li>Group (name)</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>AM - Users/Computers/Folders</td>
                <td>
                    <ul>
                        <li>AD GUID</li>
                        <li>key attribute according to <a href="ad-object-property-mapping">tblAdMap</a> (and the AD GUID of the object is also NULL)</li>
                    </ul>
                </td>
            </tr>
        </tbody>
    </table>


    <h2>Supported scenarios</h2>

    <h3>Synchronization with the whole AD (including deleting users)</h3>

    <p>
        Execute an AD-wide import (LDAP://DC=...) and use the <strong>remove</strong> parameter when importing groups and users into Administration.
 (/users remove).
    </p>

    <h3>Importing a few selected AD groups into Alvao</h3>
    <ol>
        <li>Create a new group <em>ALVAO</em> in AD and set all the selected groups you want to import into Alvao as members.</li>
        <li>Set the import and path in the <strong>/adpath</strong> parameter.
 set <em>ALVAO</em> to this group.<br />
            Ex: <strong>/adpath</strong>
            &quot;LDAP://CN=alvao,OU=import,DC=domain&quot;</li>
        <li>All selected groups and their members (including users) will appear in Administration. The membership of the groups will be set correctly.</li>
    </ol>

    <h3>Import without photos directly from AD </h3>

    <p>
        When importing users from AD, portraits are also loaded by default from the <em>thumbnailPhoto</em> and <em>jpegPhoto</em> properties.
  User portraits are stored in the Alvao database.<br />
        If you don't want to retrieve portraits from AD, then run the import from the command line and add the <em>/noportraits.</em><br />
        For example:
    </p>
    <p>
        <strong>ImportAD.exe /adpath</strong>
        &quot;LDAP://OU=ou1,DC=my,DC=domain&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/objects</strong>
        computers,users <strong>/users /portraits</strong>
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="icon"></div>
        <div class="title">Note:</div>
        Thus, to automatically load a scheduled job, it is necessary to modify the <em>ImportAD</em> command by adding the /noportraits parameter.
    </div>

    <h3>Import objects to Asset Management</h3>

    <p>
        Start the import on the entire AD (cannot import blocked accounts) or selected OU and use the Switch
        <strong>/objects</strong> switch to specify what to import. Use the <strong>/objectparentid</strong> switch to define where to import the objects (optional).
    </p>

    <h3>Find Blocked Users from Active Directory</h3>
    <ol>
        <li>In the tree in the main AM Console window, select the entire organization and click the <em>Objects - All</em> tab.</li>
        <li>Show the <em>Account is blocked</em> column.</li>
        <li>Set the filter in the <em>Type</em> column to <em>User</em>
            and set the filter for the <em>Account is blocked</em> column to <em>Yes</em>.</li>
        <li>After creating a list of blocked users, use the <em>Show in object lists</em> command to more easily navigate through the list items.</li>
        <li>The filtered list contains users who have a blocked account in Active Directory. Move these users to the folder for excluded users.</li>
    </ol>

    <h3>Removing old users</h3>
    <p>If you want to delete old users who have not been found in Active Directory for some time, follow this procedure:</p>
    <ol>
        <li>In the Administration page, on the <em>Users</em> page, sort the users by the <em>Last Imported from AD</em> column in ascending order.</li>
        <li>Select and delete users who have not been found in AD for a long time.</li>
    </ol>
    <h3>Remove old objects from Asset Management</h3>
    <p>To remove old objects that have not been found in Active Directory for some time, follow this procedure:</p>
    <ol>
        <li>In the AM Console, select the entire organization in the object tree and go to the <em>Objects</em> tab.</li>
        <li>Show the <em>Last Imported from AD</em> column.</li>
        <li>Use the filter in the <em>Type</em> column to display only computers or users.</li>
        <li>Set the filter on the <em>Update imported from AD</em> column to not &quot;&quot; and sort the table in ascending order.</li>
        <li>From the local menu, use the <em>Show in object lists</em> command.</li>
        <li>In the <em>Object Lists</em> window, step through the old objects. If the user had an asset, complete the user's return.</li>
        <li>Move the objects to the <em>Classified Assets</em> folder.</li>
    </ol>
    <h3>Rename the computer</h3>
    <p>If a computer is loaded from Active Directory (AD) and you need to rename it:</p>
    <ol>
        <li>Rename the computer in Windows (the computer will remain the same GUID in AD).</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note: </div>
        The next time you import from AD, the ImportAD utility will automatically rename the computer in Asset Management as well.
    </div>
    
 <h3>Reinstall (reimage) a computer with name preservation</h3>
    <p>If a computer is loaded from Active Directory (AD) and you need to reinstall its operating system or restore it from a disk image and preserve its name on the network:</p>
    <ol>
        <li>Remove the computer from AD.</li>
        <li>Go to the AM Console, find the computer in the tree, and use the <em>Edit</em> command from the local menu.
            <br />
            Delete the value in the <em>GUID field of the object in Active Directory</em>.</li>
        <li>Reinstall the operating system or restore it from an image disk. Give the computer its original name.</li>
        <li>Register the computer in AD again (the computer gets a new GUID in AD).</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note: </div>
        The next time you import from AD, the ImportAD utility will automatically pair the new AD computer with the computer in Asset Management according to the <em>Network Name</em> property.
    </div>

</asp:Content>
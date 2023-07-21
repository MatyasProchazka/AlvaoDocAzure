<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object security</h1>

    <h2>Object Security Principles</h2>

    <p>
        Object security is used to set user access permissions to objects in the tree. <a href="../../list-of-windows/alvao-webapp/administration/users/detail/securityobject-authorization">Permissions</a> can be enabled, disabled, or combined in various ways. These settings are made in <strong>ALVAO WebApp - Administration</strong> in <a href="../implementation/users">user management</a>

        in the <a href="../../list-of-windows/alvao-webapp/administration/users/detail/security-object">Object Security</a> block, or on individual objects in the AM Console (only the Asset Management administrators can change them here).
    </p>
    <p>
        In order for the rights settings in the object tree to take effect, the <strong>Use rights in object tree</strong> option must be checked in the Asset Management settings - see <a href="../implementation/settings">Global Settings</a>. Enabling this option causes no objects to be displayed to users who have no permissions defined in the object tree. Objects will only be displayed when the <em>Read</em> permission is enabled. The exception to this is a user with the Administrator role for ALVAO Asset Management, to whom the tree permissions are not applied (all objects in the tree are always displayed).
    </p>

    <h3>Rights</h3>
    <p>The system allows you to set 5 types of permissions:</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Permissions</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Read</td>
                <td>The user sees the object in the object tree.</td>
            </tr>
            <tr>
                <td>Change</td>
                <td>The user can change the properties and property values of the object.</td>
            </tr>
            <tr>
                <td>Move</td>
                <td>The user can move the object to objects in which the object being moved will also have this right. For example, if the right is set for object type <em>Mobile Phone</em> on the <em>Department A</em> and <em>Department B</em> folders, mobile phones can be moved within and between departments.</td>
            </tr>
            <tr>
                <td>Remove</td>
                <td>User can delete an object.</td>
            </tr>
            <tr>
                <td>Create arbitrary objects</td>
                <td>User can create new child objects of any type under the defined object.</td>
            </tr>
        </tbody>
    </table>
    <div class="caution">
        <div class="icon">
        </div>
        <div class="title">
            Caution:
        </div>
        Permissions can be granted or denied. Denying permissions takes precedence over granting permissions.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The default setting for all objects and permissions is <em>deny</em> - that is, the user does not see any objects in the object tree until they are allowed to read them.
    </div>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Object security can be set for a group of users.


	
	<p>When permissions in the object tree are disabled, system roles have the following permissions in the tree:</p>
        <table class="wide">
            <thead>
                <tr>
                    <th>Role</th>
                    <th>Read</th>
                    <th>Change</th>
                    <th>Move</th>
                    <th>Remove</th>
                    <th>Create arbitrary objects</th>
                    <th>Note</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Asset Management administrators</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>Cannot restrict rights in tree</td>
                </tr>
                <tr>
                    <td>Asset Management readers</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Asset managers</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Software licences managers</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Same as <i>Asset Management readers</i></td>
                </tr>
                <tr>
                    <td>Software and hardware detections managers</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Same as <i>Asset Management readers</i></td>
                </tr>
                <tr>
                    <td class="auto-style4">Accountant</td>
                    <td class="auto-style4">x</td>
                    <td class="auto-style4">x<sup>1</sup></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">Can change values of some properties</td>
                </tr>
                <tr>
                    <td>Links readers</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Same as <i>Asset Management readers</i></td>
                </tr>
                <tr>
                    <td>Links managers</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Same as <i>Asset Management readers</i></td>
                </tr>
            </tbody>
        </table>
        <p>
            <sup>1</sup> The <em>Accountant</em> role can change the values of properties if you have this option in the <em>Property Definition</em> window on the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/security">Security</a><em> </em>set.
        </p>


        <div class="caution">
            <div class="icon"></div>
            <div class="title">Caution:</div>
            <div class="caution">
                When rights are enabled in the object tree:
                <ol>
                    <li>Implicit rule - everything that is not enabled is disabled.</li>
                    <li>A command rule over an object (except the default rule) takes precedence over an enable rule, even for inheritance to child objects.</li>
                    <li>Read permissions are evaluated from the root of the tree, i.e. an object will not be displayed to the user unless all its parent objects also have read permissions.</li>
                    <li>The order in the rules table has no effect on their evaluation. All of them are always evaluated with the limitations listed above.</li>
                </ol>
            </div>
        </div>


        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            Each user in the ALVAO WebApp can see own assets, i.e. they has the right to read on all child objects under their person in the tree.
        </div>

        <div class="note">
            <div class="icon"></div>
            <div class="title">Note: Membership in an AM user group is not an alternative for securing objects. If users are to modify, move, create, and delete objects, they must be members of the <em>Property Rights</em> group and must also define which objects these rights apply to.</div>
        </div>



        <h3>Example: How to set rights for the Mobile Phone Administrator group</h3>

        In this example, we create a new group <em>Cell phone managers business</em> and set permissions on it so that members of this group will take care of cell phones in the <em>Business Department</em>. They should have the right to work with objects of type <em>Cell Phone</em>:
        <ol>
            <li>Create (stack) them under the <em>Warehouse</em> object.</li>
            <li>Edit their data anywhere in the entire tree.</li>
            <li>Move them from the warehouse to anywhere under the <em>Business Department</em> object (and back again if necessary).</li>
            <li>Group members cannot see other departments.</li>
        </ol>
        Example object tree structure:
        <br />
        <div class="wide">
            <img src="sampledb.png" /></div>
        <ol>
            <li>Go to the ALVAO WebApp and make sure that the object tree rights are enabled - enable the <strong>Use object tree rights</strong> option in <strong>Management - Asset Management - Settings</strong> -
                <strong>General</strong>.</li>
            <li>Create a new group called <em>Cell phone managers business</em>.</li>
            <li>Edit the group, in the <strong>Is a member</strong> section, add the <em>Cell phone companies</strong> group.
Asset managers</em>. In the <strong>Object Security</strong> section, set permissions according to the following table:<table class="wide">
    <thead>
        <tr>
            <th>Object Type</th>
            <th>Object Name</th>
            <th>Including subtree</th>
            <th>Objects of type</th>
            <th>Read</th>
            <th>Change</th>
            <th>Move</th>
            <th>Remove</th>
            <th>Create arbitrary objects</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td>No</td>
            <td>Cellular phone</td>
            <td>Yes</td>
            <td>Yes</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Object templates</td>
            <td>Object templates</td>
            <td>No</td>
            <td></td>
            <td>Yes</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Folder</td>
            <td>IT Assets</td>
            <td>No</td>
            <td></td>
            <td>Yes</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style3">Warehouse</td>
            <td class="auto-style3">Warehouse</td>
            <td class="auto-style3">No</td>
            <td class="auto-style3"></td>
            <td class="auto-style3">Yes</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3">Yes</td>
        </tr>
        <tr>
            <td>Warehouse</td>
            <td>Warehouse</td>
            <td>Yes</td>
            <td>Cellular phone</td>
            <td></td>
            <td></td>
            <td>Yes</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Organization</td>
            <td>Our Company, Inc.</td>
            <td>No</td>
            <td></td>
            <td>Yes</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Department</td>
            <td>Business Department</td>
            <td>Yes</td>
            <td></td>
            <td>Yes</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Department</td>
            <td>Business Department</td>
            <td>Yes</td>
            <td>Cellular phone</td>
            <td></td>
            <td></td>
            <td>Yes</td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
                </table>
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    On the <em>Business Department</em> object, we have set that the user can move and change objects of type <em>Mobile</em> in it. This right will also allow the user to move objects under this department, but at the same time they cannot move the whole department, only the mobile phones lying inside the department.
                </div>

            </li>
            <li>Add user <strong>Joseph Freeman (Demo)</strong> to the newly created group <em>Cell phone managers business</em> - edit the user and add the appropriate group on the <strong>Is a member</strong> tab.</li>
            <li>When the user <strong>Joseph Freeman (Demo)</strong> then logs into the AM Console,
the object tree will look like this:<br />
                <div class="wide">
                    <img src="sampledb2.png" /></div>
            </li>
        </ol>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style3 {
            height: 25px;
        }

        .auto-style4 {
            height: 22px;
        }
    </style>
</asp:Content>


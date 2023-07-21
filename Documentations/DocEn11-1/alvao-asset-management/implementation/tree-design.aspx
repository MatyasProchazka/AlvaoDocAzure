<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Tree structure design</h1>

    <p>Now you create an object tree. The tree is displayed in the left side of the <a href="../../list-of-windows/alvao-asset-management-console">main window</a>.</p>
    <p>The tree should have the following basic structure:</p>
    <ul>
        <li>organization (Organization object)
            <ul>
                <li>organizational breakdown (Organizational Component, Building,... objects)
                    <ul>
                        <li>...
                            <ul>
                                <li>employee (User object)<ul>
                                    <li>asset (Assembly, Copier, Phone,... objects)</li>
                                </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    <p>At the root of the tree is the Organization object, which is further subdivided into smaller units according to the appropriate organizational breakdown. In the smallest organizational units (e.g. department, division, etc.) are located individual workers (User object) and under each worker is kept the property that has been entrusted to the worker for use (e.g. computers, mobile phone,...).</p>

    <h2>Heritage</h2>
    <p>
        The arrangement of objects in a tree takes advantage of the inheritance of certain properties. For example, a sales department will be represented by a Department object, which will be described by a Department property with the value &quot;Sales Department&quot;.
    </p>
    <ul>
        <li>Organization<ul>
            <li>Department=&quot;Sales Department&quot; (Department object)<ul>
                <li>...
                        <ul>
                            <li>User=&quot;Petr Pěnička&quot; (User object)<ul>
                                <li>asset</li>
                            </ul>
                            </li>
                        </ul>
                </li>
            </ul>
            </li>
        </ul>
        </li>
    </ul>
    <p>The Department property will be <em>inherited</em> to all child objects in the Business Department. This means that if we look at the properties of the Petr Pěnička object, for example, we will also find a Department property with the value &quot;Business Department&quot;. However, this property is defined in the parent object Department and is only inherited into the Petr Pěnička object. Therefore, the value of the Department property that we see in the Petr Pěnička object depends on which department Petr Pěnička is located in the tree. This will make it easier for us to work in a situation when a worker moves to another department, because then we only need to move the corresponding object representing the worker to another place in the tree. The situation is the same when moving assets between workers, because the object that represents the asset inherits the name of the user (the User property) to whom the asset was assigned.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can set whether or not a particular property will be inherited to child objects in the <strong>Property</strong> window that opens when you use the <strong>Property</strong> command in the property list on the <strong>Properties</strong> tab <strong>Edit</strong> from the local menu to the appropriate property.
    </div>

    <h2>Organizational breakdown</h2>
    <p>
        In this chapter, we will describe the process of creating an organizational breakdown tree. If you can't see the object templates and bin in the tree on the left side of the <a href="../../list-of-windows/alvao-asset-management-console">main window</a>, you have disabled the display of hidden objects. Use the <strong>Show - Hidden Objects</strong> command to show them.
    </p>
    <p>First, edit the object at the root of the tree to represent our organization/company.</p>
    <ol>
        <li>The new database should already contain the <strong>&lt;Organization&gt;</strong> object you created. Select this object in the tree.</li>
        <li>On the <strong>Properties</strong> tab on the top right, double-click the <em>Organization Name</em> property with the mouse and enter the actual name of the organization and save the value with the ENTER key. This property is set to form the name of the object in the tree and therefore the organization name will change in the object tree as well.</li>
        <li>Similarly, enter the address of the organization in the format <em>Name;Street;Zip Code City</em> as the value of the <em>Address</em> property and the organization code (abbreviation) in the <em>Organization Code</em> property.
  .</li>
    </ol>
    <p>We will further divide the organization into smaller units according to the breakdown that is common for you. If your organization has one headquarters and several branches in different cities, the breakdown might look like this:</p>
    <ul>
        <li>Organization<ul>
            <li>Prague Headquarters</li>
            <li>Ostrava branch</li>
            <li>Brno Branch</li>
        </ul>
        </li>
    </ul>
    <p>Here is the procedure for inserting the headquarters:</p>
    <ol>
        <li>In the tree, right click on the organization object and select the command - New Object from the menu.</li>
        <li>In the <a href="../../list-of-windows/alvao-asset-management-console/edit/new-object/object-template">New Object - Select the sample object - Object Templates</a>, select <em>&lt;Plant&gt;</em> in the Organizational Structure folder and confirm with OK.</li>
        <li>The enterprise object type is inserted into the tree. Select it with the mouse.</li>
        <li>On the <strong>Properties</strong> tab on the top right, select the <em>enterprise</em> property and edit its value to &quot;Prague Headquarters&quot; and confirm with ENTER. The property again determines the name in the tree, so the name of the object in the tree will change automatically.</li>
    </ol>
    <p>Similarly, insert objects for the Ostrava and Brno branches into the tree. Each branch will probably have further subdivisions into individual departments, etc. We will insert the department into the tree similarly to the branch, only instead of the Plant object we will use the Department object.</p>
    <p>To subdivide the organization, you can use the objects that are in the <em>Organizational Structure</em> folder when you add the object to the tree, i.e.:</p>
    <ul>
        <li>Building</li>
        <li>Floor</li>
        <li>Room</li>
        <li>Workplace</li>
        <li>Division</li>
        <li>Department</li>
        <li>Department</li>
        <li>Network</li>
        <li>Subnet</li>
        <li>Network branch</li>
        <li>Storage</li>
        <li>Disposed assets</li>
        <li>A plant</li>
        <li>Section</li>
        <li>Centre</li>
    </ul>
    <p>The following properties are available for describing objects: </p>
    <ul>
        <li>Building</li>
        <li>Division</li>
        <li>Office</li>
        <li>Room</li>
        <li>Department</li>
        <li>Department</li>
        <li>Floor</li>
        <li>Workplace</li>
        <li>Section</li>
        <li>Centre</li>
        <li>Location</li>
        <li>Section</li>
        <li>Unit</li>
        <li>Plant</li>
    </ul>
    <p>Objects do not have to be described by only one property, but you can use more than one. For example, if the entire sales department is located on the second floor, you can describe it with a Department object with the properties Department=&quot;business&quot; and Floor=&quot;2&quot;.</p>

    <h2>Organisation staff</h2>
    <p>Organization employees are represented in the tree by the <em>User</em> object and are inserted into the tree in a similar way to organizational objects. Just select the <em>&lt;User&gt;</em> object in the object menu in the - New Object command. Each user is described by default by the properties Office (office number), User (employee name), Personal number, etc.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can describe users with additional properties and you can also create completely new properties that the system does not offer by default, vi <a href="customization">User customization</a>.
    </div>

    <h2>Majetek</h2>
    <p>Evidenced assets (computers, printers, phones, etc.) are also represented by objects in the tree. They are generally handled in the same way as organizational objects or employees.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        An asset is any object<span> that contains the property "Inventory Number" or "Registration Number". Property values can also be empty.</span>
    </div>

    <p>Each asset in an organisation is usually the responsibility of a specific person, e.g. a computer is the responsibility of the user to whom the computer has been assigned. In this case, the computer and other objects should be inserted in the tree as child objects of the respective employee:</p>
    <ul>
        <li>Václav Pěnička (user)<ul>
            <li>Nokia 6610 (mobile phone)</li>
            <li>PC154 (computer set)</li>
        </ul>
        </li>
    </ul>


    <p>If an asset in the tree structure cannot be placed under a specific person (for example, a shared printer in the hallway), place it as a child object under an organizational structure component (for example, a department). Then, on the folder, specify the person responsible for the assets in this folder in the <strong>Responsible for assets</strong> property:</p>
    <ul>
        <li>IT Department (Department) - Property value "Responsible for assets" =
	"Michal Nový"
                <ul>
                    <li>HP LaserJet Pro (printer)</li>
                    <li>Václav Pěnička (user) - Value of property "Responsible for assets" = "Václav Pěnička"
                        <ul>
                            <li>Nokia 6610 (mobile phone)</li>
                            <li>PC154 (computer set)</li>
                        </ul>
                    </li>
                </ul>
        </li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The value of the property "Responsible for property" is inherited by child objects. For an object of type "User", the value is automatically set to the given person. Therefore, the property under the user is still the responsibility of "Václav Pěnička".
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you want to record the responsibility for assets that are not placed in the tree under specific users, we recommend adding the "Responsible for assets" property to the templates of the organizational structure objects and to the template of the object type "User".
No object contains this property by default.
    </div>


    <p>If you need more than one person to be responsible for the assets in a room, for example, divide the assets into different folders and set different people on these folders in the "Responsible for assets" property. For example:</p>
    <ul>
        <li>Server room (Room) - value of property "Responsible for property" =
	"Michal Nový"
                <ul>
                    <li>Servers, Václav Pěnička - value of property "Responsible for property" = "Václav Pěnička"
                        <ul>
                            <li>Dell PowerEdge 2950 (Computer/Server)</li>
                        </ul>
                    </li>
                    <li>Network Elements, Petr Omáčka - value of property "Responsible for assets" = "Petr Omáčka"
                        <ul>
                            <li>HP 1810 (Switch)</li>
                        </ul>
                    </li>
                    <li>PowerEdge 2420 (Rack)</li>
                </ul>
        </li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can also insert the "Responsible for asset" property directly into asset objects. However, to make it easier to move assets around, we recommend that you only inherit this property from Organizational Units and User type objects into asset objects.
    </div>



    <p>Users can check their asset records at any time in the ALVAO WebApp - user menu - <a href="../../list-of-windows/alvao-webapp/search/persons/person">My Directed Assets</a>. The command is only displayed to users who are registered in the object tree and have the <em>User Name</em> property filled in. In <i>WebApp - Administration - <a href="../../list-of-windows/alvao-webapp/administration/users">Users</a></i> users do not need to be registered.  If ALVAO Service Desk is not activated, but only ALVAO Asset Management, the <em>My Trust Assets</em> page is the default.</p>
    <p>
        Computers, monitors and some printers can be detected by the system on the network and added to the records, see <a href="detection">Hardware and software detection</a>. Other objects such as copiers, phones, electronic diaries, etc. need to be entered into the register like any other object, i.e. with the command - New Object. Standard types of devices and objects can then be found in the object templates in the folders.
            <ul>
                <li>IT inventory</li>
                <li>Other inventory</li>
                <li>Supplies</li>
            </ul>

        <h2>Read Organizational, Employee, and Computer Information from Active Directory</h2>
        <p>In addition to manually creating organizational structure objects and objects representing the organization's workers as described in the previous sections, you can automatically retrieve these objects from Microsoft Active Directory. The scope of the retrieved data can be user-defined.</p>
        <p>The process of retrieving objects from Active Directory:</p>
        <ol>
            <li>Select the object in the tree into which to load the organizational structure and select <strong>Object - Load from Active Directory</strong> from the menu.
If you want to load the organizational structure into the root of the tree, do not select any object.</li>
            <li>In the <a href="../../list-of-windows/alvao-asset-management-console/object/retrieve-objects-ad">Retrieve Objects from Active Directory</a>, specify the <strong>LDAP</strong> path to the folder with the organizational breakdown in Active Directory, check the <strong>Organizational breakdown</strong> box,
  <strong>User</strong>, <strong>Computer</strong>, and press the <strong>Read</strong> button.

                    <p><strong>Example 1. LDAP paths</strong></p>
                <p>Path to the ALVAO folder of the ALVAO organizational structure on the ALVAO.CZ domain</p>
                <p>LDAP://server/ou=alvao,dc=alvao,dc=en</p>
                <p>Path to the IT folder in the ALVAO organizational structure on the ALVAO.CZ domain</p>
                <p>LDAP://server/ou=it,ou=alvao,dc=alvao,dc=en</p>

            </li>
            <li>The program creates new objects and adds them to the tree, which can take several minutes depending on the extent of the structure in AD.</li>
        </ol>
        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            When loading objects from Active Directory, the program will only load objects that are not disabled in AD.
        </div>
        <div class="tip">
            <div class="icon"></div>
            <div class="title">Tip:</div>
            You can start loading information from Active Directory automatically see <a href="users/authentication/ad/import-ad">ImportAD</a>.
        </div>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Software Profiles</h1>
    <p>The ALVAO Asset Management system supports monitoring of installed software on computer stations in the network. In order to efficiently compare and monitor which software is installed correctly on a computer and which software is missing or not allowed on a computer, a feature called software profiles is available. The idea is that an administrator creates a set of profiles that specify which software is allowed, which is disabled, and which is mandatory. The profiles can be freely combined using a hierarchy of sub-profiles to achieve an efficient setup. In addition, exceptions can be defined for each computer.</p>
    <h2>Managing software profiles</h2>

    <ol>
        <li>In the <strong>ALVAO WebApp</strong>
            use the <strong>Administration - Asset Management - Software Profiles</strong> command.</li>
        <li>On the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/software-profiles">Software Profiles</a> you can create and edit profiles.</li>
        <li>Before closing the window, you must save your changes to the database using the <strong>Save</strong> command.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Profiles can be created and edited by a person who is a member of the <i>Administrators</i> or <i>Software profiles managers</i> group.
    </div>

    <h2>Assigning Profiles to Computers</h2>
    <p>
        We then assign profiles to the computers and the system automatically tracks how the installed software stacks up against the defined profile. It then notifies you of disabled or missing software and displays a
        <img src="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/Exclamation.png" />
        icon on the <strong>Software</strong> tab.
Software that is defined in the profile as mandatory but not installed on the monitored station is additionally distinguished by the
        <img src="../../list-of-windows/alvao-asset-management-console/tab-view/software/SwProfReq.gif" />
        icon.
(The software that is required but not installed does not actually exist on the station. It only appears as a virtual record).
    </p>
    <p>
        The assignment of profiles to a computer can be done on a per computer basis using the <strong>Edit...</strong> in the object tree on the tab <a href="../../list-of-windows/alvao-asset-management-console/edit/object/software-profile">Object - Software Profile</a> (this tab is only visible on an object of type &quot;computer&quot; or &quot;computer assembly&quot;). Profiles can also be configured in bulk for multiple computers at once on the <strong>Child Objects - Computers</strong> tab in the main window using the Change Software Profile... from the context menu. The tab window appears again <a href="../../list-of-windows/alvao-asset-management-console/edit/object/software-profile">Object - Software Profile</a>, but the settings will be reflected on all selected computers.
    </p>
    <p>
        On the tab <a href="../../list-of-windows/alvao-asset-management-console/edit/object/software-profile">Object - Software Profile</a>, you can select one profile and further configure exceptions for each computer. These have higher priority than the settings in the selected profile. It is thus possible to additionally &quot;fine-tune&quot; minor deviations from the profile for individual computers. Exceptions cannot be configured when setting profiles for multiple computers in bulk. Setting the <strong>All software is enabled</strong> option will not check the status of the installed software against the Software Profile. All products on the <strong>Software</strong> tab in the main window will then display the profile status as <strong>Optional</strong>.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Newly created computers in the system follow the profile settings of the computer template. Also, when computers are copied, the original software profile settings are preserved.
    </div>


    <h3>Priority settings in the Software Profile</h3>
    <p>
        Three different states can be set for the products included in the Software Profile - <strong>Optional</strong>, <strong>Mandatory</strong> and <strong>Disabled</strong>.
Using these three states, profiles can be set up appropriately to allow us to easily monitor the software installed on computers and alert the system administrator to inappropriate states (software missing on the computer, software not on the computer).
    </p>
    <p>
        Product that is not defined in the Software Profile is automatically taken as disabled, and the <strong>Disabled</strong> status has the highest priority. The <strong>Stripped</strong> status takes precedence.
Prohibited</strong> can be defined for products that are prohibited in the company (e.g. ICQ, Skype, etc.) and we want to alert if their installation appears on a computer. The system will also alert us to new software (unless it is set to <strong>Optional</strong> in the Software Profile) that appears on the computer.
    </p>
    <p>
        It can also be set to require specific software to be present on computers and to alert when it is absent. The <strong>Necessary</strong> option
option can be used, for example, for Microsoft Office software, etc.
    </p>
    <p>The <strong>Optional</strong> option is used to define other software that we are not interested in monitoring and do not want to be notified of its presence.</p>


    <h2>Tracking Installation Status against Software Profile</h2>
    <p>
        The status against the Software Profile is displayed in several places in the system. Columns related to the Software Profile are highlighted in <em>blue</em> in the system.
States are visible in the following locations in the system:
    </p>
    <ul>
        <li><em>Objects Tab - Computers</em> - the following columns are visible in this table:<ul>
            <li><em>Software Profile</em> - Displays the profile that is currently selected for the computer</li>
            <li><em>All Software Enabled</em> - Displays whether the <strong>All Software Enabled</strong> option is enabled on the computer
All software is enabled</strong> and therefore the status against the Software Profile is not monitored (the Software Profile feature is disabled).</li>
            <li><em>SW Exceptions</em> - The number of exceptions defined for the computer</li>
        </ul>
        </li>
        <li><em>Software tab (computer or computer set selected in the tree)</em> </em>
- It can be used to monitor the status of installed software against the Software Profile using the columns:<ul>
    <li><em>Profile Status</em> - displays the status of the product against the Software Profile - <strong>Optional</strong>, <strong>Mandatory</strong>, <strong>Disabled</strong>
        and <strong>Missing</strong> - this status is a <strong>virtual</strong> entry (this product is not actually installed on the station), it only indicates that the station lacks the installation of the product required by the Software Profile (the product is defined as <strong>Mandatory</strong> in the Software Profile).</li>
    <li><em>Error Message</em> - displays an error message common to the Software Profile status and the license status that specifies what is wrong on the machine.</li>
            </ul>
        </li>
        <li><em>Software tab (another object selected in the tree that contains computers in the subtree)</em> - can be used to monitor the status of the installed software on computers in the subtree against the Software Profile using the columns:<ul>
            <li><em>Top of the window</em> - displays a summary list of products installed on all computers in the selected subtree. There may be entries with the icon
                <img src="../../list-of-windows/alvao-asset-management-console/tab-view/software/SwProfReq.gif">
                - indicates that a computer is missing software that is set as <strong>in its profile
Required</strong>. If a product displays the
                <img src="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/Exclamation.png" />
                icon,
this means that there may be a problem with the license, the Software Profile, or both, on some machine in the subtree. For more information, click on the product and watch the bottom of the window.</li>
            <li><em>Bottom of Window</em> - displays an overview of the computers that have installed the product selected at the top of the window. Again, there are <strong>columns</strong>
                Profile Status</strong> and <strong>Error Messages</strong> similar to the <em><strong>Software</strong></em> tab (for a single computer). Icon
                <img src="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/Exclamation.png">
                again indicates a problem with the license, the Software Profile, or both. See the <strong>Error Message</strong> column for more information.</li>
        </ul>
        </li>
        <li><em>License and Installation Overview (bottom of window)</em> - displays an overview of the computers that have installed the product selected at the top of the window. This part of the window is the same as the <strong>Bottom of the Window</strong> on the <em><em><strong>Software</strong></em> (with a different object selected in the tree that contains the computers in the subtree).</li>
    </ul>
</asp:Content>

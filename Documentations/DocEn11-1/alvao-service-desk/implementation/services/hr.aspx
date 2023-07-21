<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Employee Management</h1>

    <p>The basic processes in Employee Management are:</p>

    <ul>
        <li>New employee joining
            <ul>
                <li>The aim of the process is to ensure that all working resources (e.g. desk, computer, access cards, ...) are prepared in time.
  for the new employee so that the new employee can work fully from day one. In addition, during the first few weeks after the new employee's arrival (i.e. during the adaptation period), ensure that the new employee is trained and that all legal obligations (occupational safety courses, health checks, etc.) are met.
                </li>
            </ul>
        </li>
        <li>Employee separation
            <ul>
                <li>The aim of the process is to create all the documents necessary to formally terminate the employment relationship with the employee, revoke all their access rights to information systems and physical spaces (keys, access cards) and take over all the entrusted working resources from the employee (computer, mobile phone, ...).
                </li>
            </ul>
        </li>
        <li>Changing employee data<ul>
            <li>The aim of the process is to update all records containing the employee's personal data in a timely manner, e.g. when the employee's bank account is changed for sending salaries, etc.</li>
        </ul>
        </li>
    </ul>
    <p>
        These processes usually require coordinated collaboration of many teams, especially HR, IT, Facilities Management, etc. At Alvao, a request or set of requests arises for each team to complete specific steps in the process, such as preparing the physical workplace, preparing the computer, conducting periodic assessment interviews with the employee during their onboarding, etc. Each request has an expected resolution date and is automatically directed to a specific implementation team. 
    </p>

    <h2>Process Settings</h2>

    <ol>
        <li>Select your version of Alvao at <a href="https://www.alvao.com/en/download">https://www.alvao.com/download</a> and download the <strong>AlvaoEmployeeManagementServices{Enu/...}.xml</strong> file for your <a href="../../../alvao-asset-management/implementation/supported-languages">Alvao system language</a> to your computer.
        </li>
        <li>In <strong>WebApp - Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a> in the service tree, select the folder where you want to place the <em>Human Resources Department</em> service.
  If you do not select any service in the tree, the new service will be created directly at the root level of the tree.  </li>
        <li>Use the <a href="../../../alvao-service-desk/implementation/services/service-transfer">Import</a> command to import the file from step 1.
            <br />
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Only entities that do not already exist in the database are imported from the file. Before the import, a list of possible collisions is displayed on the page.   If you still want to import entities from the file, in the appropriate <em>WebApp</em> - <a href="../../../list-of-windows/alvao-webapp/administration">Administration</a> sections, rename the existing entities first. 
            </div>
        </li>
        <li>The <strong>Personnel Department</strong> service will appear in the service tree and other services that are used in the processes will appear in its subtree. You can move these services to any other part of the service tree or remove them if you do not want to use them.  </li>
        <li>If you are using the <a href="../../../modules/alvao-sd-advanced-workflows">ALVAO Advanced Workflows</a> module, in the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process">processes</a> <strong>HR - Employee Onboarding, HR - Employee Offboarding, and HR - Employee Data Change</strong> in the <strong>New</strong> status, check and modify, if necessary, the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/automatic-request-creation">automatic request creation</a>.
        </li>
        <li>In the new services, assign the appropriate permissions and SLAs to the user groups.  </li>
        <li>Test the processes by creating test requests. </li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        For more advanced process automation, use the <a href="../../../modules/alvao-sd-custom-apps">ALVAO Service Desk Custom Apps</a> module.<br />
    </div>

</asp:Content>

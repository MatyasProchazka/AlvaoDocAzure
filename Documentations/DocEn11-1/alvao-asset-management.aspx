﻿<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO Asset Management</h1>
    <p>
        ALVAO Asset Management is a system that ensures the registration of IT equipment, software and other items. For more information, see the website <a href="https://www.alvao.com/asset-management">ALVAO Asset Management</a>.
    </p>
    <p>
        Introduction <a href="alvao-asset-management/implementation">Implementing a System in an Organization</a> summarizes topics related to implementing a system in an organization and its basic setup.
    </p>
    <p>Further chapters cover topics on system usage.</p>
    <p>The <a href="list-of-windows">Window and Command Index</a> provides descriptions of the various windows, forms, and commands in each Alvao application.</p>


    <h2>What processes does the system support</h2>
    <ul>
        <li><strong>Asset registration</strong> - any asset can be registered in the system - from hardware (computers, network elements, ...), to media (CDs, DVDs, literature, ...) to e.g. office furniture, etc. An inventory can be taken of the assets recorded on a regular basis to ensure that the records correspond to reality.</li>
        <li><strong>Transfer of computers to users</strong> - when transferring computers and other devices (mobile phone,...) to new employees, the system prints a <em>Transfer Protocol</em>. The protocol is signed by the transferring ICT employee and the employee who takes over the use of the asset. The protocol includes a declaration by the employee that will not install any software on the computer without the knowledge of the ICT staff, which is one form of ensuring the legality of the software used in the organisation.</li>
        <li><strong>Transfers of assets between users</strong> - one of the tasks of ICT staff is the purchase of new computer equipment and the associated transfer of computers between users. Asset transfers should be documented by signed Transfer Protocols. In addition, the system records the history of the transfer of each item between staff members so that it is possible to trace back who has worked with a particular computer in the past.</li>
        <li><strong>Software Audit</strong> - the system determines what applications are installed on each computer based on information about the files on the computers' hard drives and data in the system registry. This data is automatically captured remotely over the network. A final audit report is generated by comparing the installed software with the purchased licenses.</li>
        <li><strong>Records and Repairs</strong> - in the event of a failure on a piece of equipment, the system provides functions to quickly locate purchase documents and warranty information. A history of failures and service interventions is maintained for each device.</li>
        <li><strong>User Support</strong> - the system provides technical support staff with information about the technical parameters of the computers of the users whose problem they are currently solving. They can also remotely connect to the user's computer and control it with a keyboard and mouse.</li>
        <li><strong>Bulk Deployment of New Devices</strong> - using the CS1504 mobile barcode scanner, a new device can be easily created in Asset Management. From scanned barcodes (serial numbers, ... ), new assets can be created in bulk in the tree.</li>
        <li><strong>Inventory</strong> - the system supports full Inventory. You can easily find the difference between recorded and physical assets and transfer the recorded changes to the asset register.</li>
    </ul>

    <h2>What can be recorded</h2>

    <ul>
        <li><strong>Computers</strong> - data on computer hardware and accessories (printers, keyboards, mice, tablets, etc.). Technical parameters of the hardware are detected by the system itself and automatically entered into the register. Other data, such as inventory numbers, purchase dates, invoice numbers and warranty data, must be imported into the system from other sources or entered manually.</li>
        <li><strong>Installed software</strong> - a list of applications that are installed on individual computers. There is also an installation history that tracks when and who installed what software on which computers.</li>
        <li><strong>Software Purchased</strong> (Software License Management) - a list of documents about software license purchases, their gradual upgrade to newer versions, including the allocation of licenses to computers or users.</li>
        <li><strong>Other assets</strong> - e.g. telephones, printers, data projectors, etc.</li>
        <li><strong>Supplies</strong> - stock of consumables such as toner and inkjet printer cartridges.</li>
    </ul>


</asp:Content>
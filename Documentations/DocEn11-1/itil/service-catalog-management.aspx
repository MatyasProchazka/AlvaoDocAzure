<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Service Catalog Management</h1>

    <p class="MsoNormal">
        The service catalogue is a single place to manage all services provided by service departments across the organisation (IT department, HR department, building management, fleet management, ...). The aim of managing the service catalogue is to ensure that the service catalogue reflects the actual situation in the organisation and that services are available to those users (requesters) who have <a href="../alvao-asset-management/implementation/users/permissions">the right to use the services</a>, at agreed levels (<a href="../alvao-service-desk/implementation/services/sla">SLA</a>).
    </p>
    <p class="MsoNormal">
        The development of the service catalogue should take place in the form of a workshop with the participation not only of members of the solution teams (inside view), but especially of key users of the services and business representatives (outside view). A well-designed service catalogue is intuitive for both requesters and researchers, reducing the need to <a href="../alvao-service-desk/requests/move-to-another-service">move between services</a>.
    </p>
    <p class="MsoNormal">The Service Catalog manager is typically the CIO of the company (who is typically also the Service Level manager).</p>

    <h2>Structure</h2>

    The service catalogue should be structured logically, and services can be grouped by subject matter (e.g. by departmental agendas). This creates a hierarchical service catalogue or, if you prefer, a service tree. Based on the experience gained from our customers' implementations, we recommend structuring the service catalogue as follows:
    <ul>
        <li>substantive grouping</li>
        e.g. Applications - Office applications - MS Office, Computers and end devices - Laptops and tablets
    </ul>

    <ul>
        <li>at the last level of the defined ITIL process workflow (typically Incident Management, Request Fulfilment, Change Management, Problem Management)</li>
        e.g. Request (Request), Incident (Incident), Change (Change)
    </ul>


    <h2>How the ALVAO Service Desk looks like</h2>
    <h3>Sample of service structure</h3>
    <ul>
        <li>Changes to company standards</li>
        <li>Administration</li>
        <li>Information Technology</li>
        <ul>
            <li>I need help</li>
            <li>Telephony</li>
            <li>Computers, laptops and tablets</li>
            <li>Printing services</li>
            <ul>
                <li>Hassle of using</li>
                <li>Printer request</li>
            </ul>
            <li>Programs and applications</li>
            <li>Enterprise Information System</li>
            <ul>
                <li>Help with use</li>
                <li>Report an error or malfunction</li>
                <ul>
                    <li>Troubleshooting</li>
                </ul>
                <li>Setting up and changing access</li>
                <li>Suggestions for improvement</li>
            </ul>
            <li>Email</li>
            <li>Shared files and folders</li>
            <li>Remote network access</li>
            <li>Support services</li>
            <ul>
                <li>Access Management</li>
                <li>Applications</li>
                <ul>
                    <li>Desktop applications</li>
                    <li>ERP system</li>
                    <li>Exchange</li>
                    <ul>
                        <li>Incidents</li>
                        <li>Problems</li>
                    </ul>
                </ul>
                <li>Change Management</li>
                <li>Infrastructure</li>
                <li>IT projects</li>
                <li>Problem Management</li>
                <li>Software Asset Management</li>
            </ul>
            <li>Compliments, complaints and ideas</li>
        </ul>
        <li>Building Management</li>
        <li>Fleet Management</li>
        <li>Buying to order</li>
        <li>Machinery maintenance</li>
        <li>Development</li>
        <li>Personnel Department</li>
        <li>Legal Services</li>
        <li>Finance</li>
        <li>Marketing</li>
        <li>Security</li>
        <li>Quality</li>
        <li>Management</li>
    </ul>
    <h3>User WebApp</h3>
    <img src="service-catalog-management/SDWA - Catalog EN.PNG" alt="Service Catalog in ALVAO WebApp" />



    <p class="MsoNormal">
        With a well-designed service catalog, there is little fluctuation in requests because the intuitive catalog, supported by appropriate icons and descriptions, correctly guides the requester to the last level with a specific workflow. If for some reason the requester is unsure where to place a request, they can create it at any level - operators and solvers will move it to the correct service as part of the requester communication and diagnostics.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Services that have a <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">are not displayed in the service catalog.service settings</a>
        the "Show in service catalog" option is disabled.
    </div>

    <h2>Example of an internal directive</h2>
    <p class="MsoNormal">
        An internal directive on this issue should include the following information:
    </p>
    <h3>IT Service Catalogue</h3>
    <ol>
        <li>A list of services provided by the company's internal IT staff.</li>
        <li>Each list should be a separate document (stored e.g. on SharePoint)</li>
        <li>You can then reference these catalog sheets from the Service Desk forms (description field)</li>
    </ol>
    <p>
        <table>
            <tr>
                <td>
                    <p>Service ID</p>
                </td>
                <td>
                    <p>S001</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Service name</p>
                </td>
                <td>
                    <p><strong>Computers and accessories</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Description of service</p>
                </td>
                <td>
                    <p>
                        <b>Supply and service of computer and accessories</b>
                        <ul>
                            <li>computer</li>
                            <li>desktop</li>
                            <li>or laptop + docking station + bag</li>
                        </ul>
                        </li>
 <li>monitor</li>
                        <li>mouse</li>
                        <li>keyboard</li>
                        <li>headset with microphone</li>
                        <li>necessary connection cables</li>
                        </ul>
 
 <p>
     <b>Connection to internal corporate network</b>

     <br />
     Connecting a computer to the internal corporate network Computers are connected to the internal network:<br />
     a) by cable
     <br />
     b) wirelessly (wifi)
                        </p>


                        <p>
                            <b>Web Access</b>
                            <br />
                            Providing access to the web from the internal company wall Computers are connected to the Internet via the internal company network. The connection is set up automatically. There is no need to set it up manually. Access from the internal network to web servers on the Internet is not restricted.
                        </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Variants<o:p></o:p></p>
                </td>
                <td>
                    <p>Business - Laptop</p>
                    <p>Design - desktop station</p>
                    <p>Administrative - desktop PC</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Key User<o:p></o:p></p>
                </td>
                <td>
                    <p>
                        Petr Novák (shop)<br />
                        František Doskočil (construction)<br />
                        Marie Okurková (administration)
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Default service levels<o:p></o:p></p>
                </td>
                <td>
                    <p>Delivery: RF001 - Standard Request Resolution<o:p></o:p></p>
                    <p>Repair: IM001 - Standard Troubleshooting<o:p></o:p></p>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td>
                    <p>Service ID</p>
                </td>
                <td>
                    <p>S002</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Service name</p>
                </td>
                <td>
                    <p><strong>Standard SW</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Description of service</p>
                </td>
                <td>
                    <p>
                    Installation and support of standard software that comes with the computer. </td>
            </tr>
            <tr>
                <td>
                    <p>Options</p>
                </td>
                <td>
                    <table>



                        <thead>
                            <th>Application</th>
                            <th>Key User</th>
                            <th>Basic Software</th>
                        </thead>
                        <tr>
                            <th>Recommended for new computers</th>
                            <td></td>
                </td>
            </tr>
            <tr>
                <td>Windows 7 Enterprise (English, x64)</td>
                <td>Petr Novák</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Microsoft Office 2010 Professional Plus (Czech, x64)</td>
                <td>Petr Novák</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Microsoft Lync</td>
                <td>Petr Novák</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Adobe Acrobat Reader</td>
                <td>Petr Novák</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>7Zip</td>
                <td>Petr Novák</td>
                <td>Yes</td>
            </tr>
            <tr>
                <td>Microsoft Office Project 2010 Professional (Czech, x64)</td>
                <td>František Doskočil</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Microsoft Office Visio 2010 Professional (Czech, x64)</td>
                <td>František Doskočil</td>
                <td>No</td>
            </tr>
            <tr>
                <th>Old supported applications:</th>
                <td></td>
                </td></td></tr>

            <tr>
                <td>Microsoft Vista Enterprise (Czech, x64/x32)</td>
                <td>Petr Novák</td>
                <td></td>
            </tr>
            <tr>
                <td>Microsoft Office 2007 Enterprise (Czech. x64/x32)</td>
                <td>Petr Novák</td>
                <td></td>
            </tr>
            <tr>
                <td>Microsoft Office Project 2007 Professional (English, x32)</td>
                <td>František Doskočil</td>
                <td></td>
            </tr>


        </table>
        </td>
 </tr>
 <tr>
     <td>
         <p>Key User<o:p></o:p></p>
     </td>
     <td>
         <p>
             Petr Novák (shop)<br />
             František Doskočil (construction)<br />
             Marie Okurková (administration)
         </p>
     </td>
 </tr>
        <tr>
            <td>
                <p>Default service levels<o:p></o:p></p>
            </td>
            <td>
                <p>Delivery: RF001 - Standard Request Resolution<o:p></o:p></p>
                <p>Repair: IM001 - Standard Troubleshooting<o:p></o:p></p>
            </td>
        </tr>
        </table>
	<br />
        <table>
            <tr>
                <td>
                    <p>Service ID</p>
                </td>
                <td>
                    <p>S003</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Service name</p>
                </td>
                <td>
                    <p><strong>Electronic mail</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Description of service</p>
                </td>
                <td>
                    <p>
                        Management of electronic mailboxes.
                    </p>
                    <p>Each employee has their own electronic mailbox. The standard address format is
                        <name.prijmeni>
                        @firma.cz.</p>
                    <p>The size of the mailbox is limited to 500 MB, see the recommended settings for automatic archiving. The contents of the mailbox are duplicated on two hard drives in case of disk failure. In case of server destruction or theft, data is backed up 2x/year.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Options</p>
                </td>
                <td>No variants of this service are offered. For any non-standard needs, please submit a request under Standard Request Resolution and the department will address it</td>
            </tr>
            <tr>
                <td>
                    <p>Key User<o:p></o:p></p>
                </td>
                <td>
                    <p>Petr Novák</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Default service levels<o:p></o:p></p>
                </td>
                <td>
                    <p>Delivery: RF001 - Standard Request Resolution<o:p></o:p></p>
                    <p>Repair: IM001 - Standard Troubleshooting<o:p></o:p></p>
                </td>
            </tr>
        </table>



        <br />
        <table>
            <tr>
                <td>
                    <p>Service ID</p>
                </td>
                <td>
                    <p>S004</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Service name</p>
                </td>
                <td>
                    <p><strong>Shared Files and Folders</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Description of service</p>
                </td>
                <td>Management of shared drives, their backup and archiving.<br />
                    Troubleshoot problems with shared drives and data on them, assign and change access rights
 <br />
                    <br />
                    Shared disks are<table>
                        <thead>
                            <th>Disk</th>
                            <th>Description</th>
                        </thead>
                        <tr>
                            <td>S:</td>
                            <td>Backup disk in the ZR.
                                <br />
                                The size of the disk is 20 GB.<br />
                                <br />
                                The contents are backed up every night after the work day. The backup resists destruction or theft of the server. The last 5 backups are archived.</td>
                        </tr>
                        <tr>
                            <td>T:</td>
                            <td>Working disk in ZR.
                                <br />
                                The disk size is 200 GB.<br />
                                <br />
                                The contents are stored duplicated on two hard disks in case of disk failure. Data is backed up 2x/year in case of server destruction or theft.</td>
                        </tr>

                        <tr>
                            <td>In:</td>
                            <td>Working drive in Brno.
                                <br />
                                The size of the disk is 200 GB.<br />
                                <br />
                                Content is stored duplicated on two hard drives in case of disk failure. In case of server destruction or theft, data is backed up 2x/year. The V:\Backup folder is backed up every night after the working day. The backup resists destruction or theft of the server.  The last 5 backups are archived. The size of this folder is limited to 1GB.</td>
                        </tr>
                    </table>


                </td>
            </tr>
            <tr>
                <td>
                    <p>Variants</p>
                </td>
                <td>Access controlled based on job title (management, finance department, administrative staff, ...)
                </td>
            </tr>
            <tr>
                <td>
                    <p>Key user<o:p></o:p></p>
                </td>
                <td>
                    <p>Petr Novák</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Default service levels<o:p></o:p></p>
                </td>
                <td>
                    <p>Delivery: RF001 - Standard Request Resolution<o:p></o:p></p>
                    <p>Repair: IM001 - Standard Troubleshooting<o:p></o:p></p>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


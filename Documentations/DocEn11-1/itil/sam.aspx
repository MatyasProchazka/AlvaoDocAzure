﻿<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1 translate="no">Software Asset Management</h1>

    <p>The topic of licensing purity is covered in the section of ALVAO Asset Management product documentation called <a href="../alvao-asset-management/software-management">Software Management</a>.</p>
    <h2>Example of an internal directive</h2>
    An internal directive related to this issue should include the following information:<h3>Software and licences</h3>
    <ol>
        <li>The IT user must not use software in a manner that is not in accordance with the licensing terms for that type of software (e.g. installing illegal software, copying, redistributing or modifying the software).</li>
        <li>Each computer has a software administrator who is responsible for the legality of the software on the computer. If the user of the computer (i.e. the user who is entrusted with the use of the computer) has software installation rights enabled, the software administrator on the computer is the user of the computer. Otherwise, the software administrator is the designated internal IT staff member.</li>
        <li>Software licenses are registered in the internal ALVAO Asset Management system. The registration of licenses is handled by internal IT.</li>
        <li>Software installed on company computers is automatically inventoried at least once a year.</li>
        <li>If during the inventory the IT department detects a serious violation of the license conditions of a software, it immediately calls on the software administrator of the computer in question to take corrective action. After the problem has been corrected, the computer administrator can check the result of the last inventory at https://server/asset.</li>
        <li>A software inventory on a given computer is automatically performed every 24 hours after a problem is detected. After 1 month, an automatic health check is performed. If the problem with the product is still not corrected, a prompt is sent to the computer's software administrator again. This second prompt is also copied to the software administrator's direct supervisor. It is also logged in the internal Service Desk as a task to be resolved.</li>
    </ol>


</asp:Content>

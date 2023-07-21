<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Installation</h1>

    <h2>Technical requirements</h2>
    <ul>
        <li>ALVAO Asset Management</li>
        <li>Microsoft SQL Server Reporting Services</li>
    </ul>

    <h2>Activation</h2>
    <p>The module must be activated with an activation key, which you can obtain from your Alvao system supplier.</p>
    <ol>
        <li>In the application <strong>.
 ALVAO WebApp - Administration - Licenses</strong> select the <strong>Insert Activation Key</strong>.</li>
        <li>Enter the activation key.</li>
    </ol>
    <h2>Installation</h2>
    <p>The SAM Manager report is distributed in a separate installation package that you can obtain from your Alvao system vendor. Install the report into MS SQL Server Reporting Services.</p>
    <p>Other module functionality is included with the ALVAO Asset Management product installation.</p>
    <h2>Basic Settings</h2>
    <ol>
        <li>In the <strong>ALVAO WebApp - Administration</strong>, navigate to the <strong>Settings</strong> page.</li>
        <li>On the page <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">Messaging</a>, set up a <strong>SMTP server</strong> and <strong>message sender</strong>.</li>
        <li>On the page <a href="../../list-of-windows/alvao-webapp/administration/settings/webapp">WebApp</a> in the field <strong>WebApp (URL)</strong>
  enter the URL of the ALVAO WebApp. </li>
    </ol>

</asp:Content>

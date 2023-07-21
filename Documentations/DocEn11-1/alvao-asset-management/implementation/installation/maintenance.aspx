<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Optimizing database performance</h1>

    <h2>Automatic maintenance</h2>

    <p>To maintain fast response times for Alvao applications, the database performance optimization is automatically performed every Sunday between 3:00 am and 3:55 am.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note: Automatic maintenance will only start if more than 5 days have passed since the last optimization.</div>

    </div>
    <h2>Manual maintenance</h2>

    <p>
        If you need to perform performance optimization immediately, use the <strong>WebApp</strong> command - <strong>Management</strong> -
  <a href="../../../list-of-windows/alvao-webapp/administration/database-maintenance"><strong>Database Maintenance</strong></a> - <strong>Optimize Performance</strong>.
    </p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you upgrade SQL Server to a higher version or move the database to another SQL Server with a higher version, also increase the <a href="https://docs.microsoft.com/en-us/sql/relational-databases/databases/view-or-change-the-compatibility-level-of-a-database">compatibility level</a> of the database to the highest available. This will improve the performance of the database. 
    </div>
</asp:Content>


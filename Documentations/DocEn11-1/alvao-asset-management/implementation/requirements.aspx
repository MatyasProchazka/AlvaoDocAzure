<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Technical requirements</h1>

    <p>
        Unless otherwise noted, these are versions of products with valid extended support within the <a href="https://docs.microsoft.com/en-us/lifecycle/products/">Microsoft product lifecycle</a>
        at the time this version of Alvao was released, i.e. 4/2022.
    </p>
    <h2>Servers (valid for on-premises)</h2>
    <ul>
        <li>Microsoft Windows Server</li>
        <li>Microsoft SQL Server (all editions including Express Edition) or Azure SQL Database</li>
        <li>Microsoft .NET Framework 4.8</li>
        <li>Microsoft .NET 6</li>
        <li>Microsoft Internet Information Services Server (IIS) with IIS 6 Management Compatibility installed</li>
        <li>SMTP server (optional)</li>
    </ul>

    <h2>Technician Computers</h2>
    <ul>
        <li>Microsoft Windows</li>
        <li>Microsoft .NET Framework 4.8</li>
        <li>Web browser - Microsoft Edge recommended</li>
        <li>Microsoft Office (optional)</li>
    </ul>

    <h2>Other computers on the network</h2>
    <p>
        Any computers and other devices can be registered in the system, regardless of their operating system.<br />
        For automatic hardware and software detection, computers must meet the following requirements:
    </p>
    <ul>
        <li>Microsoft Windows</li>
        <li>Microsoft .NET Framework 4.0 or higher - for Agent installation</li>
    </ul>
    <p>
        Some older versions of the Windows operating system can also be detected automatically:
    </p>
    <ul>
        <li>Microsoft Windows 8.1/8, Windows 7, Vista, - can be detected with or without Agent</li>
        <li>Microsoft Windows XP - can be detected by Agent 10.0 or without Agent</li>
        <li>Microsoft Windows 2000/95/98/Me/NT4 SP6 - can only be detected with Agent 5.0</li>
    </ul>

</asp:Content>

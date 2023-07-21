<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Technické požadavky</h1>

    <p>
        Pokud není uvedeno jinak, jedná se o verze produktů s platnou rozšířenou podporou v rámci <a href="https://docs.microsoft.com/en-us/lifecycle/products/">životního cyklu produktů Microsoft</a>v době vydání této verze Alvao, tj. 4/2023.</p>
    <h2>Servery (platné pro lokální servery)</h2>
    <ul>
        <li>Microsoft Windows Server</li>
        <li>Microsoft SQL Server (všechny edice včetně Express Edition) nebo Azure SQL Database</li>
        <li>Microsoft .NET Framework 4.8</li>
        <li>Microsoft .NET 6</li>
        <li>Microsoft Internet Information Services Server (IIS) s nainstalovanou kompatibilitou správy IIS 6</li>
        <li>Server SMTP (volitelně)</li>
    </ul>

    <h2>Počítače technika</h2>
    <ul>
        <li>Microsoft Windows</li>
        <li>Microsoft .NET Framework 4.8</li>
        <li>Webový prohlížeč - doporučuje se Microsoft Edge</li>
        <li>Microsoft Office (volitelně)</li>
    </ul>

    <h2>Ostatní počítače v síti</h2>
    <p>
        Do systému lze zaregistrovat libovolné počítače a další zařízení bez ohledu na jejich operační systém.<br />
        Pro automatickou detekci hardware a softwaru musí počítače splňovat následující požadavky    </p>
    <ul>
        <li>Microsoft Windows</li>
        <li>Microsoft .NET Framework 4.0 nebo vyšší - pro instalaci agenta</li>
    </ul>
    <p>
        Automaticky lze detekovat i některé starší verze operačního systému Windows    </p>
    <ul>
        <li>Microsoft Windows 8.1/8, Windows 7, Vista, - lze detekovat s agentem nebo bez něj</li>
        <li>Microsoft Windows XP - lze detekovat pomocí Agenta 10.0 nebo bez Agenta</li>
        <li>Microsoft Windows 2000/95/98/Me/NT4 SP6 - lze detekovat pouze pomocí Agenta 5.0</li>
    </ul>

</asp:Content>

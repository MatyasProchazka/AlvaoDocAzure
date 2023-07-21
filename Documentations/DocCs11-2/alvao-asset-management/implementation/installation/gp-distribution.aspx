<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Distribuce balíčku msi prostřednictvím zásad skupiny</h1>

    <h2>Souhrn</h2>

    <p>Tento návod slouží k vytvoření pravidla v zásadách skupiny, které nainstaluje vybraný balíček .msi do počítače/skupiny počítačů.</p>

    <h2>Určeno pro produkty</h2>

    <ul>
        <li>ALVAO Asset Management</li>
        <li>ALVAO Service Desk</li>
    </ul>

    <h2>Spouštěcí podmínky</h2>

    <p>
        - V síti musí být použita služba Active Directory<br />
        - Windows Server 2000 a novější<br />
        - Na klientských stanicích musí být nainstalován systém Windows 2000 a novější<br />
        - uložte instalační balíčky do \&lt;název serveru&gt;\netlogon. Zde vytvořte složku pro tyto balíčky msi   </p>

    <h2>Progress</h2>
    <p>Vytvořte pravidlo pro instalaci služby ALVAO Asset Management Agent.</p>
    <ol>
        <li>Připojte se k serveru.</li>
        <li>Spusťte nástroj Správa zásad skupiny.</li>
        <li>Vytvořte nový objekt (objekt zásad skupiny) a pojmenujte jej "ALVAO Asset Management Agent".</li>
        <li>Klikněte pravým tlačítkem myši na vytvořený objekt a vyberte možnost Upravit.</li>
        <li>Vyberte možnost Konfigurace počítače - Zásady - Nastavení software - Instalace software.</li>
        <li>Klikněte pravým tlačítkem myši a vyberte Nový - Balíček balíčků).</li>
        <li>Vyberte balíček AlvaoAssetAgent.msi a potvrďte výběr.</li>
        <li>Vyberte možnost Přiřazeno a potvrďte.  </li>
        <li>Balíček je nyní vytvořen.  </li>
        <li>Chcete-li přidat více balíčků msi do jednoho objektu GPO, opakujte kroky 6 až 9.</li>
        <li>Zavřete Editor správy zásad skupiny.</li>
        <li>Vyberte počítače/skupinu, na které se bude tento objekt GPO vztahovat.  </li>
        <li>Dokončeno.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Agent AM se poté automaticky aktualizuje podle nainstalované verze serveru ALVAO    </div>


</asp:Content>

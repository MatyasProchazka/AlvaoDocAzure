<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Používání software</h1>
    <p>
        Agent AM při detekci softwaru shromažďuje také informace o jeho používání v daném počítači. Tyto informace jsou užitečné pro optimalizaci nákupů a obnovení softwarových licencí. 
    </p>

    <h2>Konfigurace</h2>

    <p>
        Agent AM používá ke sledování používání softwaru nástroj <a href="https://www.nirsoft.net/utils/win_prefetch_view.html">WinPrefetchView</a>. Není však součástí instalačního programu agenta, ale musí být distribuován ručně    </p>

    <ol>
        <li>Nainstalujte agenta na stanice.</li>
        <li>Stáhněte si nástroj <a href="https://www.nirsoft.net/utils/win_prefetch_view.html">WinPrefetchView</a> a rozbalte jej do instalační složky agenta.</li>
        <li>Ujistěte se, že je na stanici povolena funkce <i>Prefetcher</i> (viz níže).</li>
    </ol>

    <h3>Zapnutí funkce Prefetcher</h3>
    <p>
        Agent AM čerpá informace o využití softwaru z funkce operačního systému <em>Prefetcher</em>. V <em>systému Windows 10/11</em> je tato funkce ve výchozím nastavení zapnutá. V <em>systému Windows Server</em> je však ve výchozím nastavení zakázána. Můžete ji zapnout například pomocí následujícího skriptu prostředí PowerShell <pre class="console" translate="no">reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 3 /f reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Prefetcher" /v MaxPrefetchFiles /t REG_DWORD /d 8192 /f Enable-MMAgent -OperationAPI net start sysmain</pre></p>

    <h2>Hlášení dat</h2>
    <p>
        Data o používání softwaru jsou uložena v databázi a lze je analyzovat pomocí zobrazení <a href="../implementation/customization/database#V_Query.ExecutedSoftwareEnu">Query.ExecutedSoftwareEnu</a>. K zobrazení dat můžete použít <a href="../../list-of-windows/alvao-webapp/administration/data-queries">dotazy Data</a>   </p>
    <p>
        Pomocí dotazu SQL můžete například zjistit využití aplikace MS Word na všech počítačích:<br />
       <pre class="console" translate="no">
SELECT [Computer], [User], [Last run], [Run count]
FROM Query.ExecutedSoftwareEnu
WHERE [Filename]='winword.exe'
ORDER BY [Last run]
</pre>
        Počítač, na kterém se MS Word nepoužívá nejdéle, a je tedy adeptem na uvolnění licence, bude uveden jako první    </p>
    <p>
        Chcete-li získat seznam všech zaznamenaných spustitelných souborů, zadejte dotaz     <br />
       <pre class="console" translate="no">
SELECT [Filename]
FROM Query.ExecutedSoftwareEnu
GROUP BY [Filename]
ORDER BY [Filename]</pre>
    </p>

    </asp:Content>

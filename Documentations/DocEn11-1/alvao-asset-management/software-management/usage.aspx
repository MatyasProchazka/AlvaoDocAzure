<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Software usage</h1>
    <p>
        AM Agent also collects information about the software usage on a given computer when detecting software. This information is useful for optimizing software license purchases and renewals. 
    </p>

    <h2>Configuration</h2>

    <p>
        The AM Agent uses the <a href="https://www.nirsoft.net/utils/win_prefetch_view.html">WinPrefetchView</a> utility to monitor the usage of the software. However, it is not part of the agent installer, but has to be distributed manually.
    </p>

    <ol>
        <li>Install the agent on the stations.</li>
        <li>Download the <a href="https://www.nirsoft.net/utils/win_prefetch_view.html">WinPrefetchView</a> utility and unzip it to the agent installation folder.</li>
        <li>Make sure the <i>Prefetcher</i> function is enabled on the station (see below).</li>
    </ol>

    <h3>Switching on the Prefetcher feature</h3>
    <p>
        AM Agent draws software usage information from the <em>Prefetcher</em> operating system feature.
	In <em>Windows 10/11</em>, this feature is enabled by default. In <em>Windows Server</em>, however, it is disabled by default. For example, you can turn it on with the following PowerShell script:
        <pre class="console" translate="no">reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 3 /f reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Prefetcher" /v MaxPrefetchFiles /t REG_DWORD /d 8192 /f Enable-MMAgent -OperationAPI net start sysmain</pre>
    </p>

    <h2>Reporting the data</h2>
    <p>
        Software usage data is stored in a database and can be analyzed using the <a href="../implementation/customization/database#V_Query.ExecutedSoftwareEnu">Query.ExecutedSoftwareEnu</a> view.
        You can use the <a href="../../list-of-windows/alvao-webapp/administration/data-queries">Data queries</a> to display the data.
    </p>
    <p>
        For example, you can find out the usage of MS Word on all computers by SQL query:<br />
        <pre class="console" translate="no">
SELECT [Computer], [User], [Last run], [Run count]
FROM Query.ExecutedSoftwareEnu
WHERE [Filename]='winword.exe'
ORDER BY [Last run]
</pre>
        The computer on which MS Word has been unused for the longest time and is therefore adept for license release will be listed first.
    </p>
    <p>
        To get a list of all recorded executables, query:
        <br />
        <pre class="console" translate="no">
SELECT [Filename]
FROM Query.ExecutedSoftwareEnu
GROUP BY [Filename]
ORDER BY [Filename]</pre>
    </p>

    </asp:Content>

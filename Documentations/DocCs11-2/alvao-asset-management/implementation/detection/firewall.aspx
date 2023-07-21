<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nastavení brány firewall</h1>

    <h3>Nastavení brány Windows Firewall pomocí příkazového řádku</h3>
    <p>
        Při instalaci systému Windows XP SP2 a vyšší je aktivována brána Windows Firewall, která ve výchozím nastavení nepovoluje vzdálený přístup. K nastavení brány firewall systému Windows se používá příkaz Netsh. Příkaz Netsh je skriptovací nástroj příkazového řádku, který komunikuje s ostatními součástmi operačního systému prostřednictvím souborů DLL (dynamic-link library). Jak upravit konfiguraci služeb brány firewall pomocí příkazu Netsh je vysvětleno níže<ul>
        <li><strong>Bez agenta</strong> - Povolení vzdálené správy. Pro komunikaci mezi Kolektorem a detekovaným počítačem musí být povolena vzdálená správa, která je ve výchozím nastavení brány firewall systému Windows zakázána. 
            <p>Postup pro povolení vzdálené správy pomocí příkazového řádku (Cmd.exe) na místní stanici</p>
           <pre class="console" translate="no">netsh firewall set service RemoteAdmin enable subnet</pre>
            <p>Chcete-li vzdáleně povolit vzdálenou správu, můžete použít freewarový nástroj PsExec a příkazový řádek Cmd.exe. Základní syntaxe příkazu PsExec:</p>
            <p>psexec [\\computer[,computer[,...]] [-u user] [-p pswd]] cmd</p>
            <p>Parametry:</p>
            <ul>
                <li><strong>\\computer</strong> - počítač, na kterém se cmd spustí. Pokud použijete \\*, cmd se spustí na všech počítačích v aktuální doméně.</li>
                <li>-<strong>u</strong> - účet, pod kterým bude příkaz spuštěn.</li>
                <li>-<strong>p</strong> - heslo pro výše uvedený účet.</li>
                <li><strong>cmd</strong> - program, který se má spustit.</li>
            </ul>

            <p><strong>Příklad 2. PsExec - příklad povolení vzdálené správy</strong></p>
            <p>Chceme povolit vzdálenou správu na počítači se síťovým názvem PCOFFICE. Vzdálená správa bude povolena z celé místní sítě.</p>
            <pre class="console" translate="no">psexec\\pcoffice -u <em><span class="console">administrator_account_name</span></em>-p <em><span class="console">administrator_account_name</span></em>
netsh firewall set service remoteadmin enable subnet </pre>


            <p><strong>Příklad 3. PsExec - příklad povolení vzdálené správy</strong></p>
            <p>Chceme povolit vzdálenou správu na všech počítačích v aktuální doméně. Vzdálená správa bude povolena z celé místní sítě.</p>
            <pre class="console" translate="no">psexec\* -u <em><span class="console">domain_administrator_account_name</span></em>
-p <em><tt>domain_administrator_account_name</tt></em>
netsh firewall set service remoteadmin enable subnet </pre>


            <p><strong>Příklad 4. PsExec - příklad povolení vzdálené správy</strong></p>
            <p>Chceme povolit vzdálenou správu na všech počítačích v aktuální doméně. Použije se účet, ze kterého byl spuštěn PsExec. Vzdálená správa bude povolena pouze z počítače 192.168.10.21.</p>
           <pre class="console" translate="no">psexec \\* netsh firewall set service remoteadmin enable custom 192.168.10.21</pre>

        </li>
        <li><strong>Agent přes TCP/IP - povolit port</strong> - agentovi je třeba povolit přístup přes port brány firewall systému Windows, aby mohl komunikovat s Collector. Výchozím portem pro agenta je port 760   <p><strong>Příklad 5. Příklad otevření portu</strong></p>
            <p>Chceme povolit port 760 prostřednictvím příkazového řádku (Cmd) na místní stanici. Vzdálená správa bude povolena z celé místní sítě.</p>
           <pre class="console" translate="no">netsh firewall set porttopening TCP 760 ALC_EP enable subnet</pre>


            <p><strong>Příklad 6. PsExec - příklad otevření portu</strong></p>
            <p>Pomocí nástroje PsExec chceme vzdáleně povolit port 760 na všech počítačích v aktuální doméně. Vzdálená správa bude povolena z celé místní sítě.</p>
            <pre class="console" translate="no">psexec \* -u <em><tt>administrator_account_name</tt></em>-p <em><tt>administrator_account_name</tt></em>
netsh firewall set portopening TCP 760 ALC_EP enable subnet</pre>

        </li>
    </ul>

        <h3>Nastavení brány firewall systému Winows pomocí zásad skupiny ve službě Active Directory</h3>
        <p>Při instalaci systému Windows XP SP2 a vyšší je brána firewall systému Windows aktivována a ve výchozím nastavení nepovoluje vzdálený přístup. K nastavení brány firewall systému Windows se používají zásady skupiny.</p>
        <p>Nastavení brány Windows Firewall pomocí zásad skupiny v adresáři Active Directory lze provést pouze v sítích s doménovým serverem Windows Server 2008 R2 nebo vyšším.</p>
        <ul>
            <li><strong>Bez agenta - Povolit vzdálenou správu</strong> - postup pro povolení vzdálené správy pomocí zásad skupiny v adresáři Active Directory.<ol>
     <li>Otevřete <strong>Start - Spustit - mmc</strong></li>
     <li>Ve stromu vyberte položku <em>Místní počítač - -Zásady - - Konfigurace počítače - - Šablony pro správu - - Síť - - Síťová připojení - - Brána Windows Firewall - - Profil domény</em></li>
     <li>V seznamu vyberte možnost <em>Brána firewall systému Windows - -Povolit výjimky pro vzdálenou správu</em><strong></strong>Přepněte do stavu <strong>Povoleno</strong>. Pokud potřebujete větší zabezpečení, zadejte do pole <strong>Junk Message Sources Allowed</strong>. IP adresu nebo podsíť, ze které bude povoleno přijímat zprávy.</li>
 </ol>
            </li>
            <li><strong>Agent přes TCP/IP - Povolení portu</strong> - Postup pro povolení portu 760 pomocí zásad skupiny v Active Directory. Vzdálená správa bude povolena z celé místní sítě.<ol>
                <li>Otevřít <strong>Start - Spustit - mmc</strong></li>
                <li>Ve stromu vyberte <strong>Místní počítač - -Zásady- - Konfigurace počítače- - Šablony pro správu- - Síť- - Síťová připojení- - Brána firewall systému Windows- - Profil domény</strong></li>
                <li>V seznamu vyberte možnost <em>Windows Firewall- -Set Port Exceptions</em> a přepněte ji do stavu <strong>Enabled</strong>. Tím se aktivuje tlačítko <strong>Zobrazit</strong>, na které klikněte. V následujícím okně klikněte na tlačítko <strong>Přidat</strong> a zadejte následující hodnotu: &quot;760:TCP:Localsubnet:enabled:ALC_EP&quot;. </em></li>
            </ol>
            </li>
        </ul>
        <div class="caution">
           <div class="icon"></div>
            <div class="title">Upozornění: V případě, že se jedná o síťovou síť, která je součástí sítě, je třeba zadat následující údaje: "Upozornění:</div>
            Pokud jste provedli nastavení prostřednictvím zásad skupiny v Active Directory, nemůžete již tato nastavení měnit prostřednictvím příkazového řádku, ale opět pouze v zásadách skupiny!        </div>
</asp:Content>

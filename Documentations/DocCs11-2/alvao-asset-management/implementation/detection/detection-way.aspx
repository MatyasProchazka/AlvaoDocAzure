<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Výběr metody detekce</h1>

    <p>Collector je schopen zpracovávat požadavky několika způsoby. Výběr metody detekce závisí především na možnostech operačního systému detekovaného počítače. V následující tabulce jsou uvedeny možné metody detekce.</p>

    <table>
        <thead>
            <tr>
                <th>Metoda detekce</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>automaticky (výchozí)</td>
                <td>Tato možnost je kombinací možností Autonomní agent, MS SCCM, Agent přes TCP/IP (zastaralé) a Žádný agent. 
                    Autonomní agent je upřednostňovanou metodou zjišťování. Ostatní metody detekce se vyzkouší pouze tehdy, pokud Autonomní agent nekontaktoval webovou službu AM po dobu 7 dnů. 
                    Pokud je k dispozici modul Microsoft Intune Connector, počítač nejprve vyzkouší metodu detekce MS SCCM. 
                    Pokud se to nepodaří, vyzkouší spojení pomocí dotazu na vzdálený počítač. 
                    Pokud je PC aktivní, Collector se pokusí detekovat PC pomocí Agenta přes TCP/IP (zastaralé). 
                    Pokud na vzdáleném počítači není žádný Agent, Collector se pokusí provést zjišťování bez Agenta.</td>
            </tr>
            <tr>
                <td>Autonomní agent</td>

                <td>Agent se pravidelně dotazuje webové služby AM, zda má provést zjišťování a zda má detekovat HW nebo SW. Ve výchozím nastavení se Agent dotazuje každé 2 hodiny. Pokud webová služba požaduje detekci, agent vytvoří detekci (soubor CXM) a odešle ji webové službě. Pokud se detekci nepodaří odeslat, zkusí to agent znovu (ve výchozím nastavení každých 15 minut).<br />
                    <br />
                    Pokud používáte Agenta, doporučujeme používat tuto metodu detekce.<br />
                    <br />
                    Výhody/nevýhody:<br />

                    + Detekované stanice mohou být kdekoli mimo podnikovou síť, komunikace probíhá přes internet.<br />
                    + Nízký provoz v síti - odesílaná data jsou komprimována.<br />
                    + Není třeba povolovat port ve firewallu stanice - komunikace probíhá prostřednictvím standardního protokolu HTTP/HTTPS.<br />
                    + Eliminace rizika detekce špatného počítače v důsledku neaktuálních záznamů DNS.<br />
                    + Detekce probíhají paralelně.<br />
                    - Nelze provádět okamžitou detekci (agent kontaktuje webovou službu v určitých intervalech)<br />
                    - Nutnost instalace Agentů a distribuce nastavení adresy WebService.</td>
            </tr>
            <tr>
                <td>bez Agenta (zastaralé)</td>
                <td>Tato možnost pochází ze starších verzí systému a je nahrazena možností <em>automaticky</em>.<br />
                    <br />
                    Tento způsob detekce lze použít pouze na počítačích se systémem Windows 2000 a vyšším. Na detekovaných počítačích není třeba instalovat Agenta. Detekce se provádí pomocí DCOM, WMI a vzdáleného přístupu do registru.<br />
                    <br />
                    Pro následující služby v počítačích jsou vyžadována práva správce: WMI, vzdálený registr, administrátorský přístup k pevným diskům (název počítače).<br />
                    Ve standardním prostředí síťové domény Windows stačí pro splnění této podmínky povolit v počítačích hromadně službu "RemoteAdmin" pomocí zásad skupiny v bráně firewall. <br />
                    <br />
                    Výhody/nevýhody:<br />
                    + Na zjištěné stanice není třeba instalovat agenty.<br />
                    + Skvělá síťová komunikace - data nejsou při detekci komprimována.<br />
                    - Riziko detekce jiného počítače kvůli špatným záznamům DNS.<br />
                    - Někdy je problematické nastavit detekovaný počítač tak, aby detekce bez agentů fungovala.<br />
                    - Detekce probíhají postupně.</td>
            </tr>
            <tr>
                <td>Agent přes TCP/IP (zastaralé)</td>
                <td>Tato možnost pochází ze starších verzí systému a je nahrazena <em>automatickou</em> možností.<br />
                    <br />
                    Collector nejprve vyzkouší spojení pomocí pingu na vzdálený počítač. Na detekovaných počítačích musí být nainstalován agent. Komunikace mezi Kolektorem a agentem probíhá prostřednictvím protokolu TCP/IP (zastaralé).<br />
                    <br />
                    Výhody/nevýhody:<br />
                    + Nízký síťový provoz - detekční data jsou odesílána komprimovaná.<br />
                    + Lze provádět okamžitou detekci.<br />
                    - Riziko detekce jiného počítače kvůli špatným záznamům DNS   <br />
                    - Ve firewallu stanice je třeba povolit konkrétní port.<br />
                    - Detekce probíhají postupně.</td>
            </tr>
            <tr>
                <td>MS SCCM</td>
                <td>Tato možnost je k dispozici pouze po povolení modulu <a href="../../../modules/alvao-microsoft-intune-connector">ALVAO Microsoft Intune Connector</a>.<br />
                    <br />
                    Collector načítá údaje o hardwaru a softwaru v počítači pomocí nastavených <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/ms-sccm-connections">připojení k</a> SCCM. 
                    Počítač postupně prohledává všechna připojení, dokud je nenajde. Tím odpadá nutnost instalovat agenty do cílových počítačů, ani není třeba nastavovat uživatelská oprávnění pro přístup k rozhraní WMI, vzdálenému registru a pevným diskům.<br />
                    <br />
                    Výhody/nevýhody:<br />
                    + Data HW/SW jsou rychle získávána z SSCM<br />
                    - Alvao nemůže kontrolovat, jak stará jsou data v SCCM.<br />
                    - Zjištění jsou sekvenční.</td>
            </tr>
            <tr>
                <td>ručně</td>
                <td>Collector nezpracovává požadavky s touto metodou detekce. Detekci je nutné provést ručně na detekovaném počítači spuštěním <em>AMAgent.exe</em>. Program vygeneruje soubory s příponou <em>.cxm</em>, které pak můžete načíst do Konzoly AM pomocí <strong>Nástroje - Detekce - Načíst ze souboru</strong>.<br />
                Tuto možnost detekce použijte i u počítačů, které nelze detekovat (Linux, Apple atd.).</td>
            </tr>

        </tbody>
    </table>

    <p>
        Ve výchozím nastavení je pro všechny počítače (v <a href="../detection#detection-options">globálním nastavení detekce</a>) nastavena metoda detekce na <em>automatickou</em>, což vyhovuje detekci operačních systémů Windows 95, 98, Me a NT s použitím Agenta přes TCP/IP (zastaralé) a Windows 2000 a vyšších bez Agenta (zastaralé) nebo s Autonomním agentem nebo Agentem přes TCP/IP (zastaralé). U počítačů, které nejsou připojeny k síti, a u nedetekovatelných počítačů nastavte metodu detekce <em>ručně</em>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud se při detekci v režimu &quot;Agent over TCP/IP (deprecated)&quot; nepodaří navázat spojení prostřednictvím názvu počítače, zkuste navázat spojení prostřednictvím IP adresy    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Ve výchozím nastavení používá Collector k testování, zda je detekovaný počítač zapnutý, příkaz ping. Pro režim detekce &quot;Agent přes TCP/IP (zastaralý)&quot; lze ping zakázat nastavením položky registru AgentTcpipPing v cestě HKEY_LOCAL_MACHINE\Software\ALC\ALVAO Asset Management\Collector na hodnotu 0 (dword) nebo v nastavení nástroje Collector    </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud jsou v režimu &quot;bez agenta&quot; detekovány počítače, které jsou rozděleny vnitřní bránou firewall v síti a přesto jsou ve stejné doméně, je třeba na bráně firewall povolit následující porty:<br />
        <ul>
            <li><strong>WMI</strong> - port 135 + &lt;a náhodný port z dynamického rozsahu TCP&gt;, to se liší podle operačního systému:<br />
                - 1024-5000 (Windows 2000, Windows XP a Windows Server 2003)<br />
                - 49152-65535 (Windows Vista a vyšší, Windows Server 2008 a vyšší)</li>
            <li>
               <strong>Vzdálený registr</strong> - port 445 </li>
            <li>
               <strong>Správní sdílení disků</strong> - porty 135-139 a 445.</li>
        </ul>
        Viz další články:<br />
       <a href="https://support.microsoft.com/en-in/help/832017/service-overview-and-network-port-requirements-for-windows">Přehled síťových služeb systému Windows a Porty</a><br />
       <a href="https://docs.microsoft.com/en-in/windows/win32/wmisdk/setting-up-a-fixed-port-for-wmi">Nastavení pevného portu pro WMI</a>  </div>

    <h3>Způsob detekce podle operačního systému počítače</h3>

    <p>Počítače připojené k počítačové síti doporučujeme v závislosti na operačním systému detekovat následujícím způsobem.</p>
    <ul>
        <li><strong>Windows 2000 a vyšší - metoda detekce: automatická</strong> - Kolektor může detekovat data pomocí standardních součástí operačního systému. Na stanice není třeba instalovat agenta      <br />

            Pokud se rozhodnete nainstalovat Agenta, musí být nainstalován systém Windows 7 nebo vyšší.</li>

        <li><strong>Ostatní operační systémy - metoda detekce: ručně</strong> - počítače s jinými operačními systémy, jako je Linux nebo počítače Apple, nelze detekovat automaticky.  U nich vyberte metodu detekce <em>ručně</em>. Potřebné údaje je třeba do systému zadat ručně, viz <a href="../insert-computers#insert-computer-manually">Vložení počítačů, které nelze detekovat</a>.</li>
    </ul>

</asp:Content>

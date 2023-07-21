<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Instalace</h1>

    <h2>Technické požadavky</h2>
    <ul>
        <li translate="no"><a href="../../alvao-asset-management">ALVAO Asset Management</a></li>
        <li translate="no"><a href="https://www.microsoft.com/en-us/security/business/microsoft-Intune">Microsoft Intune</a> or</li>
        <li><a href="https://learn.microsoft.com/en-us/system-center/" translate="no">Configuration Manager</a> - pro připojení prostřednictvím služby Administration Service je vyžadována verze alespoň 1810.</li>
    </ul>

    <p>
        Pokud není uvedeno jinak, jedná se o verze produktů s platnou rozšířenou podporou v rámci <a href="https://docs.microsoft.com/en-us/lifecycle/products/">životního cyklu produktů Microsoft</a>v době vydání verze Alvao    </p>
    <h2 translate="no">Intune</h2>
    <ol>
        <li>V <a href="https://portal.azure.com/#home">portálu Microsoft Azure</a> přidejte následující oprávnění <em translate="no">Microsft Graph</em> ke <a href="../../alvao-asset-management/implementation/users/authentication/aad">stávající aplikaci ALVAO</a> ve vašem AAD tenantu (nebo můžete v případě potřeby vytvořit novou aplikaci):<ul>
            <li translate="no">Application.ReadAll</li>
            <li translate="no">Device.ReadAll</li>
            <li translate="no">DeviceManagementApps.Read.All</li>
            <li translate="no">DeviceManagementConfiguration.Read.All</li>
            <li translate="no">DeviceManagementManagedDevices.Read.All</li>
            <li translate="no">User.Read</li>
            </ul>
        </li>
        <li>Nainstalujte balíček <strong translate="no">IntuneConnectorService.msi</strong> (dříve EndpointManagerConnectorService.msi) na server Alvao.</li>
        <li>V souboru služby <strong translate="no">appsetings.json</strong>:<ul>
            <li>Nastavte připojení k databázi Alvao.</li>
            <li>Do nastavení <strong translate="no">AAD_ClientSecret</strong> zkopírujte hodnotu nastavení z konfiguračního souboru aplikace ALVAO WebApp.</li>
            </ul>
        </li>
        <li>Nastavte službu tak, aby byla spuštěna na stejném účtu jako <a href="../../alvao-asset-management/implementation/installation/installation-server-manual">služba ALVAO</a>. Případně použijte jiný účet s právy db_dataread a db.datawrite k databázi Alvao.</li>
    </ol>
    <h2>Správce konfigurace</h2>
    <ol>
        <li>Nainstalujte a nastavte službu <a href="../../alvao-asset-management/implementation/installation/installation-server-manual">ALVAO Collector</a>.</li>
        <li><a href="Installation/sccm-settings">Nastavte Správce konfigurace</a>.</li>
        <li>V nabídce <strong>Administrace - Asset Management - Nastavení</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/ms-sccm-connections">MS SCCM Connector</a> přidejte jedno nebo více připojení ke Správci konfigurace. Konektor používá buď <a href="https://docs.microsoft.com/en-us/mem/configmgr/develop/adminservice/overview">službu Administration Service</a>, nebo přímé připojení k SQL databázi Configuration Manageru.</li>
    </ol>

    <h3>Služba správy</h3>
    <p>
        Služba Administration Service je součástí SCCM, která implementuje webové rozhraní REST API, které poskytuje data o počítačích autorizovaným uživatelům prostřednictvím protokolu HTTPS. 
    </p>
    <p>
        Může být spuštěna buď pouze v rámci podnikové sítě, nebo také přes internet. V obou případech se Collector ověřuje pomocí uživatelského jména a hesla, které musí existovat v systému SCCM a mít oprávnění ke čtení dat z inventáře HW a SW  </p>
    <ul>
        <li>V rámci podnikové sítě probíhá ověřování kerberosem mezi Collectorem a službou správy.</li>
        <li>Při připojení přes internet se Collector připojuje k SCCM prostřednictvím služby <em>Cloud Management Gateway</em>. Zadaný uživatel proto musí existovat také v Azure Active Directory, kde musí být registrována také aplikace, kterou Collector používá k získání přístupového tokenu pro připojení ke službě Administration Service. 
                <div class="caution">
                   <div class="icon"></div>
                    <div class="title">Upozornění:</div>
                    Pro připojení nástroje Collector ke službě Administration Service je nutné použít účet, který je synchronizován z vaší služby AD do služby AAD pomocí synchronizace <em>hash hesel</em>. Účty synchronizované pomocí <em>průchozího ověřování</em> nebo <em>ADFS</em> nejsou podporovány. 
                </div>
        </li>
    </ul>
    <p>Postup instalace a nastavení služby správy naleznete v části <a href="https://docs.microsoft.com/en-us/mem/configmgr/develop/adminservice/set-up">Jak nastavit službu správy v nástroji Configuration Manager</a>.</p>

    <h3>Připojení k databázi</h3>
    <p>
        Collector používá připojovací řetězec a čte data počítače přímo z databáze SCCM. Tato možnost není k dispozici pro <em>službu ALVAO SaaS</em>   </p>
    <p>
        Je třeba zajistit, aby účet, pod kterým je služba ALVAO Collector spuštěna, měl právo číst data z databáze SCCM. Stačí tedy například role db_datareader    </p>
</asp:Content>

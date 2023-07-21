<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Konfigurace serveru IIS a vytvoření fondu aplikací</h1>
    <h2>Konfigurace serveru IIS</h2>
    
    
      V kroku <strong>Add Roles and Features Wizard </strong> vyberte možnost <strong>Role Services</strong> a ponechte označené nebo zaškrtněte: 
         <ul> <li>Web Server
                <ul> <li>Common HTTP Features 
                    <ul>
                        <li>Default Document</li>
                        <li>Directory Browsing</li>
                        <li>HTTP Errors</li>
                        <li>Static Content</li>
                        <li>HTTP Redirection</li>
                    </ul>
                    </li>
                    <li>Health and Diagnostics
                        <ul>
                            <li>HTTP Logging</li>
                        </ul>
                    </li>
                    <li>Performance
                        <ul>
                            <li>Static Content Compression</li>
                        </ul>
                    </li>
                    <li>Security
                        <ul>
                            <li>Request Filtering</li>
                            <li>Basic Authentication</li>
                            <li>Windows Authentication</li>
                        </ul>
                    </li>
                    <li>Application Development
                        <ul>
                            <li>.NET Extensibility 4.6</li>
                            <li>ASP</li>
                            <li>ASP.NET 4.6</li>
                            <li>ISAPI Extensions</li>
                            <li>ISAPI Filters</li>
                        </ul>
                    </li>
                    <li>Management Tools
                        <ul>
                            <li>IIS Management Console</li>
                            <li>IIS 6 Management Compatibility<ul>
                                <li>IIS 6 Metabase Compatibility</li>
                                <li>IIS 6 Management Console</li>
                                <li>IIS 6 Scripting Tools</li>
                                <li>IIS 6 WMI Compatibility</li>
                                </ul>
                            </li>
                        </ul>
                        
                    </li>
             </ul> </li>

             
                 <li>Features
                        <ul>
                            <li>.NET Framework 4.6 Features (2 of 7 installed)<ul>
                                <li>.NET Framework 4.6 (Installed)</li>
                                <li>WCF Services (1 of 5 installed)<ul>
                                    <li>TCP Port Sharing (Installed)</li>
                                    </ul>
                                </li>
                                </ul>
                            </li>
                           
                        </ul>
                    </li>
             </ul>

            
             


             <h2>Vytvoření fondu aplikací</h2>
    <h3>Předpoklady</h3>
    <ul>
        <li>Server Microsoft Windows</li>
        <li>Server Microsoft Internet Information Services (IIS)</li>
        <li>Microsoft .NET Framework</li>
    </ul>
    <p>Požadované verze výše uvedených systémů naleznete v <a href="../requirements">technických požadavcích</a>.</p>

    <h3>Postup</h3>

    <ol>
        <li>Otevřete <b>správce Internetové informační služby </b>(Internet Information Services Manager (IIS)).</li>
        <li>Vyberte možnost <b>Application Pools (Fondy aplikací)</b> a klikněte pravým tlačítkem myši do pravého podokna a vyberte možnost <b>Add Application Pool (Přidat fond aplikací)....</b>.</li>
        <li>V otevřeném okně zadejte jako název fondu aplikací <b>ALVAO AppPool .NET 4.0</b> a vyberte verzi prostředí .NET Framework <nobr> <b>.NET CLR Version v4.0.30319</b>,</nobr>režim spravovaného kanálu vyberte <b>Integrated</b> a klikněte na tlačítko <b>OK</b>.</li>
        <li>Poté klikněte pravým tlačítkem myši na nově vytvořený fond aplikací a vyberte možnost <b>Advanced settings (Rozšířená nastavení).</b>..</li>
        <li>Nejprve změňte hodnotu ve vlastnosti <b>Reqular Time Interval (minutes</b> ). na <b>43200</b> (minut), tj. 30 dní.<br />
            Za druhé změňte hodnotu <b>vlastnosti Recular</b> <b>Time-out (minuty</b> ) v položce <b>Idle Time-out</b> (minuty) na <b>43199</b> (minuty).</li>
        <li>Dále je třeba změnit hodnotu <b>Identity</b> z <b>ApplicationPoolIdentity</b>.<br />
            Klikněte na hodnotu vlastnosti <b>Identity</b> a v otevřeném okně vyberte <b>NetworkService</b> a potvrďte výběr.</li>
        <li>Nyní je třeba změnit nastavení pro konkrétní webové aplikace. V seznamu vyberte požadovanou webovou aplikaci a zvolte možnost <nobr><b>Základní nastavení....</b></nobr>.</li>
        <li>V otevřeném okně klikněte na tlačítko <b>Vybrat.</b>.. a vyberte vytvořený fond aplikací.</li>
        <li>Potvrďte změny a zavřete okno.</li>
        <li>Změňte fond aplikací pro všechna webová řešení Alvao.</li>
        <li>Hotovo.</li>
    </ol>

    <h3>Další informace</h3>
    <ul>
        <li><a href="http://technet.microsoft.com/en-us/library/cc771170(WS.10)">Zadání identity pro fond aplikací (IIS 7)</a></li>
        <li><a href="https://docs.microsoft.com/en-us/iis/manage/configuring-security/application-pool-identities">Identity fondu aplikací</a></li>
    </ul>

</asp:Content>


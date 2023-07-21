<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Instalace</h1>
    <h1>Technické požadavky</h1>
    <ul>
        <li>ALVAO Service Desk</li>
        <li>Webová nebo desktopová aplikace Microsoft Outlook</li>
        <li>Pro doplněk AppSource:<ul>
            <li>Microsoft 365 nebo služba Exchange Online</li>
            <li>Webová nebo desktopová aplikace Microsoft Outlook</li>
            </ul>
        </li>
        <li>Pro doplněk pro stolní počítače:<ul>
            <li>Aplikace Microsoft Outlook pro stolní počítače</li>
            <li>Microsoft .NET Framework 4.8</li>
            <li>Microsoft Edge WebView2 Runtime</li>
            </ul>
        </li>
    </ul>

    <p>
        Pokud není uvedeno jinak, jedná se o verze produktů s platnou rozšířenou podporou v rámci <a href="https://docs.microsoft.com/en-us/lifecycle/products/">životního cyklu produktů Microsoft</a> v době vydání verze Alvao.    </p>
    <h2>
        Nasazení doplňku AppSource</h2>
    <h3>Nasazení pro jednoho uživatele</h3>
    <ol>
        <li>Na stránce <a href="https://appsource.microsoft.com/en-us/product/office/WA200002731">ALVAO Service Desk for Outlook</a> klikněte na tlačítko <strong>Get it now</strong> a postupujte podle pokynů. Doplněk se instaluje do uživatelského účtu Microsoft 365.</li>
        <li>Nastavení doplňku v aplikaci Outlook: 
            <ol>
                <li>V případě <strong>webové aplikace Outlook</strong> vyberte libovolný e-mail. V podokně e-mailu otevřete nabídku &quot;...&quot; a vyberte příkaz <strong>ALVAO</strong>.<br />
                    V případě <strong>desktopové aplikace Outlook</strong> otevřete nabídku &quot;...&quot; a vyberte příkaz <strong>Související požadavek</strong>.</li>
                <li>Přihlaste se a zadejte url adresu rozhraní ALVAO REST API.</li>
            </ol>
        </li>
    </ol>
    <h3>Nasazení v rámci organizace</h3>
    <ol>
        <li>V <a href="https://admin.microsoft.com">centru správy Microsoft 365</a> se přihlaste jako uživatel s rolí <em>Global administrator</em>.</li>
        <li>V nabídce <strong>Nastavení - Integrované aplikace</strong> klikněte na příkaz <strong>Získat aplikace</strong>, vyhledejte ALVAO a vyberte aplikaci <strong>ALVAO Service Desk for Outlook</strong>.</li>
        <li>Klikněte na tlačítko <strong>Get it now (Získat nyní)</strong> a postupujte podle pokynů.</li>
        <li>Všichni uživatelé musí nastavit doplněk v aplikaci Outlook stejným způsobem jako při nasazení pro jednoho uživatele.</li>
    </ol>
    <p>
        Další informace naleznete v části <a href="https://learn.microsoft.com/en-us/microsoft-365/admin/manage/manage-deployment-of-add-ins">Nasazení doplňků v centru správy Microsoft 365</a>.</p>
    <h2>Nasazení doplňku pro stolní počítače</h2>
    <h3>Nasazení na jednom počítači</h3>
    <ol>
        <li>V počítači spusťte instalační balíček <strong>AlvaoOutlookAddIn.msi</strong> a postupujte podle pokynů průvodce. </li>
        <li>Spusťte nebo restartujte aplikaci Outlook.</li>
        <li>V nabídce <strong>Outlook - Soubor</strong> - <a href="../../list-of-windows/alvao-outlook-addin/options">Nastavení doplňku ALVAO</a> zadejte <strong>název domény Alvao</strong> a zvolte metodu ověřování.</li>
    </ol>

    <h3>Nasazení napříč organizací</h3>
    <p>
        Doplněk lze hromadně nainstalovat na více počítačů pomocí služby Active Directory - Zásady skupiny nebo jiné metody, která umožňuje hromadnou distribuci instalačních balíčků MSI. Balíček musí být distribuován na uživatele, nikoli na počítač    </p>
    <p>Abyste nemuseli po instalaci balíčku ručně nastavovat cestu k rozhraní Alvao REST API na každém počítači, doporučujeme podle následujícího postupu nejprve vytvořit transformaci instalačního balíčku a při distribuci ji použít na původní instalační balíček.</p>
    <ol>
        <li>Nainstalujte sadu <strong>Orca</strong>, která je součástí např. sady Windows SDK (C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\bin\Orca.Msi), nebo ji můžete najít také samostatně na internetu.</li>
        <li>V programu <strong>Orca</strong> otevřete původní instalační balíček doplňku.</li>
        <li>V hlavní nabídce použijte příkaz <strong>Transformovat - Nová transformace</strong>.</li>
        <li>V tabulkovém zobrazení na levé straně vyberte položku <strong>Vlastnost</strong>.</li>
        <li>V přehledu vlastností použijte příkaz místní nabídky <strong>Přidat řádek</strong> nebo klávesovou zkratku <span class="key">Ctrl+R</span>.</li>
        <li>Do pole <strong>Název vlastnosti</strong> zadejte název vlastnosti, kterou chcete nastavit (např. APIURL), viz následující tabulka       <table>
                <thead>
                    <tr>
                        <th>Název vlastnosti: Název vlastnosti</th>
                        <th>Popis</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>APIURL</td>
                        <td>Cesta k rozhraní REST API. Např. &quot;https://contoso.onalvao.com/AlvaoRestApi&quot;.</td>
                    </tr>
                    <tr>
                        <td>UseAadAuth</td>
                        <td>Použít ověřování Azure Active Directory pro přístup k rozhraní REST API.<br />
                            Hodnoty: 1 = použít, 0 = nepoužít          <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Použití této vlastnosti se vzájemně vylučuje s použitím vlastnosti <em>UseIntegratedAuth</em>                </div>
                        </td>
                    </tr>
                    <tr>
                        <td>UseIntegratedAuth</td>
                        <td>Použít integrované ověřování systému Windows pro přístup k rozhraní REST API.<br />
                            Hodnoty: 1 = použít, 0 = nepoužít          <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Použití této vlastnosti se vzájemně vylučuje s použitím vlastnosti <em>UseAadAuth</em>         </div>
                        </td>
                    </tr>
                    <tr>
                        <td>AutoHideTaskPane</td>
                        <td>Automaticky zobrazuje a skrývá panel úloh.<br />
                            Hodnoty: 1 = zapnuto, 0 = vypnuto       </td>
                    </tr>
                </tbody>
            </table>

        </li>
        <li>Zadejte hodnotu pro vlastnost Value.</li>
        <li>V hlavní nabídce použijte příkaz <strong>Transformovat - Generovat transformaci</strong>.</li>
        <li>Uložte soubor s názvem &quot;AlvaoOutlookAddIn.mst&quot;.</li>
    </ol>

</asp:Content>

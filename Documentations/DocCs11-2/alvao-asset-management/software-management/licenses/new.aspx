<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Nová licence</h1>
    <p>Tato část popisuje evidenci různých typů licencí.</p>
    <p>
        Chcete-li vytvořit novou licenci, postupujte podle tohoto postupu    </p>
   <ol>
        <li>V prvním kroku průvodce <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license">Nová licence - produkt</a> vyberte hlavní licenční produkt.
        <div class="note"> <div class="icon"></div><div class="title">Poznámka:</div>Pokud se licence vztahuje na více produktů, můžete je přidat na kartě <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/substitute-products">Náhradní produkty</a> při následné úpravě licence. </div> 

        </li>  


        <li>V dalším kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">Nová licence - licence</a> vyplňte pole v <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">průvodci </li>.  
            <li>Přejděte na další krok průvodce <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/items">Nová licence - položky licence</a>a v případě potřeby přidejte do seznamu konkrétní počítače/uživatele.  Licence můžete počítačům/uživatelům přiřadit i později.<br /><div class="note"> <div class="icon"></div> <div class="title">Poznámka:</div> <ul> <li>Pokud zakoupený produkt obsahuje více aktivačních klíčů (např. OEM licence), vložte je postupně do každé licenční položky do pole <em>Aktivační klíč</em>.</li> <li>Pokud je u licence zadán <em>aktivační klíč</em> </li> </ul> </div>, <div class="note"> <ul> <li>je tato hodnota přednastavena již při vytváření licenčních položek v poli <em>Aktivační klíč</em> položky </li> </ul> </div>. </li>  
            <div class="note"> 
                Pokud je pole <em>Aktivační klíč</em> vyplněno ručně (tj. není automaticky předvyplněno aktivačním číslem licence), kontroluje se duplicita ve všech licenčních položkách.</div></li> <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/documents-media">Nová licence - doklady a média</a>přidejte odkaz na fakturu dokládající nákup licence. </li>
            
    </div>



    <h2 id="perdevice">Licence "na zařízení"</h2>
    <p>
        Licence se vztahuje na instalace konkrétních produktů na počítačích, ke kterým je přiřazena. 
    </p>
    <ol>
        <li>Vytvoření nové licence - viz postup <a href="new">Nová licence</a>.</li>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">Nová licence - licence</a> vyplňte následující pole    <ul>
                <li>Do pole <strong>Počet</strong> zadejte počet zakoupených licencí, tj. počet zařízení nebo počítačů, kterým lze licenci přiřadit</li>
                <li>V poli <strong>Licenční model</strong> vyberte možnost "na zařízení".</li>
            </ul>
        </li>
    </ol>
    <h2 id="peruser">Licence "na uživatele"</h2>
    <p>
        Licence se vztahuje na instalace konkrétních produktů na všech zařízeních, která jsou svěřena do užívání konkrétním uživatelům. 
    </p>
    <ol>
        <li>Vytvoření nové licence - viz postup <a href="new">Nová licence</a>.</li>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">Nová licence - licence</a> vyplňte následující pole:</li>
        <ul>
            <li>Do pole <strong>Počet</strong> zadejte počet zakoupených licencí, tj. v tomto případě počet uživatelů, kterým lze licenci přidělit.</li>
            <li>V poli <strong>Licenční model</strong> vyberte možnost "na uživatele". </li>
        </ul>
    </ol>

    <h2 id="percore">Licence "na jádro"</h2>
    <p>
        Licence se vztahuje na instalaci konkrétních produktů na konkrétní počítače. Licence je specifická tím, že každý počítač v licenci čerpá více jader. 
    </p>
    <ol>
        <li>Vytvoření nové licence - viz postup <a href="new">Nová licence</a>.</li>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">Nová licence - licence</a> vyplňte následující pole:</li>
        <ul>
            <li>Do pole <strong>Počet</strong> zadejte počet zakoupených licencí, tj. v tomto případě počet jader.</li>
            <li>V poli <strong>Licenční model</strong> vyberte možnost "per core".</li>
        </ul>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/items">Nová licence - položky licence</a> vytvořte pro každý počítač položku s příslušným počtem přiřazených licencí.</li>
    </ol>

    <h2 id="perprocessor">Licence "na procesor"</h2>
    <p>
        Licence se vztahuje na instalaci konkrétních produktů na konkrétních počítačích. Licence je specifická tím, že každý počítač čerpá z licence více procesorů. 
    </p>
    <ol>
        <li>Vytvoření nové licence - viz postup <a href="new">Nová licence</a>.</li>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">Nová licence - licence</a> vyplňte následující pole:</li>
        <ul>
            <li>Do pole <strong>Počet</strong> zadejte počet zakoupených licencí, tj. v tomto případě počet procesorů.</li>
            <li>V poli <strong>Licenční model</strong> vyberte možnost "na procesor".</li>
            <li>Povolte možnost <strong>Povolit přidělení více licencí jednomu objektu</strong>.</li>
        </ul>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/items">Nová licence - Položky licence</a> vytvořte pro každý počítač vždy tolik položek, kolik procesorů počítač čerpá z licence.</li>
    </ol>


    <h2 id="cal">Typ licence "CAL per user/device" (Licence CAL na uživatele/zařízení)</h2>
    <p>
        Tento typ licence se vyznačuje tím, že na počítačích, které tato licence může pokrýt, obvykle není nainstalován žádný produkt. 
    </p>
    <ol>
        <li>Vytvoření nové licence - viz postup <a href="new">Nová licence</a>.</li>
        <li>V kroku <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/license">Nová licence - licence</a> vyplňte následující pole:</li>
        <ul>
            <li>Do pole <strong>Počet</strong> zadejte počet zakoupených licencí, tj. počet zařízení nebo uživatelů, kterým může být licence přidělena.</li>
            <li>V poli <strong>Licenční model</strong> vyberte možnost "per device" (na zařízení) nebo "per user" (na uživatele) v závislosti na CAL</li>
            <li>V poli <strong>Typ licence</strong> vyberte možnost "CAL" <div class="note">
    <div class="icon"></div>
     <div class="title">Poznámka:</div>
     U tohoto typu licence se nekontroluje, zda je licence "promarněná".  
 </div>
            </li>
        </ul>
    </ol>

    <h2 id="alvao">Licence pro produkty ALVAO</h2>
    <h3>Asset Management ALVAO</h3>
    <ol>
        <li>Vytvořte <a href="#perdevice">licenci zařízení</a> pro produkt <em>ALVAO Asset Management</em> konkrétní verze.<br />
            Poznámka: Tento produkt je balíček, který obsahuje všechny komponenty patřící do Asset Managementu. 
            <ul>
                <li>Vyplňte pole <strong>Number</strong> (počet počítačů).</li>
                <li>Nastavte data v polích <strong>Platnost do</strong> (pokud máte licenci na roční pronájem) a <strong>Upgrade/podpora do</strong> (datum, do kterého můžete aktualizovat knihovnu softwarových produktů).</li>
                <li>Typ licence ponechte na hodnotě <strong>normal</strong>.</li>
                <li>Vyplňte další požadovaná pole pro dokončení vytvoření licence - viz <a href="new">nová licence</a>.</li>
                <li>Pokud máte v počítačích nainstalovány starší verze programů Agents, upravte licenci a přidejte příslušné verze programů Agents na kartě <strong>Další produkty</strong>.</li>
            </ul></li>
        <li>Licenci přidejte všude tam, kde je nainstalována některá z aplikací Asset Management, např. na serverech Agent, Console a také na serverech se systémem Collector atd.</li>
    </ol>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Licenci pro Asset Management můžete nechat <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">přidělit automaticky</a>. Při automatickém přidělování povolte také možnost <em>Přidělit i komponentám balíčku</em>   </div>

    <h3>ALVAO Service Desk</h3>
    <ol>
        <li>Vytvořte <a href="#peruser">uživatelskou licenci pro</a> produkt <em>ALVAO Service Desk</em> příslušné verze.<br />
            Poznámka: Tento produkt je balíček, který obsahuje všechny komponenty patřící do Service Desk. 
            <ul>
                <li>Vyplňte <strong>pole Číslo</strong>.</li>                
                <li>Nastavte typ licence na <strong>CAL</strong>.</li>
                <li>V poli <strong>Poznámka</strong> poznamenejte, že se zde jedná o licenci na žadatele nebo na řešitele.</li>
                <li>Nastavte data v polích <strong>Expiration By (Platnost do)</strong> a <strong>Upgrade/Support By (Aktualizace/podpora do)</strong>, je-li to relevantní.</li>
                <li>Vyplňte ostatní požadovaná pole a dokončete vytvoření licence - viz <a href="new">nová licence</a>.</li>
            </ul>
        </li>
        <li>Přiřaďte licenci uživatelům (řešitelům nebo uživatelům)</li>
        <li>Nastavte serverové instalace (Alvao Service, Web App) jako <a href="../../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview/actions/special-installation">Speciální instalace</a>.</li>
    </ol>


    <h2 id="office365">Licence pro Office 365</h2>
    <ol>
        <li>Vytvořte <a href="#peruser">uživatelskou licenci pro</a> příslušnou edici <strong>Microsoft Office 365</strong>.<br />
            Poznámka: Produkty MS Office 365 v knihovně jsou balíčky, které obsahují všechny součásti, na které se licence může vztahovat (např. MS Office 2016 atd.)     </li>
        <ul>
            <li>Do pole <strong>Počet</strong> vyplňte, pro kolik uživatelů jste licenci zakoupili.</li>
            <li>Typ licence ponechte na <strong>normální</strong>.</li>
            <li>V polích <strong>Expiry to</strong> a <strong>Upgrade/support to</strong> případně nastavte data.</li>
            <li>Vyplňte ostatní požadovaná pole a dokončete vytvoření licence - viz <a href="new">nová licence</a>.</li>
        </ul>
        <li>Přiřaďte licenci uživatelům.</li>
        <li>Licence se automaticky vztahuje na instalace MS Office 365, 2016, 2019 atd.</li>
    </ol>

    <h2>Licence typu <em>Windows Server Datacenter Edition</em></h2>
    <p>
        Licence pokrývá instalaci serverového operačního systému. Pokrývá také instalaci všech OS Windows na virtuálních počítačích běžících na tomto serveru. 
    </p>
    <ol>
        <li>Vytvořte <a href="#perdevice">licenci na zařízení</a> pro produkt Windows Server Datacenter Edition (dále WSDE), v poli <strong>Počet</strong> nastavte konkrétní počet zakoupených licencí. Tuto licenci přidělte fyzickým serverům.</li>
        <li>Vytvořte další novou pomocnou licenci:</li>
        <ul>
            <li>Abyste usnadnili spárování licence se serverovou licencí, použijte stejný název jako serverová licence s poznámkou, že se jedná o pomocnou licenci pro virtuální počítače.</li>
            <li>Nastavte jeden z operačních systémů Windows jako licenční produkt.</li>
            <li>Typ bude "neomezená multilicence"</li>
            <li>Nenastavujte datum v polích <strong>Expiration by</strong> a <strong>Upgrade/support by.</strong> </li>
            <li>K licenci vytvořené v bodě 1 přidejte odkaz typu "related to".</li>
            <li>Povolte možnost "Automaticky přidělovat" a v nastavení nastavte filtr tak, aby se licence automaticky přidělovaly a odebíraly pouze na virtuálních počítačích běžících pod určitým serverem (např. omezte filtr na cestu ve stromu objektů).</li>
            <li>Dokončete vytváření licence a poté ji upravte tak, abyste do tabulky na kartě <strong>Náhradní produkty</strong> přidali všechny operační systémy Windows (které mohou být potenciálně přítomny ve virtuálních počítačích).</li>
        </ul>
    </ol>

    Pomocná licence se pak bude automaticky vztahovat na všechny instalace operačního systému Windows na virtuálních počítačích spuštěných na hostitelském serveru  <div class="note">
     <div class="icon"></div>
      <div class="title">Poznámka:</div>
      Pro více licencí WSDE, které mohou mít vazby  na více licencí WSDE, je třeba vytvořit pouze jednu pomocnou multilicenci    </div>

</asp:Content>

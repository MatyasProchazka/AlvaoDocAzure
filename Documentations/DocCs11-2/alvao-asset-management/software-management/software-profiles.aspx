<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Softwarové profily</h1>
    <p>Systém ALVAO Asset Management podporuje sledování nainstalovaného softwaru na počítačových stanicích v síti. Aby bylo možné efektivně porovnávat a sledovat, který software je na počítači správně nainstalován a který software na počítači chybí nebo není povolen, je k dispozici funkce nazvaná softwarové profily. Podstata spočívá v tom, že správce vytvoří sadu profilů, které určují, který software je povolen, který je zakázán a který je povinný. Profily lze libovolně kombinovat pomocí hierarchie dílčích profilů a dosáhnout tak efektivního nastavení. Kromě toho lze pro každý počítač definovat výjimky.</p>
    <h2>Správa softwarových profilů</h2>

    <ol>
        <li>Ve <strong>webové aplikaci ALVAO</strong>použijte příkaz <strong>Administration (Správa) - Asset Management (Správa majetku) - Software Profiles (Softwarové profily)</strong>.</li>
        <li>V okně <a href="../../list-of-windows/alvao-webapp/administration/asset-management/software-profiles">Software Profiles (Softwarové profily)</a> můžete vytvářet a upravovat profily.</li>
        <li>Před zavřením okna je nutné změny uložit do databáze pomocí příkazu <strong>Uložit</strong>.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Profily může vytvářet a upravovat osoba, která je členem skupiny <i>Administrators</i> nebo <i>Software profiles managers</i>   </div>

    <h2>Přiřazení profilů počítačům</h2>
    <p>
        Poté přiřadíme profily počítačům a systém automaticky sleduje, jak se nainstalovaný software staví k definovanému profilu. Na zakázaný nebo chybějící software pak upozorní a na kartě <strong>Software</strong> zobrazí ikonu <img src="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/Exclamation.png" />. Software, který je v profilu definován jako povinný, ale na sledované stanici není nainstalován, je navíc odlišen ikonou <img src="../../list-of-windows/alvao-asset-management-console/tab-view/software/SwProfReq.gif" />. (Povinný, ale nenainstalovaný software na stanici ve skutečnosti neexistuje. Zobrazuje se pouze jako virtuální záznam)    </p>
    <p>
        Přiřazení profilů k počítači lze provést pro každý počítač zvlášť pomocí tlačítka <strong>Upravit.</strong>.. ve stromu objektů na záložce <a href="../../list-of-windows/alvao-asset-management-console/edit/object/software-profile">Objekt - Profil softwaru</a> (tato záložka je viditelná pouze u objektu typu &quot;počítač&quot; nebo &quot;počítačová sestava&quot;). Profily lze také konfigurovat hromadně pro více počítačů najednou na kartě <strong>Podřazené objekty - Počítače</strong> v hlavním okně pomocí příkazu Změnit profil softwaru... z kontextové nabídky. Opět se zobrazí okno karty <a href="../../list-of-windows/alvao-asset-management-console/edit/object/software-profile">Objekt - Profil softwaru</a>, ale nastavení se projeví na všech vybraných počítačích    </p>
    <p>
        Na kartě <a href="../../list-of-windows/alvao-asset-management-console/edit/object/software-profile">Objekt - Profil softwaru</a> můžete vybrat jeden profil a dále nastavit výjimky pro jednotlivé počítače. Ty mají vyšší prioritu než nastavení ve vybraném profilu. Je tedy možné dodatečně &quot;doladit&quot; drobné odchylky od profilu pro jednotlivé počítače. Při hromadném nastavení profilů pro více počítačů nelze výjimky konfigurovat. Při nastavení možnosti <strong>Všechen software je povolen</strong> se nekontroluje stav nainstalovaného softwaru vůči profilu softwaru. Všechny produkty na kartě <strong>Software</strong> v hlavním okně pak budou zobrazovat stav profilu jako <strong>Volitelný</strong>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Nově vytvořené počítače v systému se řídí nastavením profilu šablony počítače. Také při kopírování počítačů zůstane zachováno původní nastavení profilu softwaru    </div>


    <h3>Nastavení priority v softwarovém profilu</h3>
    <p>
        Pro produkty obsažené v profilu softwaru lze nastavit tři různé stavy - <strong>volitelný</strong>, <strong>povinný</strong> a <strong>zakázaný</strong>. Pomocí těchto tří stavů lze vhodně nastavit profily, které nám umožní snadno sledovat software nainstalovaný v počítačích a upozornit správce systému na nevhodné stavy (software v počítači chybí, software v počítači není)    </p>
    <p>
        Produkt, který není definován v profilu softwaru, je automaticky brán jako zakázaný a stav <strong>Zakázaný</strong> má nejvyšší prioritu. Stav <strong>Stripped</strong> má přednost. Stav<strong>Prohibited</strong> lze definovat pro produkty, které jsou ve firmě zakázané (např. ICQ, Skype apod.) a chceme upozornit, pokud se jejich instalace objeví na počítači. Systém nás také upozorní na nový software (pokud není v profilu softwaru nastaven jako <strong>Volitelný</strong> ), který se v počítači objeví    </p>
    <p>
        Lze také nastavit, aby vyžadoval přítomnost určitého softwaru v počítačích a upozorňoval na jeho nepřítomnost. Volbu <strong>Nezbytné</strong> lze použít například pro software Microsoft Office apod    </p>
    <p>Možnost <strong>Volitelný</strong> slouží k definici dalšího softwaru, který nemáme zájem sledovat a nechceme být upozorňováni na jeho přítomnost.</p>


    <h2>Sledování stavu instalace oproti softwarovému profilu</h2>
    <p>
        Stav vůči Profilu softwaru se v systému zobrazuje na několika místech. Sloupce týkající se Softwarového profilu jsou v systému zvýrazněny <em>modře</em>. Stavy jsou viditelné na následujících místech v systému    </p>
    <ul>
        <li>V této tabulce jsou viditelné následující sloupce: <em>Karta Objekty - Počítače</em>:<ul>
            <li><em>Profil softwaru</em> - zobrazuje profil, který je pro počítač aktuálně vybrán</li>
            <li><em>Veškerý SW je povolen</em> - Zobrazuje, zda je v počítači povolena možnost <strong>Veškerý software je povolen</strong>.<strong>Veškerý software je povolen</strong>, a proto se stav vůči Softwarovému profilu nesleduje (funkce Softwarový profil je zakázána).</li>
            <li><em>Výjimky SW</em> - Počet výjimek definovaných pro počítač</li>
        </ul>
        </li>
        <li><em>Karta Software (počítač nebo sada počítačů vybraná ve stromu</em>) - Lze ji použít ke sledování stavu nainstalovaného softwaru vůči Profilu softwaru pomocí sloupců:<ul>
    <li><em>Stav profilu</em> - zobrazuje stav produktu vůči Profilu softwaru - <strong>Volitelný</strong>, <strong>Povinný</strong>, <strong>Zakázaný</strong>a <strong>Chybí</strong> - tento stav je <strong>virtuální</strong> položka (tento produkt není na stanici ve skutečnosti nainstalován), pouze indikuje, že na stanici chybí instalace produktu požadovaná profilem softwaru (produkt je v Profilu softwaru definován jako <strong>Povinný</strong> ).</li>
    <li><em>Chybová zpráva</em> - zobrazí chybovou zprávu společnou pro stav Software Profile a stav licence, která specifikuje, co je na stroji špatně.</li>
            </ul>
        </li>
        <li><em>Karta Software (další objekt vybraný ve stromu, který obsahuje počítače v podstromu</em> ) - lze ji použít ke sledování stavu nainstalovaného softwaru na počítačích v podstromu oproti profilu Software pomocí sloupců:<ul>
            <li><em>Horní část okna</em> - zobrazuje souhrnný seznam produktů nainstalovaných na všech počítačích ve vybraném podstromu. Mohou se zde vyskytovat položky s ikonou <img src="../../list-of-windows/alvao-asset-management-console/tab-view/software/SwProfReq.gif">- označuje, že v počítači chybí software, který je v <strong>jeho profilu</strong> nastaven jako <strong>Požadovaný</strong>. Pokud je u produktu zobrazena ikona <img src="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/Exclamation.png" />, znamená to, že na některém počítači v podstromu může být problém s licencí, softwarovým profilem nebo obojím. Chcete-li získat další informace, klikněte na produkt a sledujte spodní část okna.</li>
            <li><em>Spodní část okna</em> - zobrazuje přehled počítačů, které mají nainstalovaný produkt vybraný v horní části okna. Opět jsou zde <strong>sloupce</strong> <strong>Stav profilu</strong> a <strong>Chybová hlášení</strong> podobně jako na kartě <em><strong>Software</strong></em> (pro jeden počítač). Ikona <img src="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/Exclamation.png" />opět indikuje problém s licencí, softwarovým profilem nebo obojím. Další informace naleznete ve sloupci <strong>Chybová zpráva</strong>.</li>
        </ul>
        </li>
        <li><em>Přehled licencí a instalací (spodní část okna</em> ) - zobrazuje přehled počítačů, které mají nainstalovaný produkt vybraný v horní části okna. Tato část okna je stejná jako <strong>spodní část okna</strong> na stránce <em><em><strong>Software</strong></em> (s jiným objektem vybraným ve stromu, který obsahuje počítače v podstromu).</li>
    </ul>
</asp:Content>

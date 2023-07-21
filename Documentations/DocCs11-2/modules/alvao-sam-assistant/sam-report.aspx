<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Zpráva o správě softwaru</h1>
    <p>
        Modul <a href="../alvao-sam-assistant">ALVAO SAM Assistant</a> obsahuje <strong>Software Management Report</strong> (Software Management Report csy.rdl, Software Management Report enu.rdl), který poskytuje provozní přehled o nainstalovaném softwaru a zakoupených licencích.<br />
        Zpráva graficky zobrazuje stav celého inventáře a uvádí informace pouze o několika nejdůležitějších objektech.<br />
        Grafy slouží k získání celkového přehledu a k rozhodnutí, které informace je třeba prozkoumat podrobněji. Popis jednotlivých grafů (níže) proto odkazuje na příslušnou část aplikace ALVAO Asset Management    </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Zpráva je pouze v českém a anglickém jazyce    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Podobné informace lze získat také v analytickém excelu <strong><em>Asset Management Analysis.xlsm</em></strong>, který se nachází v instalačním adresáři nainstalované konzole Alvao Asset Management Console    </div>


    <h2>Instalace</h2>
    Popis instalace sestav naleznete v části <a href="../../alvao-asset-management/implementation/maintenance-reports/installation">Instalace sestav ve službě Microsoft SQL Server Reporting Services</a>   <h2>Grafy sestav</h2>
    <h3>Kontrola zápisu a přidělení licencí</h3>
    <p>
        První čtyři grafy zobrazují legálnost nainstalovaného softwaru a využití licencí, další informace naleznete v části <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview">Přehled licencí a instalací</a>.<br />
        Poznámka: Grafy zobrazují pouze informace o produktech, které nejsou freewarem    </p>
    <ul>
        <li><strong>Ne/legální instalace</strong> - ukazuje celkový poměr mezi nainstalovaným softwarem a zakoupenými licencemi. Započítávají se i nepřidělené licence pro produkt s primární licencí.</li>
        <li><strong>Instalace s přidělenou/bez přidělené licence</strong> - zobrazuje poměr instalací s přidělenou a bez přidělené licence. Jsou uvedeny tři počítače (a jejich uživatelé) s nejvyšším počtem instalací bez přidělených licencí.</li>
        <li><strong>Licence</strong> - zobrazuje poměr zakoupených licencí, které jsou nepřiřazenými licencemi, a tři licence s nejvyšším počtem nepřiřazených licencí.</li>
        <li><strong>Přidělené licence</strong> - zobrazuje, jaká část přidělených licencí je zbytečně přidělena.<br />
            Jsou uvedeny tři počítače (a jejich uživatelé) s nejvyšším počtem zbytečně přidělených licencí.</li>
        <li><strong>Nově registrované licence (dokumenty</strong> ) - upozorňuje na potenciální problémy v <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">registru licencí</a> a ukazuje objem nově registrovaných licencí za posledních 6 měsíců.</li>
        <li><strong>Končící licence v příštích třech měsících</strong> - zobrazuje tři nejčastěji končící licence a počet licencí, jejichž platnost vyprší v příštích třech měsících. Všechny je najdete v aplikaci ALVAO Asset Management, v <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">registru licencí</a> zobrazením sloupce <em>Expirace podle</em>.</li>
    </ul>
    <h3>Kontrola technologické části systému</h3>
    <ul>
        <li><strong>Software pro detekci počítačů</strong> - porovnání <a href="../../alvao-asset-management/implementation/detection/detection-way">způsobů, jakými byly počítače detekovány</a>. Více na kartě <a href="../../list-of-windows/alvao-asset-management-console">Detekce</a> pro vybraný objekt. Zobrazuje informace za posledních 6 měsíců.</li>
        <li><strong>Instalace a odinstalace softwaru</strong> - přehled zjištěných a ručně zadaných změn nainstalovaného softwaru. Více informací naleznete na <a href="../../list-of-windows/alvao-asset-management-console/tab-view/diary">kartě Protokol</a> pro vybraný objekt.</li>
        <li><strong>Histogram stáří detekce</strong> - stáří detekcí počítače. Tři počítače s nejstaršími detekcemi a případně 3 počítače, které nebyly nikdy předtím detekovány. Více na <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection">kartě Detekce</a> vybraného objektu.</li>
        <li><strong>Softwarové produkty</strong> - informace o <a href="../../alvao-asset-management/software-management/custom-swlib">knihovně SW produktů</a>: kolik produktů není rozpoznáno a kdy byla knihovna naposledy aktualizována.</li>
    </ul>

</asp:Content>

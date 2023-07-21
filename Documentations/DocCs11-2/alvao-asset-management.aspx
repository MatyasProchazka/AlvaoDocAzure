<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO Asset Management</h1>
    <p>
        ALVAO Asset Management je systém, který zajišťuje evidenci IT vybavení, softwaru a dalších položek. Další informace naleznete na webových stránkách <a href="https://www.alvao.com/asset-management">ALVAO Asset Management</a>   </p>
    <p>
        Úvod <a href="alvao-asset-management/implementation">Implementace systému v organizaci</a> shrnuje témata týkající se implementace systému v organizaci a jeho základního nastavení    </p>
    <p>Další kapitoly se zabývají tématy týkajícími se používání systému.</p>
    <p><a href="list-of-windows">Rejstřík oken a příkazů</a> obsahuje popisy jednotlivých oken, formulářů a příkazů v jednotlivých aplikacích Alvao.</p>


    <h2>Jaké procesy systém podporuje</h2>
    <ul>
        <li><strong>Evidence majetku</strong> - v systému lze evidovat jakýkoli majetek - od hardware (počítače, síťové prvky, ...), přes média (CD, DVD, literatura, ...) až např. po kancelářský nábytek apod. Pravidelně lze provádět inventarizaci evidovaného majetku, aby se zajistilo, že evidence odpovídá skutečnosti.</li>
        <li><strong>Předávání počítačů uživatelům</strong> - při předávání počítačů a dalších zařízení (mobilní telefon, ...) novým zaměstnancům systém vytiskne <em>Předávací protokol</em>. Protokol podepisuje předávající zaměstnanec ICT a zaměstnanec, který majetek přebírá do užívání. Součástí protokolu je prohlášení zaměstnance, že nebude na počítač instalovat žádný software bez vědomí pracovníků ICT, což je jedna z forem zajištění legálnosti softwaru používaného v organizaci.</li>
        <li><strong>Převody majetku mezi uživateli</strong> - jedním z úkolů pracovníků ICT je nákup nového počítačového vybavení a s tím související převody počítačů mezi uživateli. Převody majetku by měly být dokumentovány podepsanými předávacími protokoly. Systém navíc zaznamenává historii převodu jednotlivých položek mezi zaměstnanci, aby bylo možné zpětně dohledat, kdo s konkrétním počítačem v minulosti pracoval.</li>
        <li><strong>Audit softwaru</strong> - systém na základě informací o souborech na pevných discích počítačů a údajů v systémovém registru určí, jaké aplikace jsou na jednotlivých počítačích nainstalovány. Tato data jsou automaticky zachycována na dálku prostřednictvím sítě. Na základě porovnání nainstalovaného softwaru se zakoupenými licencemi je vytvořena závěrečná zpráva o auditu.</li>
        <li><strong>Evidence a opravy</strong> - v případě poruchy zařízení systém poskytuje funkce pro rychlé vyhledání dokladů o nákupu a informací o záruce. Pro každé zařízení je vedena historie poruch a servisních zásahů.</li>
        <li><strong>Podpora uživatelů</strong> - systém poskytuje pracovníkům technické podpory informace o technických parametrech počítačů uživatelů, jejichž problém právě řeší. Mohou se také vzdáleně připojit k počítači uživatele a ovládat jej pomocí klávesnice a myši.</li>
        <li><strong>Hromadné nasazení nových zařízení</strong> - pomocí mobilního snímače čárových kódů CS1504 lze v systému Asset Management snadno vytvořit nové zařízení. Z naskenovaných čárových kódů (sériových čísel, ... ) lze ve stromu hromadně vytvářet nové objekty.</li>
        <li><strong>Inventarizace</strong> - systém podporuje úplnou inventarizaci. Můžete snadno zjistit rozdíl mezi evidovaným a fyzickým majetkem a přenést evidované změny do evidence majetku.</li>
    </ul>

    <h2>Co lze evidovat</h2>

    <ul>
        <li><strong>Počítače</strong> - údaje o počítačovém hardware a příslušenství (tiskárny, klávesnice, myši, tablety atd.). Technické parametry hardware jsou detekovány samotným systémem a automaticky zaneseny do evidence. Ostatní údaje, jako jsou inventární čísla, data nákupu, čísla faktur a záruční údaje, je třeba do systému importovat z jiných zdrojů nebo zadat ručně.</li>
        <li><strong>Nainstalovaný software</strong> - seznam aplikací, které jsou nainstalovány na jednotlivých počítačích. K dispozici je také historie instalací, která sleduje, kdy a kdo na jaké počítače nainstaloval jaký software.</li>
        <li><strong>Zakoupený software</strong> (správa softwarových licencí) - seznam dokumentů o nákupu softwarových licencí, jejich postupném přechodu na novější verze, včetně přidělení licencí počítačům nebo uživatelům.</li>
        <li><strong>Ostatní majetek</strong> - např. telefony, tiskárny, dataprojektory atd.</li>
        <li><strong>Spotřební materiál</strong> - zásoby spotřebního materiálu, jako jsou tonery a náplně do inkoustových tiskáren.</li>
    </ul>


</asp:Content>

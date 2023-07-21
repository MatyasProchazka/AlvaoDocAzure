<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Skupiny uživatelů</h1>

    <p>Každá skupina může obsahovat uživatele i jiné skupiny. Uživatelé a skupiny mohou být současně členy více skupin. Skupiny uživatelů se používají hlavně pro hromadnou správu oprávnění uživatelů, kdy se oprávnění udělují celé skupině najednou (nikoli jednotlivým uživatelům zvlášť).</p>
    <p>
        Uživatelské skupiny můžete spravovat v nabídce <strong>WebApp - Administration (Správa) - Groups (Skupiny)</strong>. Seznam můžete ručně upravovat pomocí běžných příkazů <strong>New</strong>, <strong>Edit</strong> a <strong>Delete</strong>. Více informací o přidělování oprávnění naleznete v části <a href="../../objects-and-properties/object-access-rights">Zabezpečení objektů</a>   </p>
    <p>Při <a href="../users#import_ad">načítání uživatelů z Active Directory (AD</a>) se z AD načítají také skupiny uživatelů, takže pro správu oprávnění v Alvao můžete používat skupiny definované v AD.</p>

    <h2>Běžné systémové skupiny pro systém Alvao</h2>

    <table>
        <thead>
            <tr>
                <th style="width: 30%">Skupina</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Administrators</td>
                <td>Uživatelé v této skupině mají přístup ke správě systému Alvao.</td>
            </tr>
            <tr>
                <td>Správci konfigurace</td>
                <td>Uživatelé v této skupině mají přístup k následujícím agendám v administraci systému Alvao:<ul>
                    <li>Uživatelé (s výjimkou změny členství ve skupině <i>Administrátoři</i> )</li>
                    <li>Skupiny (s výjimkou změny členství ve skupině <i>Administrators</i> )</li>
                    <li>Asset Management (všechny agendy)</li>
                    <li>Service Desk (všechny agendy)</li>
                    <li>Vlastní položka</li>
                    <li>Nastavení (pouze nastavení domovské stránky webové aplikace a kontrola nastavení)</li>
                    <li>Licence (kromě změny aktivačního klíče)</li>
                </ul>
                    <p>Stále mohou spravovat všechna sdílená zobrazení v aplikaci.</p>
                </td>
            </tr>
            <tr>
                <td>Kontaktovat správce</td>
                <td>Uživatelé v této skupině mohou spravovat osoby (kromě změny členství ve skupinách) a organizace v aplikaci ALVAO WebApp - Manage.</td>
            </tr>
            <tr>
                <td>Čtenáři kontaktů</td>
                <td>Uživatelé v této skupině mohou vyhledávat všechny uživatele a organizace          <p>Mohou také zobrazit hodnoty vlastních polí uživatelů a organizací.</p>
                </td>
            </tr>
            <tr>
                <td>Všichni</td>
                <td>Všichni uživatelé. Tato skupina obsahuje všechny registrované uživatele a uživatele typu Guest.</td>
            </tr>
            <tr>
                <td>Registrovaní uživatelé</td>
                <td>Všichni registrovaní uživatelé. Tato skupina obsahuje všechny uživatele kromě uživatele Host.</td>
            </tr>
        </tbody>
    </table>

    <h2>Systémové skupiny pro ALVAO Asset Management</h2>

    <table>
        <thead>
            <tr>
                <th style="width: 30%">Skupina</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Správci správy aktiv</td>
                <td>Uživatelé v této skupině mají neomezený přístup ke všem částem systému, spravují systémové číselníky a systémový koš.</td>
            </tr>
            <tr>
                <td>Čtenáři Asset Management</td>
                <td>Uživatelé v této skupině mají přístup na úrovni čtení k záznamům IT zařízení, softwarovým licencím, auditu softwaru a detekcím.</td>
            </tr>
            <tr>
                <td>Čtenáři odkazů</td>
                <td>Uživatelé v této skupině mohou vidět všechny vazby  na objekty a vykreslovat je v aplikaci MS Visio.</td>
            </tr>
            <tr>
                <td>Čtenáři vlastností objektů</td>
                <td>Uživatelé v této skupině mohou vidět vlastnosti objektů a jejich hodnoty.</td>
            </tr>

            <tr>
                <td>Správci detekcí software a hardware</td>
                <td>Uživatelé v této skupině mohou spravovat detekce software a hardware v počítačích a spravovat knihovnu softwarových produktů.</td>
            </tr>
            <tr>
                <td>Správci aktiv</td>
                <td>Uživatelé v této skupině mají neomezený přístup k záznamům o IT zařízeních. Správce aktiv může měnit druh objektu pouze u počítačů a pouze na jiný typ počítače.</td>
            </tr>
            <tr>
                <td>Správci software pro počítače</td>
                <td>Uživatelé v této skupině mohou být upozorněni na chybějící licence softwaru.</td>
            </tr>
            <tr>
                <td>Správci softwarových licencí</td>
                <td>Uživatelé v této skupině mají ve výchozím nastavení neomezený přístup k evidenci softwarových licencí a k auditu softwaru. Spravují softwarové produkty. Pokud jsou licence pro více organizací evidovány odděleně, pak oprávnění nejsou vázána na členství v této skupině, ale na oprávnění nastavená v <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/software-licenses-security">zabezpečení softwarových licencí</a>.</td>
            </tr>
            <tr>
                <td>Správci softwarových profilů</td>
                <td>Uživatelé v této skupině mohou vytvářet a upravovat softwarové profily počítačů pro ALVAO Asset Management.</td>
            </tr>
            <tr>
                <td>Správci dotazů SQL</td>
                <td>Uživatelé v této skupině mohou upravovat a spouštět <a href="../../../list-of-windows/alvao-asset-management-console/tools/database">dotazy SQL</a> v konzole ALVAO Asset Management.</td>
            </tr>
            <tr>
                <td>Správci odkazů</td>
                <td>Uživatelé v této skupině mohou spravovat vazby  pro všechny objekty bez ohledu na jejich oprávnění.</td>
            </tr>
            <tr>
                <td>Správci vlastností objektů</td>
                <td>Uživatelé v této skupině mohou upravovat hodnoty vlastností objektů.</td>
            </tr>
            <tr>
                <td>Účetní</td>
                <td>Uživatelé v této skupině mohou zapisovat inventární čísla do záznamů IT zařízení. Spravují modul inventarizace IT zařízení.</td>
            </tr>
        </tbody>
    </table>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vazby mezi licencemi</h1>
    <p>V ALVAO Asset Management lze mezi licencemi vytvářet vazby , které definují vztahy mezi licencemi. </p>

    <h2>Karta Vazby </h2>
    <p>
        Vazby můžete spravovat v hlavním okně <strong>konzoly ALVAO Asset Management</strong>v okně <strong>Upravit licenci</strong> na kartě <strong>Vazby </strong>. Existují přímé i nepřímé (tranzitivní) vazby     </p>
    <h3>Zobrazení</h3>
    <p>Ve výchozím nastavení jsou na kartě "vazby " zobrazeny následující pohledy:</p>
    <ul>
        <li><strong>Přímé</strong> - zobrazuje pouze přímé vazby , tj. vazby , jejichž počáteční nebo konečná licence je přímo vybraná licence.</li>
        <li><strong>Následuje</strong> - zobrazí seznam licencí, které vybraná licence následuje.</li>
        <li><strong>Předchází</strong> - zobrazí seznam licencí, které vybraná licence předchází.</li>
    </ul>

    <h3>Sloupce</h3>
    <table>
        <thead>
            <th>Název</th>
            <th>Popis</th>
        </thead>
        <tbody>
            <tr>
                <td>Cesta</td>
                <td>Cesta k propojenému objektu.</td>
            </tr>
            <tr>
                <td>Druh objektu</td>
                <td>Typ propojeného objektu.</td>
            </tr>
            <tr>
                <td>Object name</td>
                <td>Název propojeného objektu.</td>
            </tr>
            <tr>
                <td>Přímý</td>
                <td>Ano - jedná se o přímý odkaz na objekt, který je vybrán ve stromu.<br />
                    Ne - jedná se o nepřímý odkaz na objekt, který je vybrán ve stromu (odkaz přes jiný objekt).</td>
            </tr>
            <tr>
                <td>Typ odkazu</td>
                <td>Typ odkazu z pohledu aktuálně vybraného objektu ve stromu.</td>
            </tr>
            <tr>
                <td>Upraveno</td>
                <td>Datum a čas poslední změny odkazu.</td>
            </tr>
            <tr>
                <td>Upravit</td>
                <td>Osoba, která odkaz naposledy upravila.</td>
            </tr>
            <tr>
                <td>Od objektu (cesta)</td>
                <td>Cesta k objektu, na kterém je odkaz definován. U přímých odkazů je to vybraný objekt ve stromu.</td>
            </tr>
            <tr>
                <td>Z objektu (typ)</td>
                <td>Typ objektu, na který je odkaz definován.</td>
            </tr>
            <tr>
                <td>Z objektu (název)</td>
                <td>Název objektu, na kterém je odkaz definován.</td>
            </tr>
            <tr>
                <td>Z objektu (typ vazby)</td>
                <td>Typ odkazu z pohledu objektu, na kterém je odkaz definován.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="link-type">Typy odkazů</h2>
    <p>Mezi objekty lze definovat následující typy vazeb:</p>
    <table>
        <thead>
            <th>Typ odkazu</th>
            <th>Popis</th>
        </thead>
        <tbody>
            <tr>
                <td>Souvisí s - Souvisí s</td>
                <td>Licence A souvisí s licencí B.</td>
            </tr>
            <tr>
                <td>Předchází před - Následuje za</td>
                <td>Licence A předchází licenci B. Například: Licence MS Office 2003 předchází licenci MS Office 2010.</td>
            </tr>
        </tbody>
    </table>

    <h2>Přímé a nepřímé vazby </h2>
    <p>
        Mezi licencemi A až E existují například následující vazby:<br />
        A -&gt; B -&gt; <strong>C</strong> -&gt; D -&gt; E </p>
    <p>Pokud je vybraná licence C, pak jsou vazby B-&gt;C a C-&gt;D <strong>přímé,</strong> protože přímo vyplývají z licence C nebo na ni ukazují.</p>
    <p>
        Vazby A-&gt; C a C-&gt; E jsou <strong>nepřímé,</strong> protože licence A je nepřímo spojena s C prostřednictvím licence B. Podobně licence E je nepřímo spojena s C prostřednictvím licence D </p>
    <h2>Přidání nového odkazu</h2>
    <ol>
        <li>V <strong>AM Console</strong> zobrazte okno <strong>Upravit licenci</strong> pro licenci, ke které chcete přidat odkaz.</li>
        <li>V místní nabídce na kartě <strong>Vazby </strong> vyberte příkaz <strong>Vazby </strong>. Přidat</strong>.</li>
        <li>Otevře se okno <strong>Přidat odkaz</strong>. Licence v horní části okna je předvyplněna podle upravované licence. Tento výběr nelze změnit.</li>
        <li>V rozevírací nabídce <strong>Typ odkazu</strong> vyberte požadovaný typ vazby, například "Licence (nahoře)<strong> následuje</strong>licenci<strong>
            </strong>(dole)"</li>
        <li>Zadejte část názvu licence a vyberte objekt z rozevírací nabídky.</li>
        <li>Po vyplnění údajů klikněte na tlačítko <strong>OK</strong>.</li>
    </ol>
    <h2>Úprava existujícího odkazu</h2>
    <ol>
        <li>Na kartě <strong>vazby </strong> v okně <strong>Upravit licenci</strong> vyberte odkaz, který chcete upravit, a z místní nabídky vyberte možnost <strong>Upravit</strong>.</li>
        <li>V okně <strong>Upravit odkaz</strong> upravte typ vazby a koncové licence podle potřeby a klikněte na tlačítko <strong>OK</strong>.</li>
    </ol>
    <h2>Odstranění odkazu</h2>
    <ol>
        <li>Na kartě <strong>vazby </strong></strong> v okně <strong>Upravit licenci</strong>. vyhledejte odkaz, který chcete odstranit, a vyberte možnost <strong>Odstranit</strong>.</li>
        <li>Potvrďte odstranění odkazu.</li>
    </ol>

    <h2>Příklad: Na obrazovce se zobrazí odkaz na odkaz, který se nachází v seznamu odkazů: Licenční vazby  při aktualizaci softwarové licence</h2>
    <p>
        Proveďte upgrade <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />Nákup 10 licencí systému Windows 98 na <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />nákup 10 licencí systému Windows XP Professional        <br />
        Seznam licencí bude po upgradu obsahovat následující položky: <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />Purchase 10 Windows 98 licenses, <img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />canceling 10 Windows 98 licenses a <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />purchasing 10 Windows XP Pro licenses        <br />
        V seznamu odkazů <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />nákupu licence Windows98 se objeví následující položky: <img src="../../list-of-windows/alvao-asset-management-console/LicRelRight.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />Windows 98 a <img src="../../list-of-windows/alvao-asset-management-console/LicRelRight.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />Windows XP Pro   <br />
        V seznamu odkazů <img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />zrušení licence Windows 98 se zobrazí následující: <img src="../../list-of-windows/alvao-asset-management-console/LicRelLeft.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />Windows 98 a <img src="../../list-of-windows/alvao-asset-management-console/LicRelRight.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />Windows XP Pro   <br />
        V seznamu odkazů <img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />zakoupení licence Windows XP Pro se objeví následující: <img src="../../list-of-windows/alvao-asset-management-console/LicRelLeft.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicOut.GIF" />Windows 98 a <img src="../../list-of-windows/alvao-asset-management-console/LicRelLeft.GIF" /><img src="../../list-of-windows/alvao-asset-management-console/LicIn.GIF" />Windows 98  </p>

</asp:Content>


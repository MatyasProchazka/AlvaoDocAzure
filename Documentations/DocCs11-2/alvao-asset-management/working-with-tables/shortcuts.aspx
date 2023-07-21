<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Klávesové zkratky</h1>

    <table>
        <thead>
            <tr>
                <th>Klávesová zkratka</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><span class="key">Tabulátor</span></td>
                <td>Přesun na další buňku řádku filtru nebo na další tabulku.</td>
            </tr>
            <tr>
                <td><span class="key">Shift+Tab</span></td>
 <td>Přesun na předchozí buňku řádku filtru nebo na předchozí tabulku.</td>
            </tr>
            <tr>
                <td><span class="key">Odstranit</span></td>
                <td>Odstranění vybrané položky.</td>
            </tr>
            <tr>
                <td><span class="key">F5</span></td>
                <td>Obnoví tabulku aktuálními daty v databázi.</td>
            </tr>
            <tr>
                <td><span class="key">Ctrl+P</span></td>
                <td>Vytiskne tabulku nebo <a href="../implementation/customization/reports">vytiskne sestavy</a>.</td>
            </tr>
            <tr>
                <td><span class="key">Ctrl+E</span></td>
                <td>Otevře tabulku v aplikaci MS Excel</td>
            </tr>
            <tr>
                <td><span class="key">Ctrl+F</span></td>
                <td>Otevře okno pro vyhledávání</td>
            </tr>
            <tr>
                <td><span class="key">Zadejte adresu</span></td>
                <td>Upravit položku</td>
            </tr>
        </tbody>
    </table>


</asp:Content>

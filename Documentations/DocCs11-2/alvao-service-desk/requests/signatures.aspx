<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Podpisy</h1>

    <p>K nové zprávě se automaticky přidá váš podpis. Místo <strong>výchozího</strong> podpisu, který systém automaticky vytvoří podle vašich kontaktních údajů (jméno, funkce, oddělení, organizace), můžete definovat vlastní podpis.</p>


    <h2>Vlastní podpisy</h2>
    <p>Vlastní podpisy můžete vytvořit v <strong>aplikaci ALVAO WebApp - Uživatelské menu - Nastavení</strong> - <a href="../../list-of-windows/alvao-webapp/settings/signatures">Podpisy</a>.</p>
    <p>Můžete definovat následující typy podpisů:</p>
    <table>
        <thead>
            <tr>
                <th>Objednávka</th>
                <th>Typ podpisu</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1.</td>
                <td>Osobní podpis pro službu</td>
                <td>V některých uvedených službách můžete použít pouze svůj podpis.</td>
            </tr>
            <tr>
                <td>2.</td>
                <td>Osobní podpis pro všechny služby</td>
                <td>Podpis můžete použít pouze ve všech službách.</td>
            </tr>
            <tr>
                <td>3.</td>
                <td>Skupinový podpis pro službu</td>
                <td>Podpis mohou používat všichni členové řešitelských týmů určitých služeb a pouze v těchto službách.</td>
            </tr>
            <tr>
                <td>4.</td>
                <td>Skupinový podpis pro všechny služby</td>
                <td>Signaturu mohou používat všichni členové řešitelských týmů ve všech službách.</td>
            </tr>


        </tbody>
    </table>


    <p>Váš osobní podpis pro danou službu bude do nové zprávy vložen jako předvolba. Pokud není definován, vloží se váš osobní podpis pro všechny služby atd. v pořadí uvedeném v tabulce. Pokud nemáte definovaný žádný osobní podpis, bude do nové zprávy vložen váš výchozí podpis.</p>

</asp:Content>
<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Přidat/upravit odkaz</h1>
    <p>V tomto okně můžete vytvořit novou vazbu nebo upravit stávající vazbu mezi dvěma požadavky. Vazby požadavku na jiné požadavky najdete na kartě <a href="../request">odkazů</a>.</p>
    <p>Možnosti: V nabídce se zobrazí následující možnosti: </p>

    <ul>
        <li><strong>Požadavek</strong> - požadavek, ke kterému vytváříte nový nebo upravujete stávající odkaz. Pokud upravujete existující odkaz, můžete vybrat jinou požadavek a přesunout odkaz na vybranou požadavek. V takovém případě zadejte číslo, značku nebo část názvu požadavku a poté z nabídky vyberte hledaný požadavek.</li>
        <li><strong>Typ propojení</strong> - vyberte typ <a href="../../../../alvao-service-desk/requests/relations">propojení</a> mezi horním a dolním požadavkem. Název typu propojení odpovídá čtení údajů v okně shora dolů.</li>
        <li><strong>Požadavek</strong> - zadejte číslo, značku nebo část názvu požadavku a poté z nabídky vyberte požadavek, který chcete svázat s horním požadavkem.<br />
            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                Pokud zadáte číslo požadavku, nemusíte již vybírat požadavek z rozbalovací nabídky pod vstupním řádkem a okno můžete potvrdit přímo klávesou <span class="key">Enter</span>    </div>
        </li>
    </ul>


</asp:Content>

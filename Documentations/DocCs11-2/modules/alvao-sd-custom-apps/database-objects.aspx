<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní funkce výběru objektů</h1>
    <p>Pole <em>Objekty</em> slouží k přidání <a href="../../alvao-asset-management/objects-and-properties">objektů</a> ze správy majetku ALVAO na kartu <strong>Objekty</strong> na stránce <a href="../../list-of-windows/alvao-webapp/requests/request"></a>. Jedná se o vstupní pole s rozbalovací nabídkou.</p>

    <h2>Chování systému</h2>
    <p>Ve vstupním poli se zobrazí ikona vybraného objektu a jeho název.</p>
    <p>
        Pokud uživatel do vstupního pole nezadá žádný text, rozbalovací nabídka nabízí objekty, které jsou aktuálnímu žadateli svěřeny do užívání (nachází se pod ním ve stromu objektů), a majetek, za který <a href="../../alvao-asset-management/implementation/tree-design">je odpovědný</a>. Pokud uživatel zadá do vstupního pole část názvu objektu, cestu ve stromu, inventární, sériové nebo evidenční číslo, nabídka zobrazí objekty odpovídající zadanému textu. Uživatel může také zadat typ objektu, např. pokud zadá &quot;monitor: dell&quot;, vyhledá všechny objekty typu <em>Monitor</em>, jejichž název začíná řetězcem <em>dell</em>   </p>
    <p>
        V nabídce se zobrazí pouze objekty, které má uživatel právo zobrazit ve stromu objektů. Počítačové komponenty a objekty typu <em>Assembly</em> se nezobrazují. Nabízené objekty jsou ve stromu seřazeny podle cesty, dále podle druhu objektu a názvu objektu    </p>

    <h2>Vlastní funkce</h2>
    <p>Pokud chcete změnit systémové chování pole, např. vyhledávat objekty podle hodnot jiných vlastností, vytvořte v databázi novou funkci <strong>ftDeviceSearch-Custom2</strong>, která bude vracet obsah rozbalovací nabídky podle zadaných parametrů. Funkce musí mít stejné parametry a stejný formát výstupu jako systémová funkce <a href="../../alvao-asset-management/implementation/customization/database#TF-dbo.ftDeviceSearch">dbo.ftDeviceSearch</a>.</p>


</asp:Content>

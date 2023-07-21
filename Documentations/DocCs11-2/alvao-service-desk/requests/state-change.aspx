<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Změna stavu</h1>
    <p>Po dokončení úkolu v rámci stavu požadavku řešitel přesune požadavek dále v rámci definovaného pracovního postupu pomocí funkce <a href="../../list-of-windows/alvao-webapp/requests">Requesty</a>- <strong>Go to status</strong> nebo <strong>Edit - Request status</strong>. Stav požadavku nelze měnit, pokud probíhá schvalování. </p>
    <p>Při změně stavu je uživatel vyzván k vyplnění požadovaných položek pro daný stav. Povinné položky a proces řešení lze nastavit na stránce <a href="../implementation/services/processes">Procesy</a>.</p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je požadavek podána na základě zákona, je možné ji vyřadit z provozu:</div>
        Stav požadavku můžete také snadno změnit na kartě <a href="../../list-of-windows/alvao-webapp/requests/request">Požadavek</a> - <em>průběh řešení</em> kliknutím na příslušnou buňku "teploměru" u levého okraje karty    </div>
</asp:Content>

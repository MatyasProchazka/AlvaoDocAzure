<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vazby mezi požadavky a objekty</h1>
    <p>Požadavky v <a href="../alvao-service-desk">ALVAO Service Desk</a> můžete propojit s objekty z <a href="../alvao-asset-management">ALVAO Asset Management</a>. Například k požadavku představujícímu <a href="../itil/identity-management">incident</a> můžete přiřadit objekty představující zařízení (CI), kterých se incident týká. K jednomu požadavku můžete přiřadit více objektů a naopak.</p>
    <p>Seznam objektů, které jsou navázány na konkrétní požadavek, si můžete prohlédnout a upravit v záložce <strong>WebApp - Requests (Požadavky)</strong> - <a href="../list-of-windows/alvao-webapp/requests/request">Request (Požadavek)</a> - <strong>Objects (Objekty)</strong>. Podobně seznam požadavků, které jsou svázány s konkrétním objektem, naleznete na kartě <strong>WebApp - Objects - Object</strong> - <a href="../list-of-windows/alvao-webapp/objects/object/related-tickets">Related Requests</a> ( <strong>Aplikace WebApp - Objekty - Objekt</strong> - <a href="../list-of-windows/alvao-webapp/objects/object/related-tickets">Související požadavky</a> ).</p>
    <p>V <strong>nabídce WebApp - User Menu - My Assets</strong> - <a href="../list-of-windows/alvao-webapp/search/persons/person/my-asset-object">Assets</a> tak můžete přímo vytvořit nový související požadavek k vybranému objektu.</p>
    <p>V <strong>AM Console Console</strong> lze požadavky související s vybraným objektem nalézt v <a href="../list-of-windows/alvao-asset-management-console/tab-view/diary">protokolu objektu</a>. K úpravě vazeb můžete použít příkazy <strong>Nový požadavek</strong>, <strong>Přidat do požadavku</strong> a <strong>Související požadavky</strong> na následujících místech:</p>
    <ul>
        <li><a href="../list-of-windows/alvao-asset-management-console/object-tree">stromu objektů</a></li>
        <li>Karta <a href="../list-of-windows/alvao-asset-management-console/tab-view/objects">Objekty</a></li>
        <li><a href="../list-of-windows/alvao-asset-management-console/view/list-of-objects">Seznamy objektů</a></li>
        <li><a href="../list-of-windows/alvao-asset-management-console/view/search-results">Nalezené objekty</a></li>
    </ul>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud tyto funkce ve své aplikaci nevidíte, požádejte správce Alvao o <a href="implementation/services/processes#request_object_links">povolení vazeb mezi objekty a požadavky</a>   </div>

</asp:Content>

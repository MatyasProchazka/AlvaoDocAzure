<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Žádost o povolení k prohlídce</h1>
    <p>
        Každý uživatel vidí v aplikaci pouze ty požadavky, které je oprávněn vidět na základě svých <a href="../../alvao-service-desk/implementation/services/service-roles">rolí ve službách</a> a příp. dalších nastavení. Úpravou pohledu <a href="../../alvao-asset-management/implementation/customization/database#V_dbo.vHdTicketPersonRead_Custom">vHdTicketPersonRead_Custom</a> v databázi můžete uživatelům přidělit oprávnění vidět další požadavky nad rámec jejich rolí ve službách.
    </p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Úprava pohledu vyžaduje dobrou znalost jazyka SQL a <a href="../../alvao-asset-management/implementation/customization/database">Databáze Alvao</a>. Neodborná úprava pohledu může vést ke zpomalení aplikace příp. k její nefunkčnosti nebo i k poškození dat.
    </div>

</asp:Content>

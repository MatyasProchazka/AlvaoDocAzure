<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Duplicitní požadavky</h1>

    <p>Pokud se v systému vyskytnou dva nebo více stejných požadavků od stejného žadatele, můžete tyto požadavky sloučit do jednoho z duplicitních požadavků pomocí příkazu <a href="../../list-of-windows/alvao-webapp/requests">Sloučit požadavky</a>. Informace z duplicitních požadavků (protokoly, vazby  na jiné požadavky a objekty, trackery) se přenesou do jednoho nástupce a ostatní duplicitní požadavky se trvale odstraní. </p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Sloučení požadavků je nevratná operace    </div>

    <p>Při slučování požadavků postupujte následovně:</p>

    <ol>
        <li>Na stránce <a href="../../list-of-windows/alvao-webapp/requests">Požadavky</a> vyberte požadavky, které chcete sloučit, a použijte příkaz <strong>Sloučit požadavky</strong>.</li>
        <li>Ve formuláři pro <a href="../../list-of-windows/alvao-webapp/requests/request/merge-request">sloučení požadavků</a> zkontrolujte zadané informace a v případě potřeby je upravte.</li>
        <li>Potvrďte obsah formuláře tlačítkem <strong>OK</strong>.</li>
    </ol>

</asp:Content>

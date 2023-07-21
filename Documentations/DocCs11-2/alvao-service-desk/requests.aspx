<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Požadavky</h1>

    <p><em>Požadavek</em> v ALVAO Service Desk je obecný termín, který představuje doprovodný záznam (procesní entitu) v jakémkoli procesu, např.:</p>
    <ul>
        <li><ul>
            <li>o technické vybavení</li>
            <li>o zaměstnanecký benefit</li>
            <li>o dovolenou</li>
            <li>atd.</li>
        </ul>
        </li>
        <li>událost - např. porucha tiskárny, rozbité světlo na chodbě apod.</li>
        <li>projekt</li>
        <li>úkol</li>
        <li>návrh na zlepšení</li>
        <li>požadavek o změnu</li>
        <li>problém</li>
        <li>atd.</li>
    </ul>
    <p>Požadavky najdete v aplikaci na stránce <a href="../list-of-windows/alvao-webapp/requests">Požadavky</a>, která obsahuje <a href="../list-of-windows/alvao-webapp/requests/table-of-requests">tabulku požadavků</a>.</p>
    <p>Každý požadavek je zařazen právě do jedné <a href="implementation/services">služby</a>, která mimo jiné určuje postup řešení požadavku, viz <a href="implementation/services/processes">proces</a>.</p>


</asp:Content>

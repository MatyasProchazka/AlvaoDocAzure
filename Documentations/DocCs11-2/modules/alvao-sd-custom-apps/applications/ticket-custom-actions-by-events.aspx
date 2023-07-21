<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Automatické akce na základě událostí požadavku</h1>

    <p>Automatické akce lze spustit v následujících případech:</p>
    <ul>
        <li>Změna hodnoty položky požadavku (vlastní/systémová)</li>
        <li>Vytvoření nového požadavku</li>
        <li>Vytvoření nové události</li>
        <li>Úprava události</li>
        <li>Odstranění události</li>
        <li>Čtení nové zprávy ze schránky služby</li>
    </ul>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Špatně definovaná automatická akce může nenávratně poškodit databázi Alvao, proto ji vždy vytvořte a otestujte na kopii databáze v testovacím prostředí    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Předpokladem pro vytvoření funkční automatizované akce je dobrá znalost <a href="../../../alvao-asset-management/implementation/customization/database">databáze Alvao</a> a adresy <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a></div>

</asp:Content>

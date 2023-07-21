<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Vlastní příkazy</h1>

    <p>
        Vlastní příkaz lze použít k provádění vlastních operací nebo operací s externími systémy. Vlastní příkaz lze spustit <a href="custom-commands/ticket-custom-commands">pouze</a> pro <a href="custom-commands/ticket-custom-commands">jeden vybraný požadavek</a> nebo <a href="custom-commands/general-custom-commands">bez vazby na požadavek</a>. Pro jeho zobrazení uživateli a spuštění je možné definovat podmínky, které řídí například roli přihlášeného uživatele, stav požadavku nebo hodnotu jeho položek    </p>

    <p>Pomocí příkazu lze provést posloupnost akcí v rámci ALVAO Service Desk nebo otevřít adresu URL ve výchozím prohlížeči uživatele.</p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Špatně definovaný vlastní příkaz může nevratně poškodit databázi Alvao, proto příkazy vždy vytvářejte a testujte na kopii databáze v testovacím prostředí    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Předpokladem pro vytvoření funkčního vlastního příkazu je dobrá znalost <a href="../../../alvao-asset-management/implementation/customization/database">databáze Alvao</a> a <a href="../../../alvao-asset-management/implementation/customization/alvao-api">rozhraní Alvao.API</a>   </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip: Chcete-li zobrazit vlastní příkaz v jazyce, který uživatel preferuje, vytvořte pro každý jazyk jeden příkaz. Poté v podmínce zobrazení zkontrolujte, zda se preferovaný jazyk uživatele shoduje s jazykem příkazu.</div>
    </div>

</asp:Content>

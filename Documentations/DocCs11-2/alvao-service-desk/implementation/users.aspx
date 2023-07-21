<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Správa uživatelů</h1>
    <p>
        Viz část <a href="../../alvao-asset-management/implementation/users">Správa uživatelů</a> v knize Asset Management ALVAO    </p>

    <h2>Změna jména uživatele</h2>
    <p>Pokud je uživatel v systému Alvao přejmenován (např. změna příjmení po svatbě), jeho stávající požadavky si v poli <em>Žadatel</em> ponechají předchozí jméno, pod kterým byly tyto požadavky původně vytvořeny. Na stránce <a href="../../list-of-windows/alvao-webapp/requests">Požadavky</a> v zobrazení <em>Mé požadavky</em> jsou požadavky filtrovány podle aktuálního uživatelského jména (filtr <em>@me</em> ), takže uživatel v tomto zobrazení nevidí své starší požadavky. Pokud chcete, aby uživatel tyto požadavky viděl, vyberte na stránce <a href="../../list-of-windows/alvao-webapp/requests">Požadavky</a> všechny požadavky od žadatele s původním jménem a pomocí příkazu <strong>Upravit</strong> hromadně změňte jméno žadatele.</p>

</asp:Content>

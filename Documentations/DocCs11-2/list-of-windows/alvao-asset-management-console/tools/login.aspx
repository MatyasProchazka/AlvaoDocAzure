<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Přihlášení</h1>
    <p>Přihlaste se do aplikace AM Console.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Použít ověření Azure Active Directory</strong> - vyberte, zda se chcete přihlásit pomocí uživatelského účtu Azure Active Directory. Tato možnost je k dispozici pouze v případě, že je tento způsob ověřování povolen správcem.</li>
        <li><strong>Použít uživatelské jméno a heslo</strong>    <ul>
                <li><strong>Uživatelské jméno</strong> - zadejte své uživatelské jméno. Pokud se chcete přihlásit do jiné <a href="../../alvao-webapp/administration/settings/activedirectory">domény služby Active Directory</a>, než je výchozí, použijte zápis <em>domain\login</em> nebo <em>login@domain</em>.</li>
                <li><strong>Heslo</strong> - zadejte své heslo.</li>
            </ul>
        </li>
        <li><strong>Keep me signed in</strong> - pokud tuto možnost povolíte, při příštím spuštění aplikace budete automaticky přihlášeni. Pokud budete nečinní déle než 7 dní, trvalé přihlášení vyprší.</li>
    </ul>

    </asp:Content>

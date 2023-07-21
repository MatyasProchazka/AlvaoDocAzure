<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Ověřování uživatelů v aplikacích</h1>

    <p>Když se uživatel přihlásí do aplikací Alvao, jeho identita se ověří jedním z následujících způsobů:</p>

    <ul>
        <li>
           <a href="../../../alvao-asset-management/implementation/users/authentication/aad/provisioning/object-attribute-mapping">Ověřování Azure Active Directory (AAD</a> ) - uživatelské účty jsou primárně uloženy v Azure Active Directory (cloud)       </li>
        <li>
           <a href="../../../alvao-asset-management/implementation/users/authentication/ad">Ověřování Active Directory (AD</a> ) - uživatelské účty jsou primárně uloženy v Active Directory (on-premises)        </li>
        <li>
           <a href="../../../alvao-asset-management/implementation/users/authentication/alvao">Ověřování Alvao</a> - uživatelské účty jsou primárně uloženy v databázi Alvao.  </li>
    </ul>

    <p>Každý uživatel je ověřován pouze jedním způsobem. Ověřování AD lze kombinovat s ověřováním Alvao, tj. někteří uživatelé se mohou ověřovat pomocí AD a někteří pomocí Alvao. Ověřování AAD nelze kombinovat, tj. pokud je povoleno ověřování AAD, všichni uživatelé se musí ověřit pomocí AAD.</p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud je v systému Alvao více uživatelů se stejným uživatelským jménem, žádný z nich se nebude moci přihlásit. To platí například pro uživatele s uživatelským jménem s názvem domény (např. contoso.com\james) a bez názvu domény (james).<br />
    </div>


</asp:Content>

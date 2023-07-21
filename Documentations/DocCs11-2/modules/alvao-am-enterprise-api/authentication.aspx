<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Ověřování</h1>
    <p>Pro přístup k rozhraní REST API můžete použít ověřování Azure Active Directory (AAD) nebo základní ověřování.</p>
    <p>Oprávnění pro operace rozhraní REST API se řídí oprávněními přistupujícího uživatele v systému Alvao.</p>

    <h2>Azure Active Directory</h2>
    <p>Nejprve v systému Alvao nastavte <a href="../../alvao-asset-management/implementation/users/authentication/aad">ověřování uživatele Azure Active Directory</a>.</p>

    <h3>Aplikace s přihlášeným uživatelem (jménem)</h3>
    <p>Aby bylo možné přistupovat k rozhraní REST API z interaktivní aplikace, do které jsou přihlášeni uživatelé (např. webová nebo mobilní aplikace), je třeba do systému Alvao importovat účty těchto uživatelů. Pro ověření přístupu proveďte následující kroky:</p>
    <ol>
        <li>Ověřte uživatele pomocí <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/authentication-flows-app-scenarios#scenarios-and-supported-authentication-flows">příslušného tokenu</a> do aplikace AAD, kterou jste přiřadili k aplikaci Alvao.</li>
        <li>Získaný token předejte rozhraní REST API v hlavičce HTTP <i>Authorization: bearer &lt;token&gt;</i>.</li>
    </ol>

    <h3>Neinteraktivní aplikace</h3>
    <p>Pro přístup z aplikací nebo skriptů, které nepracují s přihlášeným uživatelem (např. integrační skript), proveďte následující:</p>
    <ol>
        <li>V aplikaci AAD spojené s ALVAO <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-optional-claims#configuring-optional-claims">přidejte</a> deklaraci <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-optional-claims#configuring-optional-claims"> <i>idtype</i></a> (claim) k tokenu.</li>
        <li>V AAD zaregistrujte novou aplikaci pro aplikaci, která bude komunikovat s rozhraním REST API.</li>
        <li>Vytvořte nového uživatele v <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">aplikaci Alvao WebApp - Administrace - Uživatelé</a>. Zapněte možnost <i>Účet aplikace</i>, vyberte typ <i>aplikace AAD</i> a přidejte údaje o aplikaci zaregistrované v předchozím kroku. Poté přiřaďte účtu potřebná oprávnění v systému ALVAO. </li>
        <li>Získejte token pro aplikaci z kroku 2 pomocí <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/scenario-daemon-acquire-token?tabs=dotnetClient">toku Client credentials</a> (nastavte jako scope: <i>&lt;Identifikace klienta aplikace ALVAO&gt;/.default</i>) a předejte jej rozhraní REST API v hlavičce HTTP <i>Authorization: bearer &lt;token&gt;</i>.</li>
    </ol>

    <h2>Základní ověření</h2>
    <p>Základní ověření je určeno pouze pro přístup z neinteraktivních aplikací.</p>
    <ol>
        <li>Vytvořte nového uživatele v <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">aplikaci Alvao WebApp - Administrace - Uživatelé</a>. Zapněte možnost <i>Účet aplikace</i> a vyberte typ <i>Ostatní aplikace</i>. Poté <a href="../../list-of-windows/alvao-webapp/administration/users/detail/password">nastavte heslo účtu</a> a přiřaďte požadovaná oprávnění v aplikaci ALVAO. </li>
        <li>Předejte uživatelské jméno a heslo rozhraní REST API prostřednictvím standardní hlavičky <a href="https://datatracker.ietf.org/doc/html/rfc7617">základního ověření</a>.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se vám podařilo získat přístup k RENAX, použijte funkci RENAX:</div>
        Doporučujeme používat bezpečnější způsob ověřování prostřednictvím AAD   </div>
</asp:Content>

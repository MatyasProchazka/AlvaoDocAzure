<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nastavení Service Desk</h1>
    Nejprve ve vaší společnosti zřiďte jednotné kontaktní místo, které bude spravovat ALVAO Service Desk. Toto centrální sběrné místo bude spravovat nejen požadavky, které na IT oddělení směřují od uživatelů, ale také všechny interní úkoly IT a také úkoly vyplývající ze systémů, které monitorují kritické podnikové technologie. Deklarujte to v interních dokumentech nebo směrnicích, jako např:<ul>
        <li>Centrální telefonní číslo pro sběr požadavků a závad</li>
        <li>Hlavní e-mailová adresa pro hlášení závad</li>
        <li>Webová aplikace pro hlášení závad a zadávání požadavků</li>
    </ul>
   <img src="service-desk/service_desk_channels.png" />

    <h2>Příklad interní směrnice</h2>
    Interní směrnice k této problematice by měla obsahovat následující informace    <ol>
        <li>Uživatel IT hlásí všechny své požadavky na Service Desk.</li>
        <li>Service Desk je k dispozici na adrese:<ul>
            <li>Service Service je k dispozici na: Telefon: ................: xxx xxx: +xxx xxx xxx</li>
            <li>E-mail: service-desk@firma.cz</li>
            <li>Web: https://server/servicedesk </li>
        </ul>
        </li>
        <li>V ALVAO WebApp může uživatel průběžně sledovat informace o stavu řešení požadavku.</li>
        <li>O vyřešení požadavku je uživatel informován telefonicky nebo e-mailem.</li>
        <li>Řešitelé postupují podle postupů řešení uvedených v aplikaci Service Desk.</li>
        <li>Požadavky a chyby mimo systém se neměří a nelze je reklamovat.</li>
    </ol>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Zástupce uživatelů</h1>
    <p>Uživatele může v době jeho nepřítomnosti v práci zastupovat jiný uživatel. <strong>Zástupce</strong> automaticky přebírá od zastupovaného uživatele následující role:</p>
    <ul>
        <li>schvalování</li>
        <li>Hlavní řešitel</li>
    </ul>
    <p>Zástupce přebírá role pouze v době <strong>nepřítomnosti</strong> zástupce.</p>
    <p>Každý uživatel si může předem naplánovat svou nepřítomnost a vybrat zástupce v <strong>aplikaci ALVAO WebApp - Uživatelské menu - Nastavení</strong> - <a href="../../../list-of-windows/alvao-webapp/settings/out-of-office">Nepřítomnost</a>. Zde také každý vidí uživatele, které zastupuje, a může jim v případě nepřítomnosti zapnout absenci. Správce systému může jednotlivým uživatelům nastavit přítomnost a zastupování na stránce <strong>Správa</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/users">Uživatelé</a>.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Role zastupovaného je delegována pouze na přímého zástupce. Pokud je zástupce také nepřítomen, role zastupovaného se na uživatele, který zastupuje nepřítomného zástupce, nepřenáší    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Zástupce nepřítomného žadatele není oprávněn schvalovat požadavek žadatele jeho jménem (viz schvalovací krok <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/approval-scheme/detail/approval-scheme-item">Žadatel</a>)    </div>

</asp:Content>

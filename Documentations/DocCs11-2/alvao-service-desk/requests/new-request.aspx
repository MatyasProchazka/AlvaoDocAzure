<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vytvoření požadavku</h1>
    <p>Požadavek lze vytvořit jedním z následujících způsobů:</p>
    <ul>
        <li>Žadatel odešle požadavek e-mailem na adresu jedné ze služeb Service Desk, kde se automaticky načte do databáze.</li>
        <li>Žadatel zadá požadavek prostřednictvím webové aplikace ALVAO.</li>
        <li>Žadatel zašle svůj požadavek e-mailem řešiteli. Žadatel požadavku obdrží zprávu v aplikaci MS Outlook a přepošle ji do schránky služby k automatickému načtení nebo ji načte sám, viz načtení <a href="new-request-outlook">požadavku z aplikace MS Outlook</a>.</li>
        <li>Žadatel sdělí svůj požadavek řešiteli osobně nebo <a href="new-request-call-centre">telefonicky</a>. Ten požadavek zapíše ručně, viz <a href="new-request-manual">Ruční zadání nového požadavku</a>.</li>
    </ul>
    <p>
        Pokud je požadavek ve stavu, kdy je po vytvoření definováno automatické schválení, vstoupí požadavek do schvalování. Po dokončení schvalování se stav požadavku automaticky změní na konečný stav definovaný ve stavu schvalování.<br />
        Pokud požadavek není třeba schválit, zobrazí se hlavním řešitelům v tabulce požadavků v zobrazení <strong>Nepřiřazeno</strong>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud předložená zpráva nemá předmět, použije se pro název požadavku zástupný text "(bez názvu)" a pro zprávu o původu požadavku "(bez předmětu)". Uvozovky v textech zástupných symbolů nejsou součástí řetězců    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při načítání servisní schránky systém nevytváří nové požadavky ze zpráv, které se týkají nedoručitelnosti dříve odeslané zprávy z oddělení Service Desk.<br />
        Nedoručitelné zprávy (MAILER-DAEMONS) z MS Exchange a Office365 jsou automaticky ignorovány. Tyto zprávy jsou identifikovány na základě odesílatele.<br />
        Chcete-li upravit seznam e-mailových adres, které budou systémem ignorovány, spusťte tento dotaz SQL na databázi Alvao:<br />
        <br />
       <span class="style1">UPDATE dbo.tProperty SET sPropertyValue = 'address1@domena;address2;address3@domena' WHERE sProperty = 'MailerDaemons'</span><br />
        <br />

        Možné způsoby zápisu adresy:<br />
        <ul>
            <li>'address@domain' - systém ignoruje konkrétní adresu (např. MAILER-DAEMON@MAILER-DAEMON)</li>
            <li>'address' - systém ignoruje všechny adresy, jejichž levá strana (až po znak "@") se rovná zadanému řetězci (např. postmaster)</li>
        </ul>
    </div>



</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 { font-family: "Courier New", Courier, monospace; } </style>

</asp:Content>
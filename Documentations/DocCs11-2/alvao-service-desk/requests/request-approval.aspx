<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Schvalování požadavku</h1>

    <p>Požadavek může podléhat schválení odpovědnými osobami, tj. schvalovateli. V závislosti na aktuálním stavu mohou požadavek schvalovat různí schvalovatelé. Konkrétní způsob schvalování je určen <a href="../implementation/services/processes">nastavením procesů</a> definovaným správcem systému.</p>
    <h2>Zahájení schvalování</h2>
    <p>Schvalování lze spustit v závislosti na nastavení systému:</p>
    <ul>
        <li>Automaticky - při vytvoření požadavku nebo při přechodu požadavku do určitých dalších stavů je požadavek automaticky přiřazen konkrétním schvalovatelům.</li>
        <li>Ručně</li>
    </ul>
    <p>Pokud jste řešitelem požadavku (nebo jiným členem týmu pro řešení služeb) a požadavek je ve stavu ručně spuštěného schvalování, můžete schvalování zahájit příkazem <a href="../../list-of-windows/alvao-webapp/requests/request/have-approved">Nechat schválit</a>, ve kterém vyberete schvalovatele a přidáte komentář s dalšími informacemi, pokyny apod.</p>
    <h2>Schválit nebo zamítnout</h2>
    <p>Pokud jste schvalovatelem požadavku, obdržíte e-mailové oznámení, jakmile bude schvalování zahájeno. V oznámení najdete potřebné pokyny a odkaz na formulář pro <a href="../../list-of-windows/alvao-webapp/requests/request/approve-or-reject">schválení nebo zamítnutí</a>.</p>
    <p>V případě vaší <a href="../../list-of-windows/alvao-webapp/settings/out-of-office">nepřítomnosti</a> může požadavek schválit místo vás váš zástupce.</p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění: V případě, že se jedná o schvalování, můžete se obrátit na úřad pro schvalování:</div>
        Při schvalování e-mailem, kdy tlačítka <em>Approve (schválit)</em> a <em>Deny (zamítnout)</em> v oznámení o zahájení schvalování otevřou novou zprávu pro odeslání, nikdy neměňte vyplněného příjemce nebo předmět v odeslané zprávě. V opačném případě nebude zpráva automaticky zpracována    </div>

    <h2>Vyhodnocení schválení</h2>
    <p>Jste-li řešitelem požadavku (nebo jiným členem týmu pro řešení služeb), můžete na kartě <a href="../../list-of-windows/alvao-webapp/requests/request">Schvalování</a> přehledně sledovat a spravovat průběh schvalovacího procesu.</p>
    <p>Po dokončení schvalování můžete pomocí příkazu <i>Přejít na stav</i> přepnout požadavek do dalšího stavu podle výsledku schvalování, např. do stavu <i>Realizováno</i>, pokud je požadavek schválen, do stavu <i>Zamítnuto</i>, pokud je požadavek zamítnut.</p>
    <p>Systém lze také nakonfigurovat tak, aby se po dokončení schvalování požadavek automaticky přesunula do dalšího stavu podle výsledku schválení.</p>

    <h2>Vypršení platnosti a zrušení</h2>
    <p>Pro schvalování lze nastavit časové období, během kterého musí schvalovatel požadavek buď schválit, nebo zamítnout. Po uplynutí této doby schválení zaniká. Schvalovatel pak obdrží oznámení o vypršení platnosti.</p>
    <p>Řešitel (nebo kterýkoli jiný člen řešitelského týmu služby) může také zrušit probíhající schválení na kartě <a href="../../list-of-windows/alvao-webapp/requests/request">Schválení</a> pomocí příkazu <em>Zrušit schválení</em>. Schvalovatel pak obdrží oznámení, že schválení bylo zrušeno.</p>
</asp:Content>

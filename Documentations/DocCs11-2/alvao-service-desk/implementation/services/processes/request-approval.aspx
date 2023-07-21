<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Schvalování požadavků</h1>

    <p>Požadavky mohou podléhat schválení odpovědnými osobami. Schvalování jednotlivých stavů požadavků můžete povolit v <em>aplikaci WebApp - Správa - Service Desk - Procesy - Proces řešení - Upravit</em> - sekce <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">Schvalování</a> - výběrem možnosti <em>Z tohoto stavu lze přesouvat - Do stavů na základě výsledku schvalování</em>.</p>
    <p>Zahájení a průběh schvalování požadavků z pohledu řešitele a schvalovatele viz <a href="../../../requests/request-approval">Schvalování požadavků</a>.</p>
    <h2>Schvalovací schémata</h2>
    <p>Schvalování požadavků lze automatizovat podle určitého schvalovacího schématu. Schémata schvalování můžete upravovat v <em>aplikaci ALVAO WebApp - Administration - Service Desk</em> - <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/approval-scheme">Schémata schvalování</a>.</p>
    <h2>Schvalování e-mailem</h2>

    <p>Schvalovatelé mohou pohodlně schvalovat a zamítat požadavky prostřednictvím e-mailu, aniž by museli používat aplikaci Alvao. Stačí vložit <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/approval-message-template">šablonu schvalovací zprávy</a> do pole <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/service/message-template">[$ApprovalByEmail$]</a>.</p>


    <h2>Případy použití schvalování</h2>
    <p>Možnosti schvalování v různých fázích životního cyklu požadavku si ukážeme na příkladu jednoduchého procesu <em>řízení změn</em> v systému ERP. Žadatel předloží požadavek, který prochází následujícími stavy: </p>
    <table>
        <thead>
            <tr>
                <th>Stav požadavku</th>
                <th>Schválení</th>
            </tr>
        </thead>
        <tr>
            <td>Schválení požadavku</td>
            <td><strong>Stav schválení -</strong> při vytvoření nového požadavku se automaticky spustí schvalování podle schématu <em>Schvalování požadavků na změnu v ERP</em> (krok 1 = přímý nadřízený žadatele, krok 2 = <em>skupina klíčových uživatelů ERP</em>). Po schválení se požadavek automaticky přesune do následujícího stavu. V případě zamítnutí přejde do stavu <em>Uzavřeno</em>.<br />
                <br />
                Poznámka: Podobným způsobem začínají i požadavky v procesech správy požadavků. Tam však požadavek obvykle schvaluje pouze přímý nadřízený žadatele.</td>
        </tr>
        <tr>
            <td>Analýza a návrh řešení</td>
            <td>Analýza a vytvoření návrhu řešení. Nejedná se o stav schválení.</td>
        </tr>
        <tr>
            <td>Schválení návrhu řešení</td>
            <td><strong>Stav schválení</strong> - Řešitel požadavku příkazem <em>Provést schválení</em> předá návrh ke schválení příslušným osobám odpovídajícím povaze změny. Po schválení řešitel přepne požadavek do následujícího stavu. Po zamítnutí se vrátí do stavu <em>Analýza a návrh řešení</em>.</td>
        </tr>
        <tr>
            <td>Implementace</td>
            <td>Realizace změny podle návrhu. Nejedná se o stav schválení.</td>
        </tr>
        <tr>
            <td>Vyřešeno</td>
            <td><strong>Stav Schválení</strong> - když požadavek vstoupí do tohoto stavu, automaticky vyvolá schválení podle schématu <em>Schválení žadatelem</em> (1 krok = žadatel).<br />
                Pokud Žadatel realizaci schválí, požadavek se automaticky přesune do stavu <em>Uzavřeno</em>. V opačném případě se vrátí do stavu <em>Realizace</em>.<br />
                Ve stavu <em>Vyřešeno</em> je možnost <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">automatického přechodu do stavu Uzavřeno</a> zakázána.<br />

                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Poznámka:</div>
                Během schvalovacího procesu nezíská žadatel žádná další oprávnění k práci s požadavkem nad rámec schválení nebo zamítnutí           </td>
        </tr>
        <tr>
            <td>Uzavřeno</td>
            <td>Požadavek vyřešen a uzavřen. Nejedná se o stav schválení.</td>
        </tr>
    </table>
    <p>Proces může obsahovat souvislou posloupnost stavů schválení, např. stav <em>Schválení vedoucího oddělení</em> následovaný stavem <em>Schválení finančního ředitele</em>. Schválení vedoucím oddělení může automaticky převést požadavek do dalšího stavu, který může automaticky vyvolat schválení finančním ředitelem.</p>
    <p>
        Pokud používáte vícestupňové schéma schvalování, ve kterém se v každém kroku mění předmět schválení (například finanční ředitel v jednom kroku schvaluje cenu a v dalším kroku vedoucí vývoje schvaluje obsah programu), doporučujeme takové schvalování rozdělit do více procesních stavů, přičemž pro každý předmět schválení bude určen jeden stav. Ve zprávě pro schvalovatele pak můžete předmět schvalování v jednotlivých krocích přesněji popsat    </p>

    <h2>Zasílání oznámení o schválení</h2>
    <ul>
        <li><b>Oznámení schvalovatelům o novém požadavku o schválení</b> - pokud je zahájen krok schvalování, budou schvalovatelé informováni o novém požadavku o schválení. Oznámení obsahuje zprávu pro schvalovatele vygenerovanou podle <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/approval-message-template">šablony</a>, kterou můžete změnit v nastavení stavu schválení. </li>
        <li><b>Oznámení schvalovatelům o dokončení kroku schvalování</b> - Pokud je krok schvalování ukončen schválením nebo zamítnutím jedním z aktuálních schvalovatelů, je ostatním odesláno oznámení. Pokud je schvalovací krok zrušen nebo vyprší jeho platnost, je oznámení zasláno všem aktuálním schvalovatelům.</li>
        <li><b>Oznámení řešitelům</b> - Řešitelům je zasláno oznámení, pokud je požadavek schválen a pokud je schválení zrušeno nebo vyprší jeho platnost. Oznámení o zamítnutí je řešitelům zasláno pouze v případě, že zamítnutím není požadavek vyřešen. Pokud požadavek nemá řešitele, jsou tato oznámení zasílána <a href="../service-roles">hlavním řešitelům</a> služby nebo všem členům aktuální <a href="../service-roles">skupiny řešitelů</a>.</li>
    </ul>

    <h2>Alternativní způsoby schvalování</h2>
    <p>Schvalování lze také řešit jednoduše tak, že řešitel odešle požadavek na schválení schvalovateli nebo více schvalovatelům pomocí příkazu <em>Odeslat zprávu</em>. Schvalovatelé na zprávu odpoví a odpověď je zaznamenána v komunikaci požadavku. Řešitel pak odpovědi vyhodnotí a na základě odpovědí přepne požadavek do stavu odpovídajícího schválení nebo zamítnutí.</p>
    <p>Další možností je přiřadit požadavek schvalovateli pomocí příkazu <em>Assign (Přiřadit)</em>. Schvalovatel se pak stane řešitelem požadavku (schvalovatel musí být řešitelem služby) a poté přepne požadavek do stavu schválení nebo zamítnutí. Tento způsob &quot;schvalování&quot; lze použít např. pro závěrečnou kontrolu kvality změn, kde je schvalovatelem tester.</p>

</asp:Content>

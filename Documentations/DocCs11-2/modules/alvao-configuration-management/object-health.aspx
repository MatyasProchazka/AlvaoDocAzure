<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Stav objektu</h1>
    <p>Stav objektu udává, zda je zařízení v současné době plně funkční, nebo částečně či zcela nefunkční. Stav objektu se určuje na základě existence <a href="../../alvao-service-desk/requests">požadavků</a> spojených s objektem. Proto je pro jeho vyhodnocení nutný také produkt <a href="../../alvao-service-desk">ALVAO Service Desk</a>.</p>
    <p>Stav <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process/create-process">objektu</a> ovlivňují pouze otevřené požadavky, které představují incidenty nebo změny, tj. požadavky ve službách s <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process/create-process">procesy, které ovlivňují stav objektu</a>. Zdraví se vyhodnocuje pouze u objektů, jejichž typ je uveden v nabídce <b>WebApp - Administration - Service Desk - Services - Edit</b> - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/objects">Objects</a> - <b>Show on objects of type</b>.</p>

    <p>Zdraví může nabývat následujících stavů:</p>

    <table>
        <thead>
            <tr>
                <th><i>Ikona</i></th>
                <th><em>Popis</em></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <img src="crit_incident.png" /></td>
                <td>Zařízení je nefunkční. Zařízení má alespoň jeden otevřený kritický incident, tj. SLA incidentu má <a href="../../list-of-windows/alvao-webapp/administration/service-desk/sla/create-sla">index kvality</a> 5 nebo vyšší.</td>
            </tr>
            <tr>
                <td>
                    <img src="linked_incident.png" align="middle" /></td>
                <td>Zařízení nemusí být plně funkční. Jiné zařízení, na kterém závisí stav tohoto zařízení, má alespoň jeden otevřený závažný incident. Závislost na jiném zařízení je způsobena existencí směrového propojení mezi objekty se zapnutou volbou <em>WebApp - Administration - Asset Management - Link Types between Objects</em> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/link-types/new">New link type</a> ( <em>Webová aplikace - Správa - Asset Management - Typy propojení mezi objekty</em> ) -<em> Stav koncového objektu je ovlivněn stavem výchozího objektu.</em></td>
            </tr>
            <tr>
                <td>
                    <img src="incident.png" /></td>
                <td>Zařízení nemusí být plně funkční. Objekt má alespoň jeden otevřený drobný incident, to znamená, že SLA incidentu má index kvality nižší než 5.</td>
            </tr>
            <tr>
                <td>
                    <img src="change.png" /></td>
                <td>Zařízení nemusí být plně funkční. Zařízení má alespoň jednu otevřenou změnu.</td>
            </tr>
            <tr>
                <td>
                    <img src="ok.png" /></td>
                <td>Objekt je funkční.</td>
            </tr>
        </tbody>
    </table>
    <p>Jednotlivé stavy se vyhodnocují v pořadí, v jakém jsou uvedeny v tabulce, a jako stav objektu se zobrazí první stav, jehož podmínky jsou splněny. Při výpočtu se nezohledňují <a href="../../alvao-service-desk/implementation/services/service-roles">oprávnění</a> uživatele v požadavcích. Uživatel tedy vidí stav vyhodnocený podle všech relevantních požadavků, včetně těch, které nemá oprávnění vidět.</p>

    <p>Informace o stavu objektu se zobrazují v:</p>
    <ul>
        <li>WebApp - Objects - <a href="../../list-of-windows/alvao-webapp/objects/object">Object</a>(Webová aplikace - Objekty - <a href="../../list-of-windows/alvao-webapp/objects/object">Objekt</a>)       <ul>
                <li><a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">Schéma odkazů</a></li>
            </ul>
        </li>
        <li>WebApp - Request (Webová aplikace - Požadavek)           <ul>
                <li>Záložka<a href="../../list-of-windows/alvao-webapp/requests/request">Request</a> - Object</li>
                <li><a href="../../list-of-windows/alvao-webapp/requests/new-request">Nový požadavek</a></li>
            </ul>
        </li>
    </ul>
</asp:Content>

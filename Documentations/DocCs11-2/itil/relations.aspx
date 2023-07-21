<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Vztahy</h1>
    <p>Pro sledování vztahů mezi záznamy jednotlivých procesů ITIL doporučujeme používat následující typy vztahů:</p>
   <img src="relations/itil.png" width="693" height="335" />
    <p>Pro "jednoduchý" ITIL doporučujeme zaznamenávat všechny vztahy jako "související"</p>
    <p>Pokud chcete ITIL implementovat důsledněji, doporučujeme používat následující typy vztahů:</p>
    <table>
        <thead>
            <tr>
                <th>ITIL </th>
                <th>Typ vztahu</th>
                <th>Poznámka</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Incident - podobný incident (nadřízený - podřízený)</td>
                <td>duplicitní - duplicitní</td>
                <td>
                    <p class="style2">
                       <span style="mso-bidi-font-family: calibri">První incident je označen jako "duplicitní". Všechny ostatní incidenty související se stejnou závadou jsou duplicitní<o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td>Incident - problém/známá chyba</td>
                <td>související</td>
                <td>
                    <p class="style2">
                       <span style="mso-bidi-font-family: calibri">Incident se může vyskytnout k existujícímu problému. Problém může vzniknout na základě existujícího incidentu. Z tohoto důvodu není vhodné používat "předcházející - následující</span>"               </p>
                </td>
            </tr>
            <tr>
                <td>Incident - požadavek na službu</td>
                <td>předcházející - následující</td>
                <td>
                    <p class="style2">
                       <span style="mso-bidi-font-family: Calibri">Servisní požadavek je vytvořen a vychází z incidentu (SR zpracovává incident</span>)         </p>
                </td>
            </tr>
            <tr>
                <td>Incident - RFC (N:N) - RFC je vyvolán incidentem.</td>
                <td>předcházející - následující</td>
                <td>
                    <p class="style2">
                       <span style="mso-bidi-font-family: calibri">RFC řeší incident</span>       </p>
                </td>
            </tr>
            <tr>
                <td>RFC - Incident (vyvolaný)</td>
                <td>předcházející - následující</td>
                <td>
                    <p class="style2">
                       <span style="mso-bidi-font-family: calibri">Incident způsobený špatně provedenou změnou</span>      </p>
                </td>
            </tr>
            <tr>
                <td>Problém - RFC</td>
                <td>předcházející - následující</td>
                <td>
                    <p class="style2">
                       <span style="mso-bidi-font-family: calibri">Problém je řešen prostřednictvím RFC</span>  </p>
                </td>
            </tr>
        </tbody>
    </table>


</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 { border-collapse: collapse; font-size: 10.0pt; font-family: Calibri, sans-serif; border: 1.0pt solid #52A8FF; } </style>

</asp:Content>

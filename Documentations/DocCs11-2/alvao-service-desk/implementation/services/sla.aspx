<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>SLA</h1>

    <p>SLA (Service Level Agreement) definuje kvalitu, s jakou je služba poskytována, a to zejména pomocí dvou parametrů:</p>
    <ul>
        <li>Doba do první odezvy</li>
        <li>Doba do vyřešení požadavku</li>
    </ul>
    <p>SLA lze spravovat v <strong>aplikaci ALVAO WebApp - Administration - Service Desk</strong> <strong>-</strong> <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/sla">SLA</a>. Následně v aplikaci <strong>ALVAO WebApp - Administration - Service Desk - Services - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/sla">Edit - SLA</a> přiřaďte SLA ke službě Requesters.</p>

    <p>Součástí SLA jsou také následující funkce:</p>
    <ul>
        <li><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/sla/detail/notice">E-mailové upozornění na</a> nevyřešené požadavky, blížící se termíny řešení nebo nečinnost řešitelů požadavků nebo žadatelů.</li>
        <li>Pozastavení SLA při <a href="../../requests/wait-for-response">čekání na řešitele požadavků</a> nebo v určitých <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">stavech požadavků</a>.</li>
    </ul>

    <p>Pokud změníte parametry SLA, změna se okamžitě promítne zpět do všech existujících požadavků s daným SLA, včetně uzavřených požadavků. Pokud chcete změnu aplikovat pouze na nově vytvořené požadavky, vytvořte nejprve nové SLA podle nových podmínek, přiřaďte je žadatelům ve vybraných službách a staré SLA z žadatelů odstraňte. Do názvu odstraněných SLA je vhodné doplnit datum platnosti, například "Z2 - střední (platnost do 14.4.2019)".</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se vám podařilo získat certifikát SLA, můžete jej použít i v případě, že se vám podařilo získat certifikát:</div>
        SLA můžete definovat i ve <a href="../multi-languages">více jazycích</a>   </div>

</asp:Content>

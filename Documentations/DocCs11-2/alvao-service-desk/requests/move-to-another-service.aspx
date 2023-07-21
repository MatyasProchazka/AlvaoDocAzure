<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Přesunutí požadavku do jiné služby</h1>

    <p>Může se stát, že požadavek byl odeslán do nesprávné služby a je třeba jej přesunout jinam. V takovém případě použijte příkaz <a href="../../list-of-windows/alvao-webapp/requests">Požadavky</a> - <strong>Přesunout do jiné služby</strong>.</p>
    <p>Pokud má požadavek <a href="../implementation/services/sla">SLA,</a> které žadatel nemůže v cílové službě použít, SLA požadavku se automaticky změní na SLA s nejbližším indexem kvality, který má žadatel k dispozici, nebo na SLA odpovídající aktuálním hodnotám <a href="../implementation/services/impact-urgency">dopadu a naléhavosti</a>. V důsledku změny SLA se může automaticky změnit i termín vyřešení požadavku.</p>


</asp:Content>

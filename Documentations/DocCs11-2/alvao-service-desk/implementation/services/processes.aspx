<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Procesy</h1>
    <p>Proces definuje životní cyklus požadavku, tj. posloupnost stavů požadavku, jako je &quot;Nový&quot;, &quot;Řešení&quot;, &quot;Vyřešený&quot; atd.</p>
    <p>Procesy lze editovat v aplikaci <strong>WebApp - Správa - Service Desk</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail">Procesy</a>.</p>
    <p>
        Proces můžete přiřadit jedné nebo více <a href="service-tree">službám</a>   </p>
    <h2 id="request_object_links">Vazby mezi požadavky a objekty</h2>
    <p>Pokud chcete v procesu používat <a href="../../request-object-links">vazby mezi požadavky a objekty</a>, přidejte <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/request-items">položku Požadavku</a> <strong>Objekty</strong>.</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: 
            Do šablon objektů, které mohou být navázány na požadavky v procesu <a href="../../../itil/incident-management">Incident Management</a>, přidejte <a href="../../../alvao-asset-management/implementation/object-templates">vlastnosti</a> <strong>Výchozí služba incidentů</strong> a <strong>Výchozí SLA incidentů</strong>. Při vytváření nového požadavku z objektu se potom ve formuláři <a href="../../../list-of-windows/alvao-webapp/requests/new-request">Nový požadavek</a> automaticky nastaví služba a SLA odpovídající hodnotám těchto vlastností v daném objektu.

        </div> </div>

</asp:Content>

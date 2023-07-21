<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Kreslení odkazů v aplikaci MS Visio</h1>
    <p>Kromě kreslení <a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">diagramu odkazů</a> přímo v aplikaci WebApp můžete diagram odkazů kreslit také v aplikaci MS Visio:</p>
    <ol>
        <li>V <b>konzole ALVAO Asset Management Console</b> vyberte ve stromu objektů objekt, jehož vazby  chcete vizualizovat.</li>
        <li>V hlavní nabídce vyberte <b>Objekt - Kreslit vazby  v MS Visio</b>.</li>
        <li>Zobrazí se nový dokument MS Visio s nakreslenými vazby .<br />
            Vygenerovaný dokument obsahuje celý strom závislostí vybraného objektu.</li>
    </ol>

    <h2>Utilita GenerateNodeRelationshipDiagram</h2>
    <p>Tato utilita slouží ke spuštění kreslení diagramu vazeb z příkazového řádku.</p>

    <h4>Funkce</h4>
    <p>
        Vygeneruje diagram závislostí objektů v aplikaci MS Visio (vzhledem k objektu, který je zadán identifikačním číslem).<br />
        Tento nástroj funguje pouze v případě, že je nainstalován program MS Visio. 
    </p>

    <h4>Syntaxe příkazového řádku</h4>

    <p>
       <b>GenerateNodeRelationshipDiagram.exe /conn</b> <i>&quot;connection string&quot;</i> <b>/nodeId</b> &lt;objektové id<b>&gt;[/mode &lt;režim&gt;</b> ]    </p>

    <h5>Struktura parametrů</h5>

    <table>
        <thead>
            <tr>
                <th>Přepínač</th>
                <th>Popis</th>
                <th>Povinné</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/conn &lt;řetězec&gt;</td>
                <td>Nastavení připojení k DB.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>/nodeId &lt;objectId&gt;</td>
                <td>ID počátečního objektu, ze kterého se začnou vazby  vykreslovat (intNodeId).<br />
                    Poznámka: ID objektu můžete zjistit např. v AM Console na kartě Podřazené objekty zobrazením sloupce "NodeId"        </td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>/mode &lt;mode&gt;</td>
                <td>Režim vykreslování              <ul>
                        <li>ImpactDiagram (výchozí) - diagram dopadu; rekurzivně vykreslí výchozí objekt (viz nodeId) a všechny objekty, které tento objekt používají nebo které tento objekt používají (typ vazby používá - je použit).   Vykresluje také objekty, které jsou přímo spojeny s výchozím objektem (typ vazby related to, pouze přímé vazby ).</li>
                        <li>ContextDiagram - vykreslí počáteční objekt (viz nodeId) a všechny objekty, které s ním přímo souvisejí (všechny typy vazeb, včetně odkazu rodič-dítě ve stromu objektů). Dále zobrazí všechny vazby mezi těmito objekty.</li>
                    </ul>
                </td>
                <td>Ne</td>
            </tr>
        </tbody>
    </table>

</asp:Content>

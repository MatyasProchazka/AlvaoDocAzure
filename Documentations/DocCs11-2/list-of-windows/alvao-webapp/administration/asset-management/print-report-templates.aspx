<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Tisk šablon zpráv</h1>
    <p>
        Na této stránce můžete spravovat <a href="../../../../alvao-asset-management/implementation/customization/reports">šablony tiskových sestav</a>, které obvykle zahrnují <a href="../../../../alvao-asset-management/documents/transfer-protocols">šablony přenosových sestav</a>   </p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Příkazový panel</strong>    <ul>
                <li><strong>Načíst šablonu</strong> - nahraje novou šablonu. Vyberte všechny soubory, které tvoří šablonu, tj. 3 základní soubory s příponami rep, htm a xsl a další soubory, obvykle css, gif, png, jpg atd.</li>
                <li><strong>Upravit</strong> - <a href="print-report-templates/edit-template">úprava</a> vybrané šablony.</li>
                <li><strong>Odstranit</strong> - odstranění vybrané šablony.</li>
            </ul>
        </li>
        <li><strong>Tabulka šablon tiskových sestav</strong> - obsahuje všechny vytvořené šablony tiskových sestav a jejich vybrané atributy. <a href="../../../../alvao-asset-management/working-with-tables">Tabulku si</a> můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud používáte šablony v různých jazycích, uveďte do názvů nebo popisů šablon zkratku jazyka, ve kterém jsou napsány. Pomocí ní pak můžete vytvořit <a href="../../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> pro každý používaný jazyk a v případě potřeby je sdílet s celým týmem. 
    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Soubory šablon můžete obnovit z instalačního adresáře konzoly Asset Management Console ze složky <em>Csy/ReportTemplates</em> nebo ze složek pro jiné jazyky. 
    </div>

</asp:Content>

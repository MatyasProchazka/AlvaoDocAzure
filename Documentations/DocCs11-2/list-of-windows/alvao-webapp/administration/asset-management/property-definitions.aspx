<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Definice vlastností</h1>
    <p>Na této stránce můžete spravovat <a href="../../../../alvao-asset-management/implementation/object-properties">definice vlastností</a>.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Příkazový panel</strong>    <ul>
                <li><a href="property-definitions/create-property">Nová vlastnost</a> - vytvoření nové definice vlastnosti.</li>
                <li><strong>Upravit</strong> - úprava vybrané definice vlastnosti. Nabídka obsahuje stejné příkazy jako bloky na panelu <a href="property-definitions/detail">Definice vlastností</a>.</li>
                <li><strong>Odstranit</strong> - odstranění vybraných definic vlastností.</li>
            </ul>
        </li>
        <li><strong>Tabulka</strong> - obsahuje všechny definice vlastností. Můžete <a href="../../../../alvao-asset-management/working-with-tables">si ji upravit</a> podle potřeby.</li>
        <li><strong>Vybraná definice vlastnosti</strong> - po výběru záznamu v tabulce se vpravo zobrazí tento <a href="property-definitions/detail">panel s</a> informacemi o vybraném záznamu.</li>

    </ul>

</asp:Content>

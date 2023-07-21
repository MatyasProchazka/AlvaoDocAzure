<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Akce</h1>
    <p>
        Nabídka Akce slouží k zobrazení objektů vybraných v <a href="../../../alvao-asset-management/searching/list-of-objects">Seznamu objektů</a> v <a href="../../alvao-asset-management-console">hlavním okně Konzoly AM</a></p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Vybrat ve stromu</strong> - vybere aktuálně vybraný objekt ve stromu objektů.</li>
        <li><strong>Označit ve stromu</strong> - označí aktuálně vybraný objekt ve stromu objektů.</li>
        <li>
           <a href="../object/choose-object">Přesunout</a> - přesun vybraného objektu pod jiný objekt. Pokud vyberete objekt typu počítač, budete dotázáni, zda chcete přesunout pouze počítače nebo počítače včetně sestav, viz <a href="../objects/move_options">Možnosti přesunu</a>       </li>
    </ul>
</asp:Content>

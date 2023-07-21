<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Název objektu</h1>
    <p>Název objektu lze zadat buď ručně, nebo může být automaticky vygenerován na základě aktuálních hodnot jedné nebo více vlastností objektu. Pokud objekt obsahuje alespoň jednu vlastnost, která určuje název objektu, pak je název generován automaticky a nelze jej ručně změnit. Chcete-li v tomto případě změnit název, musíte změnit hodnotu příslušné vlastnosti.</p>
    <p>Zda vlastnost určuje název objektu, případně jakou část názvu určuje, můžete nastavit v <a href="../implementation/object-templates">šabloně objektu</a> na kartě <a href="../../list-of-windows/alvao-asset-management-console/tab-view/properties">Vlastnosti</a> příkazem <b>Upravit</b>.</p>
    <p>Pokud se název objektu skládá z několika vlastností, pak se název vytvoří spojením jejich hodnot do jednoho řetězce tak, že se hodnoty jednotlivých vlastností vloží v pořadí a oddělí se čárkou. Pokud je hodnota vlastnosti definující název objektu prázdná, bude tato vlastnost z názvu objektu vynechána (aby se nezobrazovala čárka navíc).</p>
    <p>Názvy objektů (osob, počítačů a organizační struktury) lze také získat ze služby Active Directory. Pokud přejmenujete objekt v systému AD, bude automaticky přejmenován i v systému Asset Management.</p>


</asp:Content>

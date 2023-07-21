<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Objekty a vlastnosti</h1>
    <p>Každé registrované aktivum je ve správě aktiv ALVAO reprezentováno konkrétním <strong>objektem</strong>. Jednotlivé objekty jsou uspořádány do <strong>stromu objektů</strong>, který naleznete v <a href="../list-of-windows/alvao-asset-management-console">hlavním okně AM Console</a> nebo ve <strong>WebApp-</strong> <a href="../list-of-windows/alvao-webapp/objects">Objects</a>.</p>
    <p>
        Každý objekt je definován typem, názvem a lze mu nastavit ikonu. Ve stromu objektů jsou viditelné pouze ikona a název objektu. Typ objektu určuje, jaký objekt reálného světa objekt představuje (např. počítač, monitor, tiskárna, ...) Stisknutím pravého tlačítka myši na objektu otevřete místní nabídku. Příkaz <strong>Upravit</strong> otevře na obrazovce okno <a href="../list-of-windows/alvao-asset-management-console/edit/object/general">Objekt</a>, kde můžete změnit jeho základní informace    </p>
    <p>
        Každý objekt lze dále popsat jednou nebo více vlastnostmi. Například objekt <em>Uživatel</em> je popsán vlastnostmi <em>Osobní číslo</em> a <em>Uživatel</em> (tj. jméno a příjmení uživatele) atd. V <strong>AM Console</strong> na kartě <a href="../list-of-windows/alvao-asset-management-console/tab-view/properties">Properties (Vlastnosti)</a> nebo v záložce <strong>WebApp - Objects</strong> - <a href="../list-of-windows/alvao-webapp/objects/object/properties">Properties</a> ( <strong>Webová aplikace - Objekty</strong> - <a href="../list-of-windows/alvao-webapp/objects/object/properties">Vlastnosti</a> ) najdete seznam vlastností objektu, který je aktuálně vybrán ve stromu. Pod seznamem vlastností jsou další záložky, které seznam filtrují podle různých hledisek, podrobně popsaných v <a href="../list-of-windows/alvao-asset-management-console">hlavním okně konzoly AM</a>. V seznamu lze také zobrazit vlastnosti, které objekt dědí od nadřazeného objektu ve stromu, jak je podrobně popsáno v části <a href="implementation/tree-design#inheritance">Dědičnost</a>   </p>

</asp:Content>

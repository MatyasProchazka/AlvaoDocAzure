<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Přidání objektu do stromu</h1>
    <ol>
        <li>Ve stromu klikněte pravým tlačítkem myši na objekt, ke kterému chcete přidat nový objekt. Pokud chcete objekt vložit do kořene stromu, klikněte do oblasti, kde nejsou žádné položky stromu.</li>
        <li>V místní nabídce vyberte možnost <strong>Nový objekt</strong>.</li>
        <li>Na obrazovce se otevře okno <strong>Nový objekt - výběr šablony objektu</strong> na kartě <a href="../../list-of-windows/alvao-asset-management-console/edit/new-object/object-template">Šablony objektů</a>, které obsahuje nabídku šablon objektů. V okně vyberte typ objektu, který chcete vložit do stromu, a stiskněte tlačítko <strong>OK</strong>.</li>
        <li>Pokud se pro nový objekt uchovává historie (jeho šablona je tak nastavena) nebo pokud je vložen do objektu, který historii má, otevře se na obrazovce okno <a href="../../list-of-windows/alvao-asset-management-console/date-time"> Datum a čas</a>, ve kterém zadáte datum a čas vytvoření objektu. Pokud objekt přidáváte do databáze dodatečně, můžete datum a čas změnit.</li>
        <li>Nový objekt se zobrazí ve stromu. Po výběru příkazu <strong>Upravit</strong> z místní nabídky objektu se na obrazovce <a href="../../list-of-windows/alvao-asset-management-console/edit/object/general">Objekt</a> otevře okno, ve kterém můžete změnit jeho ikonu, název (pokud není název generován některou z vlastností) a případně i typ. Seznam vlastností objektu můžete upravovat na kartě <strong>Vlastnosti</strong> v <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a>.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: Pokud je objekt v seznamu objektů, můžete jej zobrazit na obrazovce Objekt:</div>
        Pokud v okně <a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a> chcete zadat datum a čas, zapnete-li možnost <em>Nezobrazovat toto okno příště a použijete aktuální datum a čas</em>, okno se příště neotevře. Můžete ji opět povolit pomocí <em>Nápověda - Nastavení</em>, kde na kartě <em>Obecné</em> vypnete volbu <em>Vytvářet záznamy historie s aktuálním datem a časem</em>   </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Nabídku šablon objektů můžete upravit a rozšířit o vlastní objekty, viz <a href="../implementation/object-templates">Šablony objektů</a>   </div>
</asp:Content>

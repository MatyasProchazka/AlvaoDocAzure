<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Seskupení</h1>

    <p>
        Funkce seskupování je užitečná, pokud chcete zobrazit řádky seskupené podle určitých kritérií.<br />
        Chcete-li zobrazit seznam položek seskupených podle určitého sloupce, klikněte pravým tlačítkem myši na záhlaví tohoto sloupce a z nabídky vyberte možnost <strong>Seskupit</strong>.<br />
        Vlevo od tabulky se zobrazí strom. V kořeni stromu bude položka &quot;Vše&quot; a pod ní budou uvedeny jednotlivé hodnoty sloupců, na jejichž základě bylo seskupení provedeno. Pokud vyberete hodnotu, v tabulce se zobrazí pouze položky, které ji v daném sloupci obsahují.<br />
        Pomocí příkazu <strong>Nový strom</strong> můžete vytvořit další strom pro seskupení podle jiného sloupce. Pokud jsou vytvořeny alespoň dva stromy, zobrazí se v záhlaví tabulky karty pro přepínání stromů    </p>

</asp:Content>

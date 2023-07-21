<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Znalostní báze</h1>
    <p>
        Pokud chcete změnit počet aktuálních servisních zpráv zobrazených v katalogu služeb, upravte tabulku <strong>tProperty</strong> v databázi Alvao a vložte nebo upravte řádek, kde hodnota ve sloupci <strong>sProperty</strong> je: <strong>ServiceDesk.ServiceCatalog.NewsCount</strong> a do sloupce <strong>iPropertyValue</strong> vložte počet aktuálních zobrazených servisních zpráv. Ve výchozím nastavení se zobrazují 3 aktuální servisní zprávy    </p>
    <p>
        Přidání řádku do databáze:<br />
        vložte <font face="Consolas" size="2" color="#0000ff">do</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#008080">sProperty</font><font face="Consolas" size="2" color="#808080">,</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font><font face="Consolas" size="2" color="#808080">)</font> <font face="Consolas" size="2" color="#0000ff">hodnoty</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalog.NewsCount'</font><font face="Consolas" size="2" color="#808080">,</font> 3<font face="Consolas" size="2" color="#808080">)</font></p>
    <p>
        Úprava řádku v databázi:<br />
       <font face="Consolas" size="2" color="#ff00ff">aktualizovat</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#0000ff">set</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> 3 <font face="Consolas" size="2" color="#0000ff">where</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalogue.NewsCount</font><font face="Consolas" size="2" color="#808080">'</font>   </p>
    <p>
        Pokud chcete změnit počet zobrazených znalostí pro službu v katalogu služeb, upravte tabulku <strong>tProperty</strong> v databázi Alvao a vložte, resp. upravte řádek, kde ve sloupci <strong>sProperty</strong> bude hodnota: <strong>ServiceDesk.ServiceCatalog.KnowledgeCount</strong> a do sloupce <strong>iPropertyValue</strong> vložte počet zobrazených znalostí služby. Ve výchozím nastavení je zobrazeno 5 servisních znalostí    </p>
    <p>
        Přidání řádku do databáze:<br />
        vložte <font face="Consolas" size="2" color="#0000ff">do</font> <font face="Consolas" size="2" color="#008080">tProperty</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#008080">sProperty</font><font face="Consolas" size="2" color="#808080">,</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font><font face="Consolas" size="2" color="#808080">)</font> <font face="Consolas" size="2" color="#0000ff">hodnoty</font> <font face="Consolas" size="2" color="#808080">(</font></font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalog.KnowledgeCount'</font><font face="Consolas" size="2" color="#808080">,</font> 3<font face="Consolas" size="2" color="#808080">)</font></p>
    <p>
        Úprava řádku v databázi:<br />
       <font face="Consolas" size="2" color="#ff00ff">aktualizovat</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#0000ff">set</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> 3 <font face="Consolas" size="2" color="#0000ff">where</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalogue.KnowledgeCount</font><font face="Consolas" size="2" color="#808080">'</font>   </p>
</asp:Content>


<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vlastní způsob detekce</h1>

    <p>Zadejte nový řádek do tabulky <i>tblDetectMethod</i> a do sloupce <i>Name</i> zadejte název nového způsobu detekce.  Do sloupce <i>Vlastní1</i> zadejte jedinečný identifikátor (podle něj pak bude externí utilita hledat požadavky na detekci se správným způsobem detekce).</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Ve sloupci <i>BehaviorId</i> ponechte hodnotu 0 </div>

</asp:Content>

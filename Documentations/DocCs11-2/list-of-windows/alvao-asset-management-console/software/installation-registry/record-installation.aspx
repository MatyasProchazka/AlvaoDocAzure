<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nová instalace - počítače</h1>
    <p>V levé tabulce<strong>(nabídka Počítač</strong>) jsou zobrazeny všechny dostupné počítače v inventáři. V pravé tabulce<strong>(Vybrané počítače</strong>) přesuňte počítače, na které chcete zapsat záznam o instalaci.</p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Tabulky lze <a href="../../../../alvao-asset-management/working-with-tables">přizpůsobit</a>   </div>

    <p>Možnosti: V nabídce je možné nastavit, zda se má počítač používat v počítači:</p>
    <ul>
        <li><strong>&gt;</strong> - přesunout počítač (vybraný v levé tabulce) do pravé tabulky.</li>
        <li><strong>&lt;&lt;</strong> - odebere počítač vybraný v pravé tabulce (přesune jej zpět do levé tabulky).</li>
    </ul>
</asp:Content>

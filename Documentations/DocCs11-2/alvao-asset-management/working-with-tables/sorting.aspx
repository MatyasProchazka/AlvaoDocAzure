<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Řazení hodnot</h1>

    <p>
        Hodnoty v tabulkách můžete řadit podle jednoho nebo více sloupců. Po kliknutí myší na záhlaví sloupce se obsah tabulky seřadí podle hodnot v tomto sloupci. Když na záhlaví sloupce kliknete znovu, řádky se seřadí v opačném pořadí.<br />
        Tabulku můžete seřadit podle více sloupců následujícím způsobem    </p>
    <ol>
        <li>Klikněte myší na záhlaví prvního sloupce, podle kterého chcete seřadit.</li>
        <li>Stiskněte a podržte <span class="key">klávesu Ctrl</span> nebo <span class="key">Shift</span> a postupně klikejte myší na záhlaví dalších sloupců.</li>
    </ol>
    <p>
        Pokud kliknete myší na záhlaví sloupce, který je již seřazen, a zároveň držíte stisknutou klávesu <span class="key">Ctrl</span> nebo <span class="key">Shift</span>, sloupec se seřadí v opačném pořadí.<br />
        V záhlaví prvního sloupce se zobrazí jedna větší šipka směřující dolů nebo nahoru, podle toho, zda je seřazen vzestupně nebo sestupně    </p>

   <img src="status.png" alt="Sorting, first column" />

    <p>V ostatních sloupcích označují pořadí dvě menší šipky.</p>

   <img src="computer.png" alt="Sorting, additional columns" />

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Odstranění hodnot</h1>

    <p>Položky v tabulkách lze odstranit několika způsoby, přičemž pouze některé z nich mohou být podporovány na různých místech programu.</p>
    <ol>
        <li>Nabídka: <strong>V nabídce: Úpravy - Odstranit</strong></li>
        <li>Kontextová nabídka: Klepnutím pravým tlačítkem myši na položku otevřete kontextovou nabídku a vyberte z ní příkaz <strong>Odstranit</strong> nebo <strong>Tabulka - Odstranit</strong>.</li>
        <li>Pomocí klávesy <span class="key">Delete</span>.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Některé tabulky v ServiceDesku umožňují smazané položky znovu vytvořit. Smazané položky v tabulce musíte nejprve zobrazit pomocí příkazu <strong>Zobrazit - Smazané</strong>. Poté vyberte položky, které chcete obnovit, a použijte příkaz <strong>Upravit - Obnovit smazané</strong>. Správce může smazat již smazané položky, to způsobí <strong>definitivní smazání</strong> položky (nevratné).</p>
    </div>

</asp:Content>

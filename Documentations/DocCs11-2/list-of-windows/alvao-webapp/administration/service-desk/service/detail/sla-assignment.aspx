<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Přiřazení SLA</h1>
    <p>
        V tomto formuláři přiřaďte uživateli nebo skupině určité <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a> pro upravovanou službu    </p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>SLA</strong> - vyberte SLA z nabídky.</li>
        <li><strong>Vybrat osobu nebo skupinu</strong> - zadejte alespoň část jména uživatele nebo skupiny a vyberte uživatele nebo skupinu z rozbalovací nabídky. Tím se vybraný uživatel nebo skupina přidá do seznamu pod vstupní pole. Poté můžete postupně vybrat několik uživatelů a skupin nebo pomocí tlačítka [...] vybrat několik položek z tabulky najednou (obsah tabulky můžete <a href="../../../../../../alvao-asset-management/working-with-tables">přizpůsobit</a> ).</li>
        <li><strong>Výchozí SLA</strong> - zaškrtnutím této možnosti nastavíte tuto SLA jako výchozí pro uživatele, skupiny a službu. Při zadání nového požadavku prostřednictvím formuláře <a href="../../../../requests/new-request">Nový požadavek</a> se formulář vyplní výchozí SLA pro daného žadatele a službu. V případě, že existuje více výchozích SLA, je vybráno to s nejvyšším <a href="../../sla/create-sla">indexem kvality</a>.</li>
    </ul>

</asp:Content>

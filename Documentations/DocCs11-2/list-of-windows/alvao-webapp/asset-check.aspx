<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Kontrola majetku</h1>
    <p>Na této stránce můžete podle pokynů správce majetku zkontrolovat svěřený majetek při inventarizační kontrole.</p>

    <ul>
        <li><strong>Uložit</strong> - uložte a odešlete zprávu o majetku.</li>
        <li><strong>Tabulka</strong>      <ul>
                <li>Sloupec<strong>Nalezeno</strong> - vyberte jednu z ikon podle toho, zda je majetek ve vašem vlastnictví, nebo ne.</li>
                <li>Sloupec<strong>Zpráva</strong> - kliknutím na ikonu tužky můžete přidávat nebo upravovat zprávy pro správce majetku.</li>
            </ul>
        </li>

    </ul>

</asp:Content>

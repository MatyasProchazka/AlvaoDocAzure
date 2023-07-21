<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Přihlásit se</h1>
    <p>Na této stránce vidíte souhrn všech událostí v protokolech požadavků (viz záložka Požadavky - <a href="requests/request">Komunikace</a> ), které jste dnes vytvořili. Chcete-li zobrazit starší události nebo události vytvořené jinými uživateli, vytvořte v tabulce nové <a href="../../alvao-asset-management/working-with-tables">zobrazení</a>.</p>
    <p>Stránka se zobrazuje pouze členům řešitelských týmů služby.</p>
    <p>možnosti: V případě potřeby můžete zadat požadavek na vyřízení požadavku na vyřízení požadavku:</p>
    <ul>
        <li><strong>Příkazový panel</strong><ul>
            <li><a href="requests/new-request">Nový požadavek</a> - vytvoření nového požadavku</li>
            <li><a href="diary/edit">Upravit</a> - úprava vybrané události</li>
            <li><a href="requests/request/message">Odpovědět</a> - odeslání e-mailové zprávy jako reakce na vybranou událost v tabulce<ul>
                <li><a href="requests/request/message">Přeposlat</a> - přeposlání vybrané události e-mailem</li>
            </ul>
            </li>
            <li><strong>...</strong><ul>
                <li><strong>Odstranit</strong> - odstranění vybrané události. Událost se již nebude normálně zobrazovat, ale zůstane uložena v databázi. Pro zobrazení smazaných událostí v tabulce použijte příkaz v nabídce zobrazení - <em>Možnosti zobrazení</em> - <em>Zobrazit smazané</em>.</li>
            </ul>
            </li>
            <li><strong>Značka požadavku vybrané události</strong> - nabídka příkazů požadavku, v jejichž protokolu je vybraná událost uložena.</li>
        </ul>
        </li>
        <li><strong>Tabulka událostí</strong> - tabulka zobrazuje všechny události ze všech požadavků, které máte právo zobrazit. <a href="../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby  <div class="note">
     <div class="icon"></div>
      <div class="title">Poznámka:</div>
      <br />
      V tabulce jsou zobrazeny činnosti vytvořené za poslední 3 měsíce. Starší aktivity jsou automaticky přesunuty do archivu. Archiv můžete zobrazit pomocí příkazu v nabídce zobrazení - <em>Možnosti zobrazení</em> - <em>Zobrazit archiv</em></div>
        </li>

        <li><strong>Vybraná událost</strong> - vyberte událost v tabulce a vybraná událost se zobrazí v pravé části stránky.</li>
    </ul>


</asp:Content>

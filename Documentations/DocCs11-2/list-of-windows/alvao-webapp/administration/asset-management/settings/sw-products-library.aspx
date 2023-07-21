<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Knihovna SW produktů</h1>


    <p>Na této stránce zadejte nastavení pro automatické aktualizace knihovny softwarových produktů.</p>


    <p>Možnosti:</p>
    <ul>
        <li><strong>Automatická aktualizace</strong>          <ul>
                <li><strong>Stáhnout z internetu</strong> - zapněte, pokud má Alvao automaticky stahovat nejnovější knihovnu softwarových produktů z internetu.<ul>
                    <li><strong>Období ověřování dostupnosti knihovny (ve dnech</strong> ) - zadejte ve dnech, jak často se má kontrolovat, zda je na webu výrobce k dispozici nová knihovna sw produktů.</li>
                </ul>
                </li>
                <li><strong>Načíst ze zálohy</strong> - tuto možnost aktualizace knihovny doporučujeme použít, pokud aplikace Alvao Service nemá přístup k internetu. Pak pravidelně jednou týdně stáhněte soubor <a href="https://www.alvao.com/downloads/swlib2.swl">https://www.alvao.com/downloads/swlib2.swl</a> z webu a uložte jej do složky na disku serveru.<p>Cestu ke složce zadejte tak, aby odpovídala struktuře disku a složek z pohledu nakonfigurovaného serveru.</p>
                </li>
                <li><strong>Neaktualizovat</strong> - Alvao nebude knihovnu automaticky aktualizovat.</li>
            </ul>
        </li>
        <li><strong>Automaticky vyhodnocovat stávající detekce na základě nové knihovny</strong> - Povolte, pokud chcete automaticky vyhodnocovat stávající detekce softwaru na základě nové knihovny softwarových produktů.</li>
        <li><strong>Odesílat požadavky na změny v knihovně softwarových produktů přes internet</strong> - zapněte, pokud chcete, aby Alvao odesílalo požadavky na změny do knihovny softwarových produktů.<br />
            Požadavky na změny zahrnují <em>požadavky na přidání nového produktu</em>nebo <em>požadavky s nerozpoznaným softwarem</em>.</li>
        <li id="l"><strong>Automaticky vyhledávat nerozpoznaný software</strong>- zapněte, pokud má Alvao jednou týdně prohledávat celou databázi kvůli nerozpoznanému softwaru.<br />
            Nerozpoznané záznamy se uloží, a pokud odešlete požadavky na změnu sw knihovny produktů (možnost výše), budou odeslány specialistům technické podpory ALVAO, kteří nerozpoznaný software přidají do standardní knihovny        <div class="note">
                   <div class="icon"></div>
                    <div class="title">Poznámka:</div>
                    Automatické vyhledávání nerozpoznaného softwaru se provede pouze v případě, že knihovna v databázi není starší než jeden měsíc       </div>
        </li>
        <li><strong>Zřeknutí se odpovědnosti za zasílání informací o nerozpoznaném a novém softwaru</strong>       <ul>
                <li><strong>Pokud potřebujete další informace, můžete mě kontaktovat e-mailem</strong> - vyberte, zda vás v případě potřeby mohou kontaktovat pracovníci technické podpory, a vyplňte e-mailový kontakt.</li>
                <li><strong>Nepřeji si být kontaktován. Chci zasílat údaje anonymně</strong> - vyberte, zda chcete údaje zasílat anonymně. Naši specialisté vás nebudou moci kontaktovat, takže pokud některé nerozpoznané výrobky nebude možné identifikovat podle vámi zaslaných záznamů, výrobek nebude zařazen do standardní knihovny.</li>
            </ul>
        </li>
    </ul>

</asp:Content>




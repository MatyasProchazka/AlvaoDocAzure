<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Předat</h1>
    <p>Tento formulář umožňuje přiřadit vybrané požadavky k řešení konkrétnímu řešiteli nebo celé skupině řešitelů.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Skupina řešitelů</strong> - zadejte alespoň část názvu <a href="../../../../alvao-service-desk/implementation/services/service-roles">skupiny řešitelů</a> a poté vyberte skupinu z rozbalovací nabídky.</li>
        <li><strong>Přidat do fronty požadavků bez řešitele</strong> - tuto možnost vyberte, pokud chcete požadavek vrátit <a href="../../../../alvao-service-desk/implementation/services/service-roles">hlavním řešitelům</a> služby (pokud je požadavek přiřazen skupině <em>Hlavní</em> řešitel) nebo všem řešitelům jiné skupiny řešitelů (pokud je požadavek přiřazen jiné skupině řešitelů než <em>Hlavní</em>).</li>
        <li><strong>Předat řešiteli</strong> - tuto možnost vyberte, pokud chcete požadavek přiřadit konkrétnímu řešiteli. Pak zadejte alespoň část názvu řešitele a vyberte řešitele z rozbalovací nabídky.</li>
        <li><strong>Změnit stav požadavku na</strong> - pokud chcete požadavek před předáním řešiteli přepnout do jiného stavu, vyberte tento stav z rozevírací nabídky.</li>
        <li><strong>Zpráva pro řešitele</strong> - v případě potřeby napište zprávu pro řešitele, která bude zaslána v e-mailovém oznámení o předání požadavku k řešení. Pokud jste změnili stav požadavku, je zpráva předvyplněna pokyny pro řešitele podle <em>postupu řešení</em>.</li>
        <li><strong>Přílohy</strong> - seznam příloh zprávy pro řešitele<ul>
            <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete připojit jako přílohu.</li>
        </ul>
        </li>
        <li><strong>Zpráva o nákladech</strong> - v případě potřeby <a href="../../../../alvao-service-desk/requests/work-time">seznam pracovního času</a> stráveného řešením požadavku.</li>

    </ul>

</asp:Content>

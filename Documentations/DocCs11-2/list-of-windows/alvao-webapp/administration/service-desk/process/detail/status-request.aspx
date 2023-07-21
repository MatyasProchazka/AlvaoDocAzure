<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Stav nového požadavku</h1>
    <p>Tento formulář slouží k vytvoření nového stavu požadavku.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Obecné</strong>      <ul>
                <li><strong>Název statusu</strong> - zadejte název statusu.</li>
                <li><strong>Popis stavu pro žadatele</strong> - zadejte popis stavu, který se zobrazí žadateli o požadavek.</li>
                <li><strong>Pokyny pro řešitele</strong> - zadejte pokyny pro řešitele. Tyto pokyny se řešiteli zobrazí v požadavku na kartě <em>Průběh řešení</em>. Je-li požadavek předán řešiteli se současnou změnou stavu, instrukce pro nový stav se automaticky zapíší do zprávy pro nového řešitele. </li>
                <li><strong>Povinné položky</strong> - seznam datových položek požadavku, které musí být před přechodem do tohoto stavu vyplněny.<ul>
                    <li><strong>Upravit</strong> - otevření <a href="status-request/required-items">okna pro</a> výběr požadovaných položek.</li>
                </ul>
                </li>
            </ul>
        </li>
        <li><a href="status-request/behavior">Chování</a> - pro další nastavení stavu požadavku.</li>
        <li><strong>Další</strong>      <ul>
                <li><strong>Vlastní pole</strong> - zde jsou umístěna vaše vlastní pole přidaná do tohoto procesu.</li>
            </ul>
        </li>

    </ul>

</asp:Content>

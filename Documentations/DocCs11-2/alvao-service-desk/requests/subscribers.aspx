<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Sledování požadavku</h1>
    <p>Požadavek mohou sledovat ostatní uživatelé nebo jiné osoby, které nemusí mít přístup do systému Alvao. Sledovaným osobám jsou automaticky zasílána následující e-mailová oznámení:</p>
    <ul>
        <li>Oznámení o příchozí zprávě s požadavkem</li>
        <li>Oznámení o změně data vyřešení požadavku</li>
        <li>Oznámení o vyřešení požadavku</li>
        <li>Oznámení o znovuotevření požadavku</li>
    </ul>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Oznámení je zasíláno sledovanému subjektu o každé příchozí zprávě pro požadavek, včetně zpráv, které nejsou adresovány žadateli. Sledovatelé proto dostávají více informací (e-mailů) než žadatel o požadavek    </div>


    <div class="note">
        <div class="icon">


            <p></p>
        </div>
        <div class="title">Poznámka:</div>
        Následovníkům, kteří jsou přímými příjemci zprávy, již není zasíláno oznámení o příchozí zprávě. Stejně tak není zasíláno oznámení sledujícímu, jehož akce má být základem pro zaslání oznámení    </div>

    <h2>Vypnutí sledování</h2>
    <p>Chcete-li sledovat požadavek, použijte příkaz <strong>Sledovat požadavek</strong> na stránce požadavku. Žadatel požadavku nemůže sledování požadavku sám zapnout.</p>
    <p>Pokud chcete ke sledování požadavku přihlásit někoho dalšího, klikněte na stránce požadavku na kartě <strong>Obecné</strong> - <strong>Sledovatelé</strong> na odkaz <strong>Přidat sledovatele</strong> a postupně zadejte jména sledovatelů. Sledovatelé musí být registrovanými uživateli s vyplněným e-mailem, ale nemusí mít přístup k aplikacím Alvao, tj. nemusí mít přidělené uživatelské jméno. Sledovatelé, kteří mají přístup k aplikacím Alvao, automaticky získávají právo zobrazit požadavek a zaznamenat události do svého protokolu.</p>
    <p>Sledování mohou povolit pouze členové řešitelského týmu, čtenáři služby nebo aktuální sledovatelé požadavku.</p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je požadavek vyřízen, můžete si jej nechat vyřídit:</div>
        Pokud chcete vidět, které požadavky sledujete v <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">tabulce požadavků</a>, zobrazte sloupec <em>Sledování požadavků</em>, podle kterého můžete požadavky také filtrovat    </div>

    <h2>Vypnuté sledování</h2>
    <p>
        Chcete-li vypnout sledování požadavku, použijte možnost <strong>Zastavit sledování požadavku</strong>. Sledování můžete vypnout také pomocí odkazu uvedeného na konci každého oznámení    </p>
    <p>Pokud chcete vypnout sledování pro někoho jiného, použijte kartu <strong>Obecné - Sledování</strong> a odstraňte jej ze <strong>seznamu sledování</strong>.</p>



    <h2>Obsah oznámení</h2>
    <p>Sledujícím je zasíláno stejné oznámení jako žadatelům, ale na konci je přidán odkaz pro zakázání sledování. V systémových oznámeních je výraz &quot;vaše požadavek&quot; nahrazen výrazem &quot;požadavek&quot;, protože se obvykle nejedná o požadavek sledujícího.</p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Ve vlastních oznámeních není slovní spojení &quot;váš požadavek&quot; nahrazeno, takže text může být pro sledujícího matoucí    </div>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Naplánovat</h1>


    <p>Tento formulář slouží k naplánování automatického pravidelného vytváření nových požadavků podle vybrané <a href="../../../alvao-service-desk/requests/ticket-templates">šablony požadavku</a>.</p>


    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        V <a href="../ticket-templates">tabulce šablon</a> zobrazte sloupec <em>Plánování</em>, který obsahuje plánované datum vytvoření dalšího požadavku. Po změně plánování se hodnota ve sloupci zobrazí do 24 hodin    </div>


    <p>Automaticky vytvořené požadavky jsou propojeny vazbou typu <em>předchází před - následuje po</em>. Při každé změně plánování se řetězec vazeb přeruší.</p>


    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud se požadavky nevytvářejí tak, jak byste očekávali, může to být způsobeno nějakou změnou v nastavení oprávnění apod. Chyby zjištěné při vytváření požadavků najdete v protokolu událostí <i>služby Alvao</i>   </div>


    <p>
        Možnosti: V případě, že se jedná o požadavek, která je v souladu se zákonem o ochraně osobních údajů, je možné ji odeslat    </p>
    <ul>
        <li><strong>Automaticky vytvářet požadavky podle této šablony</strong> - povolte, pokud chcete automaticky vytvářet požadavky podle vybrané šablony požadavků. Zakázáním této možnosti dočasně zakážete nastavené vytváření požadavků.</li>
        <li><strong>Zadavatel požadavku</strong> - zadejte alespoň část jména zadavatele požadavku, pro kterého se mají automaticky vytvářet požadavky, a poté vyberte zadavatele z nabídky.</li>
        <li><strong>Opakovat</strong> - vyberte frekvenci vytváření požadavků a zadejte další časové parametry.  
        <ul>
            <li><strong>Denně</strong>     <ul>
                <li><strong>Období opakování (dny</strong> ) - zadejte období ve dnech. Např. 1 znamená, že nový požadavek bude vytvořen každý den, 2 znamená, že bude vytvořen každý druhý den atd. </li>
                <li><strong>Ve všední dny</strong> - zvolte, zda se má požadavek opakovat pouze ve všední dny.</li>
                <li><strong>Vytvořit nový požadavek po vyřešení předchozího v pořadí za (dny</strong> ) - např. zadejte 1, pokud chcete, aby se nový požadavek vytvořil následující den po vyřešení předchozího požadavku.</li>
            </ul></li>
            <li><strong>Týdenní</strong>        <ul>
                <li><strong>Období opakování (v týdnech)</strong> - zadejte období v týdnech. Např. zadejte 1, chcete-li vytvořit nový požadavek každý týden.</li>
                <ul>
                    <li><strong>V těchto dnech</strong> - zaškrtněte dny, ve kterých chcete, aby byl požadavek vytvořen.</li>
                </ul>
                <li><strong>Vytvořit nový požadavek po vyřešení předchozího v pořadí v (týdnech)</strong> - např. zadejte 1, chcete-li vytvořit nový požadavek týden po vyřešení předchozího požadavku.</li>
            </ul></li>
            <li><strong>Měsíční</strong>          <ul>
                <li><strong>Den v měsíci</strong> - zadejte den v měsíci, kdy bude požadavek vytvořen. Např. pro 10 bude požadavek vytvořen 10. den v měsíci.</li>
                <ul>
                    <li><strong>Období opakování (měsíce</strong> ) - např. zadejte 1, chcete-li vytvořit požadavek každý měsíc.</li>
                </ul>
                <li><strong>Weekday (Den v týdnu)</strong> - zvolte číslo týdne v měsíci a den v týdnu. Např. pro &quot;2., středa&quot; bude požadavek vytvořen 2. středu v měsíci        <ul>
                    <li><strong>Období opakování (měsíce</strong> ) - např. zadejte 1, aby se požadavek vytvořil každý měsíc.</li>
                </ul></li>
                <li><strong>Vytvořit nový požadavek po vyřešení předchozího v pořadí v (měsících</strong> ) - např. zadejte 1, abyste vytvořili nový požadavek jeden měsíc po vyřešení předchozího požadavku.</li>
            </ul></li>
            <li><strong>Ročně</strong>      <ul>
                <li><strong>Den v měsíci</strong> - zadejte pořadové číslo dne v měsíci a vyberte měsíc. </li>
                <li><strong>Weekday (Den v týdnu)</strong> - zvolte pořadové číslo týdne v měsíci, den v týdnu a měsíc.</li>
                <li><strong>Vytvořit nový požadavek po vyřešení předchozího požadavku v pořadovém čísle v (letech</strong> ) - např. zadejte 1 pro vytvoření nového požadavku rok po vyřešení předchozího požadavku.</li>
            </ul></li>
        </ul>

        </li>
        <li><strong>Rozsah opakování</strong><ul>
            <li><strong>Začátek</strong> - zadejte den, kdy má být vyřízena první požadavek.</li>
            <li><strong>Konec</strong> - vyberte, jak dlouho mají být požadavky vytvářeny:<ul>
                <li><strong>Neomezeně</strong></li>
                <li><strong>Konec po (výskytech</strong> ) - zadejte celkový počet požadavků, které chcete vytvořit.</li>
                <li><strong>Konec</strong> - zadejte den, kdy má být vytvořena poslední požadavek.</li>
            </ul>
            </li>
        </ul>
        </li>
    </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


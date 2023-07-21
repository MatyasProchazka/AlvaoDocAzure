<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
   <h1 translate="no">Service Asset and Configuration Management</h1>

    <p>Strom objektů v systému ALVAO Asset Management může být strukturován různými způsoby.</p>
    <ul>
        <li>Organizačně<ul>
            <li>Např. firma -&gt; divize -&gt; oddělení -&gt; středisko</li>

        </ul>
        </li>
        <li>Lokálně<ul>
            <li>Např. firma -&gt; město -&gt; budova -&gt; patro -&gt; místnost</li>
        </ul>
        </li>
    </ul>

    Oba přístupy mají své výhody i nevýhody. Správnou volbu stromové struktury ovlivňují především následující faktory:<ol>
        <li>Přehlednost stromu<ul>
            <li>Řešitelský tým by měl z pozice objektu ve stromu rychle odvodit, co je to za objekt a jaký je jeho kontext</li>
            <li>Často se tak také dozví, jaký je dopad (zda se jedná pouze o lokální tiskárnu, nebo o sdílenou tiskárnu)</li>
        </ul>
        </li>

        <li>Práva v rámci stromu<ul>
            <li>Organizační členění umožňuje nastavit práva k viditelnosti dat ve webové aplikaci pro manažery podle oddělení, divize atd.</li>
            <li>Místní členění pomáhá řešitelskému týmu v případech, kdy jsou spravovaná zařízení rozmístěna na více místech a různým technikům je třeba v těchto místech přidělit různá práva.</li>
        </ul>
        </li>

        <li>Dědičnost v rámci stromu<ul>
            <li>Správně navržený strom usnadňuje vyplňování informací</li>
            <li>Informace, jako jsou čísla oddělení, jména zaměstnanců, pak není třeba vyplňovat a tyto informace se v rámci stromu propagují automaticky</li>
        </ul>
        </li>

    </ol>

    <p>Praxe ukazuje, že oba přístupy lze podle potřeby kombinovat. Celý strom může začínat organizačním členěním a podle potřeby plynule přecházet na místní členění. Změna organizačního stromu v budoucnu je možná a neznamená, že je nutné informace zadávat znovu.</p>




   <img src="sacm/object_tree.png" />

    <h2>Životní cyklus</h2>
    <p>Životní cyklus každého objektu (CI) je historicky zaznamenán v protokolu každého objektu. Lze jej zaznamenat dvěma způsoby:</p>
    <ol>
        <li>Pozice ve stromu (doporučeno)</li>
        <li>Vlastnost "Status"</li>
    </ol>

    <h3>Správa životního cyklu pomocí umístění ve stromu</h3>
    Systémové složky jsou v systému připraveny ihned po instalaci: sklad, vyřazené prostředky, koš. Tyto složky lze podle potřeby dále rozšiřovat o další složky: Majetek k vyřazení, Reklamace (tu lze dále členit podle dodavatelů), Instalace atd. Pozice ve stromu pak jednoduše ukazuje, kde se objekt aktuálně nachází, což zároveň představuje jeho stav. Uživatel pak může stav měnit jednoduchými operacemi drag&amp;drop v rámci stromu.<br />
    <br />
    Příklad použití pozice ve stromu:<br />
    <br />
    <img src="sacm/object_tree_lifecycle.png" />
    <h3>Správa životního cyklu pomocí vlastnosti "Stav"</h3>
    Vlastnost "Stav" se v průběhu životního cyklu objektu mění ručně (administrativně náročnější). Tuto metodu však lze dobře využít u objektů představujících důležité servery nebo klíčové aplikace, nad nimiž se provádí důsledná správa verzí.<p>
        Příklad použití vlastnosti &quot;Status&quot;:<br />
        <img src="sacm/status_lifecycle.png" />
    </p>

    <h2>Inventář</h2>
    <p>
        Viz Asset Management ALVAO - <a href="../modules/alvao-inventory-audits/stocktaking">Inventura majetku</a>   </p>

    <h2>Příklad interní směrnice</h2>
    Interní směrnice k této problematice by měla obsahovat následující informace:<ol>
        <li>Počítače a další IT vybavení svěřené uživatelům do užívání se evidují v systému ALVAO Asset Management.</li>
        <li>Každý uživatel si může zobrazit seznam zařízení, která jsou u něj evidována, na adrese https://server/asset.</li>
        <li>Pokud zaměstnanec zjistí v evidenci nesrovnalost, neprodleně ji nahlásí na Service Desk.</li>
    </ol>
</asp:Content>

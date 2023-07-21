<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Naskladnění majetku</h1>
    <h2>Příprava naskladnění</h2>
    <div>
        <ol>
           <li>Zkontrolujte obsah dodávky, zejména typy vybavení a množství.</li> <li><strong><em>Nepovinné</em></strong>: Ke každé položce připevněte inventární nebo evidenční číslo (štítek s čárovým kódem z předtištěné série). Přidělené inventární nebo evidenční číslo napište tužkou na dodací list ke každé položce.</li> <li>Používáte-li snímač čárových kódů, pořiďte postupně sériová čísla z každé položky.</li>Pokud některá položka nemá sériové číslo, vynechejte ji. <li><strong><em>Volitelně:</em></strong> Pokud při stohování ihned přidělujete inventární nebo evidenční číslo, pořiďte pomocí snímače sériové číslo položky 1, poté inventární (nebo evidenční) číslo položky 1, sériové číslo položky 2, inventární (nebo evidenční) číslo položky 2 a tak dále pro všechny položky v dodávce. </li>
        </ol>
        <div class="tip">
           <div class="icon"></div>
            <div class="title">Doporučení:</div>
            Pokud položka nemá sériové nebo inventární (nebo evidenční) číslo, odstraňte místo něj jiný kód, aby byla zachována posloupnost sériové číslo - inventární/evidenční číslo - sériové číslo - sériové číslo - inventární/evidenční číslo - atd. Po načtení kódů do počítače pak upravte seznam načtených kódů      </div>
    </div>
    <h2>Načítání</h2>
    <div>
        V AM Console pro každou položku na dodacím listu postupně: <ol>. <li>Vytvořte objekt (<a href="inserting-object-in-tree">Přidání objektu do stromu</a>) ve složce Sklad (<a href="material-warehouse">Sklad zásob)</a>.</li> <li>Vyplňte jeho vlastnosti:<ul> <li><strong>Název</strong> (počítač tuto vlastnost nemá),<strong> Výrobce</strong>, <strong>Sériové číslo</strong>.</li> Pokud má být naskladněno více kusů stejného zařízení, sériové číslo nevyplňujte. Zadá se později <li><strong>Datum nákupu,</strong> <strong>Dodavatel</strong>, <strong>Dodavatel</strong></li>
            </ul>
            </li>
        </ol>
        <ol> <li><ul> <li> <strong></strong>, <strong>Dodavatel</strong></li>, <li> <strong>Dodací list - číslo</strong></li>Tyto vlastnosti můžete zkopírovat z již naskladněného majetku <strong>ze stejného dodacího listu</strong> takto:<ol> <li>Ve stromu vyberte jeden již naskladněný majetek.</li> <li>Na kartě <strong>Vlastnosti</strong> vyberte vlastnosti "Datum nákupu", Dodavatel, "Dodací list - číslo" a stiskněte klávesy <strong>Ctrl+C</strong>.</li> </ol>Ve<ol> <li>stromu vyberte právě naskladňovaný majetek a stiskněte kláv</li> </ol>esy<ol> <li> <strong>Ctrl+V</strong></li> </ol>. V okně<ol> <li>Vlastnosti</li> </ol>vyberte<ol>vlastnosti " <li>Datum nákupu</li> <li>",</li> </ol>"<ol> <li>Dodavatel", "Dodací list - číslo</li> </ol>" a stiskněte klávesy<ol> <li> <strong>Ctrl+V</strong>.</li> </ol><ol> <li>Potvrďte přepsání stávajících vlastností.</li> </ol> <li><strong>Záruka</strong> (datum, do kdy je záruka platná</li>) <li><strong><em>Volitelné:</em> </strong>Zadejte "Inventární číslo" nebo "Evidenční číslo". Pokud používáte snímač čárových kódů, můžete inventární číslo načíst ze snímače podobně jako sériové číslo. Pokud má být skladováno více kusů stejného zařízení, inventární (nebo registrační) číslo nevyplňujte. To bude zadáno později.</li> </ul> </li> <li>Pokud stohujete počítač a potřebujete přímo přiřadit licence, použijte příkaz "Přiřadit licence" z místní nabídky. </li> <li>Pokud má být stohováno více kusů stejného zařízení, vytvořte další objekty následujícím způsobem: <ul> <li>Zkopírujte první objekt.</li> <li>Zadejte "Sériové číslo" a případně také "Inventární číslo"</li> </ul> </li> <li>Dodejte dodací list účetnímu oddělení</li> </ol>       <div class="tip">
           <div class="icon"></div>
            <div class="title">Doporučení: V případě, že se jedná o skladové zásoby, které jsou v rozporu se zákonem o účetnictví, je třeba je vrátit:</div>
            Pokud je inventární číslo přiděleno dodatečně a majetek nemá sériové ani evidenční číslo a z názvu majetku není jasné, o jakou položku dodacího listu se jedná, doplňte ID majetku tužkou k příslušným položkám dodacího listu. To usnadní identifikaci položek dodacího listu v účetním oddělení        </div>
    </div>


</asp:Content>

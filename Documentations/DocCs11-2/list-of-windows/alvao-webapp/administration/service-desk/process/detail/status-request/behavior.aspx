<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Chování</h1>
    <p>Tato část formuláře <a href="../status-request">Nový stav požadavku</a> slouží k nastavení chování stavu požadavku v rámci procesu.</p>
    <p>Možnosti:</p>
    <ul>
        <li><b>Schválení stavu</b> - tuto možnost vyberte, pokud chcete, aby byl upravovaný stav schválen. Povolením této možnosti se na stránce požadavku zobrazí záložka <i>Schválení</i> <ul>
      <li><strong>Schvalovací běh</strong> - vyberte, jak bude schvalování probíhat a jak bude probíhat <ul>
     <li><strong>Ručně</strong> - schválení může spustit ručně člen řešitelského týmu služby příkazem <em>Nechat schválit</em>    </li>
     <li><strong>Automaticky</strong> - schválení se spustí automaticky, když požadavek přejde do stavu upraveno        <ul>
             <li><strong>Schválit podle schématu</strong> - z nabídky vyberte příslušné <a href="../../../../../../../alvao-service-desk/implementation/services/processes/request-approval">schéma schvalování</a>.  </li>
             <li><strong>Schválit podle osoby</strong> - vyberte konkrétní osobu, která bude schvalovatelem. 
                 <ul>
                     <li><strong>Vyprší za (hodiny)</strong> - zadejte, za kolik hodin od spuštění schvalování toto schvalování skončí s výsledkem <em>Vypršelo</em>, pokud schvalovatel do této doby požadavek neschválil ani neodmítl. Hodnota 0 představuje neomezený časový limit.</li>
                 </ul>
             </li>
         </ul>
     </li>
 </ul>
      </li>
      <li><strong>Šablona zprávy pro schvalovatele</strong><ul>
          <li><strong>Upravit</strong> - otevře <a href="approval-message-template">okno pro</a> úpravu šablony zprávy pro schvalovatele.</li>
      </ul>
      </li>
  </ul>
        </li>
        <li><strong>Z tohoto stavu jsou povoleny přechody</strong>        <ul>
                <li><strong>Do všech stavů</strong> - tuto možnost vyberte, pokud požadavek v upraveném stavu může přejít do jakéhokoli jiného stavu.</li>
                <li><strong>Pouze do povolených stavů</strong> - tuto možnost vyberte, pokud chcete omezit množinu stavů, do kterých může požadavek v upraveném stavu přejít. 
                    <ul>
                        <li><strong>Povolené stavy</strong> - seznam stavů, do kterých může požadavek přejít. 
                            <ul>
                                <li><strong>Upravit</strong> - otevřete okno <em>Povolené stavy</em> a povolte volbu pro stavy, do kterých chcete přechod povolit. </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><strong>Automaticky do stavů podle výsledku schválení</strong> - pokud u stavu schválení zaškrtnete tuto možnost, požadavek po dokončení schválení (podle schématu nebo podle vybrané osoby) automaticky přejde do jednoho z definovaných koncových stavů. V tomto režimu nemůže řešitel k probíhajícímu schvalování přidávat další schvalovatele             <ul>
                        <li><strong>Koncové stavy</strong> - pro jednotlivé výsledky schvalování<em>(Schváleno</em>, <em>Zamítnuto</em>, <em>Zrušeno</em>, <em>Vypršelo</em>) vyberte z nabídky stav, do kterého má požadavek automaticky přejít, pokud schvalování v editovaném stavu skončí daným výsledkem          <div class="tooltip">
                               <div class="icon"></div>
                                <div class="title">Tip:</div>
                                Jako stav ukončení schvalování můžete zvolit také upravený stav. V tomto případě se stav požadavku po ukončení schvalování nezmění. 
                            </div>
                            <div class="tip">
                               <div class="icon"></div>
                                <div class="title">Tip:</div>
                                Stav <em>Uzavřeno</em> vyberte jako stav ukončení schvalování pouze pro schválení probíhající mezi samostatnými stavy <em>Vyřešeno</em> a <em>Uzavřeno</em>        </div>


                            <div class="note">
                               <div class="icon"></div>
                                <div class="title">Poznámka:</div>
                                Pokud jako stav ukončení schvalování vyberete <em>Vyřešeno</em>, bude požadavek po dokončení schvalování vyřešena, včetně odeslání oznámení žadateli a případného automatického přechodu do stavu <em>Uzavřeno</em>        </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    <ul>
        <li>
           <strong>Do tohoto stavu přejde automaticky po prvním přiřazení řešiteli</strong> - požadavek ve stavu <em>Nový</em> automaticky přejde do tohoto stavu po předání řešiteli        </li>
        <li>
           <strong>Přiřadit požadavek řešitelské skupině při přechodu do tohoto stavu</strong> - vyberte řešitelskou skupinu, které má být požadavek automaticky předán.  Toto nastavení je součástí modulu <a href="../../../../../../../modules/alvao-sd-advanced-workflows">pokročilých pracovních postupů ALVAO</a>    </li>
        <li><strong>Odeslat oznámení žadateli při přechodu do tohoto stavu</strong> - při přechodu do tohoto stavu se žadateli automaticky odešle e-mailem oznámení o změně stavu. Text oznámení můžete upravit prostřednictvím odkazu <strong>Upravit šablonu oznámení</strong>         <div class="note">
             <div class="icon"></div>
              <div class="title">Poznámka:</div>
              Pro systémové stavy <em>Nový</em>, <em>Vyřešený</em>, <em>Uzavřený</em> a <em>Znovu otevřený</em> je tato možnost neaktivní. 
          </div>
        </li>
        <li><strong>Zpoždění pro zpětné vyřešení (v hodinách v provozních hodinách</strong> ) - zadejte maximální zpoždění v hodinách, se kterým lze požadavek zpětně zapsat k vyřešení, viz <em>Požadavek - </em><a href="../../../../../requests/request/resolve">Vyřešit</a> - <em>Vyřešit zpětně k</em>. Hodnota 0 znamená, že k požadavkům nelze zapsat zpětné vyřešení. Časový limit se počítá v provozních hodinách dle SLA. Toto pole je k dispozici pouze pro stav <em>Vyřešeno</em>.</li>
        <li><strong>Automaticky přejít do stavu Uzavřeno</strong> - Po vyřešení požadavku přejde požadavek přímo do stavu <em>Uzavřeno</em>. Tato možnost je k dispozici pouze pro stav <em>Vyřešeno</em>. Tuto možnost doporučujeme vypnout pouze v případě, že po vyřešení požadavku je třeba ještě provést nějaké kroky, například interní vyhodnocení v řešitelském týmu, uvolnění dočasně použitých zdrojů atd.</li>
        <li><strong>Zobrazení příkazu "Přesunout do jiné služby</strong> " Příkaz <em>Přesunout do jiné služby</em> - řešitel požadavku v tomto stavu uvidí příkaz <em>Přesunout do jiné služby</em> v příkazovém řádku na první pozici. Pokud požadavek nemá řešitele, zobrazí se příkaz na první pozici hlavním řešitelům služby. Současně se příkazy <em>Přijmout k řešení</em> a <em>Předat</em> přesunou z příkazového řádku do rozbalovací nabídky &quot;...&quot;.</li>
        <li><strong>Zobrazit příkaz Přiřadit</strong> - řešitel požadavku v tomto stavu uvidí na příkazovém řádku jako první příkaz <em>Předat dál</em>. Pokud požadavek nemá řešitele, zobrazí se příkaz na první pozici hlavním řešitelům služby.</li>
        <li><strong>Pozastavit SLA</strong> - doba, kterou požadavek stráví v tomto stavu, se nezapočítává do doby do první odpovědi ani do doby do vyřešení. Termíny první odezvy a vyřešení nastavené SLA budou automaticky zpožděny o dobu strávenou v tomto stavu.</li>
        <li>
            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                Protože aplikace u požadavků s pozastaveným SLA zobrazuje jako příčinu pozastavení název stavu, pojmenujte pozastavené stavy SLA tak, aby název vystihoval příčinu pozastavení, např. schvaluje, čeká na přijetí řešení atd. Nepoužívejte obecné názvy, jako je například Nový. 
            </div>
        </li>
    </ul>

    <ul>
        <li><b>Automatické vytváření požadavků</b> - seznam pravidel, která automaticky vytvářejí nové propojené (např. podřízené) požadavky, když požadavek přejde do tohoto stavu. Toto nastavení je součástí modulu <a href="../../../../../../../modules/alvao-sd-advanced-workflows">pokročilých pracovních postupů ALVAO</a>    <ul>
                <li><a href="automatic-request-creation">Upravit</a> - úprava seznamu šablon</li>
            </ul>
        </li>
    </ul>


</asp:Content>

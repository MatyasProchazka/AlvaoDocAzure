<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Zabezpečení objektů</h1>

    <h2>Zásady zabezpečení objektů</h2>

    <p>
        Zabezpečení objektů slouží k nastavení přístupových práv uživatelů k objektům ve stromu. <a href="../../list-of-windows/alvao-webapp/administration/users/detail/securityobject-authorization">Oprávnění</a> lze povolit, zakázat nebo různě kombinovat. Tato nastavení se provádějí v aplikaci <strong>ALVAO WebApp - Administration</strong> ve <a href="../implementation/users">správě uživatelů</a>v bloku <a href="../../list-of-windows/alvao-webapp/administration/users/detail/security-object">Zabezpečení objektů</a> nebo na jednotlivých objektech v AM Console (zde je mohou měnit pouze správci správy majetku)    </p>
    <p>
        Aby se nastavení práv ve stromu objektů projevilo, musí být v nastavení Asset Managementu zaškrtnuta volba <strong>Use rights in object tree (Používat práva ve stromu objektů</strong> ) - viz <a href="../implementation/settings">Globální nastavení</a>. Povolení této možnosti způsobí, že se uživatelům, kteří nemají ve stromu objektů definována žádná práva, nezobrazí žádné objekty. Objekty se zobrazí pouze v případě, že je povoleno oprávnění <em>Číst</em>. Výjimkou je uživatel s rolí Administrator (Správce) pro ALVAO Asset Management, na kterého se oprávnění pro strom objektů nevztahují (všechny objekty ve stromu se zobrazují vždy)    </p>

    <h3>Práva</h3>
    <p>Systém umožňuje nastavit 5 typů oprávnění:</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Oprávnění</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Číst</td>
                <td>Uživatel vidí objekt ve stromu objektů.</td>
            </tr>
            <tr>
                <td>Změnit</td>
                <td>Uživatel může měnit vlastnosti a hodnoty vlastností objektu.</td>
            </tr>
            <tr>
                <td>Přesunout</td>
                <td>Uživatel může přesunout objekt do objektů, ve kterých bude mít toto právo i přesouvaný objekt. Například pokud je právo nastaveno pro typ objektu <em>Mobilní telefon</em> na složkách <em>Oddělení A</em> a <em>Oddělení B</em>, lze mobilní telefony přesouvat v rámci oddělení i mezi odděleními.</td>
            </tr>
            <tr>
                <td>Odstranění</td>
                <td>Uživatel může objekt odstranit.</td>
            </tr>
            <tr>
                <td>Vytvořit libovolné objekty</td>
                <td>Uživatel může pod definovaným objektem vytvářet nové podřazené objekty libovolného typu.</td>
            </tr>
        </tbody>
    </table>
    <div class="caution">
        <div class="icon">
        </div>
        <div class="title">
            Upozornění        </div>
        Oprávnění lze udělit nebo odepřít. Odepření oprávnění má přednost před udělením oprávnění    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        To znamená, že uživatel nevidí žádné objekty ve stromu objektů, dokud mu není povoleno je číst    </div>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Zabezpečení objektů lze nastavit pro skupinu uživatelů<p>Pokud jsou oprávnění ve stromu objektů zakázána, mají systémové role ve stromu následující oprávnění:</p>
        <table class="wide">
            <thead>
                <tr>
                    <th>Role</th>
                    <th>Číst</th>
                    <th>Změnit</th>
                    <th>Přesunout</th>
                    <th>Odstranit</th>
                    <th>Vytvořit libovolné objekty</th>
                    <th>Poznámka</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Správci správy aktiv</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>Nelze omezit práva ve stromu</td>
                </tr>
                <tr>
                    <td>Čtenáři správy majetku</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Správci aktiv</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td>x</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Správci softwarových licencí</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Stejně jako <i>čtenáři správy majetku</i></td>
                </tr>
                <tr>
                    <td>Správci detekce software a hardware</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Stejné jako <i>čtečky pro správu majetku</i></td>
                </tr>
                <tr>
                    <td class="auto-style4">Účetní</td>
                    <td class="auto-style4">x</td>
                    <td class="auto-style4"><sup>x1</sup></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">Může měnit hodnoty některých vlastností</td>
                </tr>
                <tr>
                    <td>Čtenáři odkazů</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Stejné jako <i>čtečky pro správu aktiv</i></td>
                </tr>
                <tr>
                    <td>Správci odkazů</td>
                    <td>x</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Stejné jako u <i>čtenářů správy aktiv</i></td>
                </tr>
            </tbody>
        </table>
        <p>
           <sup>1</sup> Role <em>Účetní</em> může měnit hodnoty vlastností, pokud máte tuto možnost nastavenou v okně <em>Definice vlastností</em> na stránce <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/security">Zabezpečení</a><em> </em></p>


        <div class="caution">
            <div class="icon"></div>
            <div class="title">Upozornění:</div>
            <div class="caution">
                Pokud jsou práva povolena ve stromu objektů        <ol>
                    <li>V případě, že jsou práva povolena, je vše, co není povoleno, zakázáno.</li>
                    <li>Příkazové pravidlo nad objektem (kromě výchozího pravidla) má přednost před povolovacím pravidlem, a to i v případě dědičnosti na podřazené objekty.</li>
                    <li>Oprávnění ke čtení se vyhodnocují od kořene stromu, tj. objekt se uživateli nezobrazí, pokud všechny jeho nadřazené objekty nemají také oprávnění ke čtení.</li>
                    <li>Pořadí v tabulce pravidel nemá na jejich vyhodnocení žádný vliv. Všechna jsou vždy vyhodnocována s výše uvedenými omezeními.</li>
                </ol>
            </div>
        </div>


        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Každý uživatel v aplikaci ALVAO WebApp může vidět svůj svěřený majetek, tj. má právo číst na všech podřízených objektech pod svou osobou ve stromu      </div>

        <div class="note">
            <div class="icon"></div>
            <div class="title">Poznámka: Členství ve skupině uživatelů AM není alternativou pro zabezpečení objektů. Mají-li uživatelé upravovat, přesouvat, vytvářet a mazat objekty, musí být členy skupiny <em>Property Rights (Práva k majetku)</em> a musí také definovat, na které objekty se tato práva vztahují.</div>
        </div>



        <h3>Příklad: Příklad: Jak nastavit práva pro skupinu Správce mobilního telefonu</h3>

        V tomto příkladu vytvoříme novou skupinu <em>Správci mobilních telefonů business</em> a nastavíme na ní práva tak, aby se členové této skupiny starali o mobilní telefony v <em>oddělení Business</em>. Měli by mít právo pracovat s objekty typu <em>Mobilní telefon</em>      <ol>
            <li>Vytvořit (naskládat) je pod objektem <em>Sklad</em>.</li>
            <li>Upravovat jejich údaje kdekoli v celém stromu.</li>
            <li>Přesouvat je ze skladu kamkoli pod objekt <em>Obchodní oddělení</em> (a v případě potřeby zase zpět).</li>
            <li>Členové skupiny nemohou vidět jiná oddělení.</li>
        </ol>
        Příklad stromové struktury objektů        <br />
        <div class="wide">
            <img src="sampledb.png" /></div>
        <ol>
            <li>Přejděte do webové aplikace ALVAO a ujistěte se, že jsou povolena práva stromu objektů - povolte volbu <strong>Použít práva stromu objektů</strong> v nabídce <strong>Správa - Asset Management - Nastavení</strong> - <strong>Obecné</strong>.</li>
            <li>Vytvořte novou skupinu s názvem <em>Cell phone managers business</em>.</li>
            <li>Upravte skupinu, v sekci <strong>Is a member (Je členem</strong> ) přidejte <em>skupinu Cell phone companies (Podniky mobilních telefonů)</strong>. Asset managers (Správci majetku</em>). V části <strong>Zabezpečení objektu</strong> nastavte oprávnění podle následující tabulky:<table class="wide">
    <thead>
        <tr>
            <th>Typ objektu</th>
            <th>Název objektu</th>
            <th>Včetně podstromu</th>
            <th>Objekty typu</th>
            <th>Číst</th>
            <th>Změna</th>
            <th>Přesun</th>
            <th>Odstranit</th>
            <th>Vytvořit libovolné objekty</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td>Ne</td>
            <td>Mobilní telefon</td>
            <td>Ano</td>
            <td>Ano</td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Šablony objektů</td>
            <td>Šablony objektů</td>
            <td>Ne</td>
            <td></td>
            <td>Ano</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Složka</td>
            <td>IT majetek</td>
            <td>Ne</td>
            <td></td>
            <td>Ano</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style3">Sklad</td>
            <td class="auto-style3">Sklad</td>
            <td class="auto-style3">Ne</td>
            <td class="auto-style3"></td>
            <td class="auto-style3">Ano</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3">Ano</td>
        </tr>
        <tr>
            <td>Sklad</td>
            <td>Sklad</td>
            <td>Ano</td>
            <td>Mobilní telefon</td>
            <td></td>
            <td></td>
            <td>Ano</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Organizace</td>
            <td>Naše společnost, Inc.</td>
            <td>Ne</td>
            <td></td>
            <td>Ano</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Oddělení</td>
            <td>Obchodní oddělení</td>
            <td>Ano</td>
            <td></td>
            <td>Ano</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Oddělení</td>
            <td>Obchodní oddělení</td>
            <td>Ano</td>
            <td>Mobilní telefon</td>
            <td></td>
            <td></td>
            <td>Ano</td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
                </table>
                <div class="note">
                   <div class="icon"></div>
                    <div class="title">Poznámka:</div>
                    Na objektu <em>Obchodní oddělení</em> jsme nastavili, že uživatel v něm může přesouvat a měnit objekty typu <em>Mobilní telefon</em>. Toto právo uživateli umožní přesouvat i objekty v rámci tohoto oddělení, ale zároveň nemůže přesouvat celé oddělení, pouze mobilní telefony ležící uvnitř oddělení          </div>

            </li>
            <li>Přidejte uživatele <strong>Joseph Freeman (Demo</strong> ) do nově vytvořené skupiny <em>Správci mobilních telefonů business</em> - upravte uživatele a přidejte příslušnou skupinu na záložce <strong>Je členem</strong>.</li>
            <li>Když se pak uživatel <strong>Joseph Freeman (Demo</strong> ) přihlásí do konzoly AM, bude strom objektů vypadat takto:<br />
                <div class="wide">
                    <img src="sampledb2.png" /></div>
            </li>
        </ol>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style3 { height: 25px; } .auto-style4 { height: 22px; } </style>
</asp:Content>


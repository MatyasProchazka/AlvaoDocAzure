<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
<p>Tato záložka umožňuje upravit základní licenční informace zapsané v <a href="../../../../../../alvao-asset-management/software-management/licenses">registru licencí</a>.</p>
	<p>Možnosti:</p>
	<ul>
 <li><strong>Název licence</strong> - zadejte celý název licence. Ve výchozím nastavení je název stejný jako název produktu. Pokud pracujete s <a href="../edit-license">balíčkem licencí</a>, musíte název licence zadat ručně.</li>
 <li><a href="../../../products">Produkt</a>- vyberte název produktu z nabídky nebo jej vyberte pomocí <strong> tlačítka .</strong>.. v okně Produkty. Tlačítkem <strong>&quot;tužka</strong> &quot; zobrazíte/upravíte produkt.</li>
 <li><strong>Jazyk</strong> - zadejte jazyk licence.</li>
 <li><strong>Počet</strong> - zadejte počet vlastněných licencí.</li>
 <li><strong>Licenční model</strong> - vyberte způsob licencování nebo CAL: <ul>
 <li><strong>na zařízení</strong> - přidělte licenční položky počítačům.</li>
 <li><strong>na uživatele</strong> - přidělování licenčních položek uživatelům. Licence se pak vztahuje na všechny počítače uživatele (tj. počítače, které má uživatel pod sebou ve <a href="../../../../../../alvao-asset-management/implementation/tree-design">stromu objektů</a>).</li>
 <li><strong>na připojení</strong> - typicky u serverových licencí je počet aktivních připojení omezen.</li>
 <li><strong>na procesor</strong> - typicky jsou serverové produkty licencovány podle počtu procesorů.</li>
 <li><strong>na jádro</strong> - obvykle jsou serverové produkty licencovány <em>na jádro</em>, tj. podle počtu výpočetních jader v procesoru.</li>
  </ul>
 </li>
 <li><strong>Režim licence</strong> - vyberte režim licence z nabídky nebo zadejte vlastní.</li>
 
 <li><strong>Platí od</strong> - zadání data začátku platnosti licence.</li>
 <li><strong>Platí do</strong> - zadejte datum vypršení platnosti licence, pokud je licence časově omezená.</li>
 <li><strong>Upgrade/Support Until (Upgrade/podpora do</strong> ) - napište datum, kdy končí podpora produktu (a je vyžadován upgrade).</li>
 <li><strong>Připomenutí</strong> - napište datum, kdy má systém připomenout blížící se konec platnosti například časově omezené licence nebo obnovení produktu. Připomínka se zobrazí v seznamu připomínek a v zadaný čas automaticky upozorní.</li>

 
 <li><strong>Typ licence</strong> - vyberte typ licence.  <ul>
 <li><strong>Normální</strong> - normální licence nebo multilicence.</li>
 <li><strong>Neomezená objemová licence</strong> - licence pro neomezený počet instalací, použití a uživatelů.</li>
 <li><strong>Plovoucí</strong> - použití licencí je chráněno speciálním softwarem, hardwarovým klíčem nebo přístupovými právy. Licenci lze přiřadit více subjektům, než je počet nastavený v poli počet.</li>
 <li><strong>OEM</strong> - licence OEM při zakoupení nového počítače nebo zařízení (komponenty).</li>
 <li><strong>CAL</strong> - licence CAL (klientská přístupová licence) nebo licence pro produkt, který nemá instalaci v počítači. Tato licence nebude vykázána jako "přebytečná".</li>

  </ul>
 <li><strong>Hardlock</strong> - povolte, pokud licence vyžaduje ochranu hardwarovým klíčem. Příznak "Hardlock" lze zaregistrovat pouze pro plovoucí licenci.</li> <li><strong>Balíček licencí</strong> - povolte, pokud je licence součástí balíčku.</li> <li><strong>Pokrýt součásti bez instalace balíčku</strong> - zakažte, pokud se tato licence nevztahuje na instalace součástí balíčku, pokud není balíček nainstalován. Tato volba nemá vliv na balíčky na kartě Náhradní produkty, kde jsou instalace součástí pokryty vždy bez ohledu na instalaci balíčku.</li> <li><strong>Přiřazovat automaticky</strong> - zapněte, pokud má systém automaticky přidělovat a odebírat tuto licenci všem počítačům v aktivní evidenci. Tuto možnost nelze zapnout, pokud je Licenční model nastaven na <em>&quot;na uživatele&quot;</em> nebo <em>&quot;na jádro</em> &quot; nebo pokud je <em>Typ licence</em> typu <em>OEM licence</em>. <br />Pokud je tato možnost aktivní: <ul>. <li>Systém přidělí tuto licenci vždy, když existuje nějaká instalace produktu, na kterou se tato licence může vztahovat, a zároveň se na tuto instalaci nevztahuje jiná licence</li>.
 <li>Pokud je produkt odinstalován (detekován nebo ručně), systém licenci opět automaticky uvolní: <ul> <li>Pokud jsou v položce zadány nějaké údaje (sériové číslo, inventární číslo, nákladové středisko atd.</li> <li>Systém automaticky uvolní pouze položky, které byly automaticky přiděleny</li> </ul>. </li> <li> <ul> <li>Ručně přidělené položky se automaticky neodvolávají.</li> </ul> </li> <li>Je možné ručně přidělit nebo přesunout licence (i ty, které byly dříve přiděleny automaticky). <br />Pokud je položka přidělena ručně, systém ji automaticky neodvolá, ale zůstane trvale přidělena.</li> <li>Licence se automaticky přidělují podle priority nákladového střediska:<ul> <li>Licence nákladového střediska a počítače se shodují (obojí může být prázdné</li>). </ul></li>
 <li><ul> <li>Nákladové středisko licence je prázdné (licence je zakoupena pro celou organizaci, a proto může být nákladové středisko počítače libovolné).</li> </ul> <br />Systém tedy automaticky nepřidělí licenci počítači s jiným nákladovým střediskem (je však možné to provést ručně).</li> <li>Dochází k automatickému přidělení/oddělení: <ul>
 <li>Po určité době po uložení licence se zapnutou volbou &quot;Automaticky přiřadit&quot;.</li> <li> Ihned po jakémkoli vyhodnocení SW detekce počítače (AM Collector, ruční načtení výsledku detekce do AM Console).</li> <li>Jednou denně (v noci) pomocí AM Collectoru. Prohledají se všechny počítače v evidenci, kterým lze přiřadit/odebrat některé licence.</li> </ul> </li> <li><a href="../auto-assign-license-settings"> Nastavení [Settings ...]</a></li> </ul> </li> <li><strong>Allow multiple license assignment to a single object (Povolit vícenásobné přiřazení licence jednomu objektu</strong> ) - povolit, pokud je možné licenci přiřadit vícekrát stejnému objektu</li></li>
 
 <li><strong>Aktivační klíč</strong> - zadejte aktivační klíč licence. Pokud zadáte aktivační klíč pro licenci, budou všechny nově vytvořené položky licence mít automaticky přidaný aktivační klíč podle předpisu licence. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Tato hodnota bude v databázi uložena v nezašifrované podobě! </div></li>
 <li><strong>Inventární číslo</strong> - zadejte inventární číslo, pod kterým bude tato licence evidována v účetním systému.</li>
 <li>
<a href="../../../../tools/lists/documents">Certifikát</a> - výběr certifikátu z evidence dokladů.</li>
 <li><strong>Požadavek</strong> - zadejte číslo požadavku, který se k licenci vztahuje (např. požadavek na nákup, ke kterému se zakoupená licence vztahuje).</li>
  <li><strong>Organizace</strong> - vyberte organizaci, pro kterou je zakoupená licence určena. Pokud nezvolíte žádnou hodnotu, bude licence dostupná pro všechny organizace. Toto pole se zobrazuje pouze uživatelům, kteří mají oprávnění <a href="../../../../../alvao-webapp/administration/asset-management/software-licenses-security">Zabezpečení softwarových licencí</a>. Nastavte oprávnění ke změně licencí alespoň jedné organizace.  </li>
 <li><strong>Nákladové středisko</strong> - zadejte <a href="../../../license-and-install-overview/view">nákladové středisko</a>, pro které je zakoupená licence určena. Pokud nezadáte žádnou hodnotu, bude licence dostupná pro všechna nákladová střediska.</li>
 <li><strong>Cena</strong> - zadejte cenu, za kterou byla licence zakoupena. Hodnotu zadejte v celočíselném tvaru.</li>
 <li><strong>Adresa webové stránky pro stažení</strong> - zadejte adresu, odkud byl software stažen, pokud se jedná o <em>internetovou licenci</em>.</li>
 <li><strong>ID licence v externím systému</strong> - zadejte identifikátor licence v externím systému, ze kterého <a href="../../../../../../alvao-asset-management/software-management/import-lic">se automaticky načítají</a> aktuální informace o licenci.</li>
 <li><strong>Poznámka</strong> - zadejte poznámku o zakoupené licenci.</li>
	</ul>
</asp:Content>

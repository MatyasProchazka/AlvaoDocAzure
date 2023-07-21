<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">ALVAO Standard HW/SW Request Forms</h1>
    Tento modul podporuje proces vyžádání předem schváleného hardwaru a softwaru    <h2>Technické požadavky</h2>
    <ul>
        <li>Správa majetku ALVAO</li>
        <li>ALVAO Service Desk</li>
    </ul>
    <h2>Instalace</h2>
    <p>
        Na serveru, kde je nainstalována <b>aplikace ALVAO WebApp</b>, spusťte instalační balíček <b>AlvaoStandardHWSWRequestForms.msi</b>a postupujte podle pokynů průvodce    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Modul je pouze v češtině a není lokalizován do jiných jazyků    </div>

    <h2>Vytvoření vlastního formuláře požadavku o HW</h2>
    <p>
        Zkopírujte soubor Custom/Templates/StandardHwSwRequestForm/StandardHwSwRequestForm_Hw_NewTicket.cshtml do složky Custom/&lt;název_funkce&gt; a soubor Custom/Templates/StandardHwSwRequestForm/Code/StandardHwSwRequestForm_Hw_NewTicket.cs do složky Custom/&lt;název_funkce&gt;/Code/. Soubory můžete přejmenovat, ale oba soubory (.cshtml a .cs) pojmenujte stejně    </p>
    <ol>
        <li>V názvu jmenného prostoru na začátku souboru .cs nahraďte koncovku "Templates.StandardHwSwRequestForm" názvem funkce, tedy Alvao.ServiceDesk.ServiceDeskWebApp.Custom.&lt;název_funkce&gt;.</li>
        <li>Pokud jste soubor .cs přejmenovali, změňte název třídy (na začátku souboru u klíčového slova class) na &lt;název souboru&gt;Controller.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Názvy souborů všech použitých formulářů musí být jedinečné. Pokud používáte více různých formulářů, musíte zajistit, aby název třídy StandardHwSwRequestForm_Hw_NewTicketController byl jedinečný    </div>

    <h3>Nabízená zařízení</h3>
    <p>Ve stromu objektů nejprve definujte seznam kategorií a zařízení, z nichž si uživatelé budou moci vybrat zařízení, např:<o:p></o:p></p>
    
       <ol> <li>HW Request (typ <em>HW Request - Katalog</em>)<ol> <li>Notebooky (typ <em>HW Request - kategorie</em>) <ol> <li>Standardní notebook (typ <em>HW Request - položka</em>)</li> </ol> </li> <li>Stolní počítače (typ <em>HW Request - kategorie</em>)<ol> <li>Standardní PC (typ <em>HW Request - položka</em>)</li> </ol> </li> <li>Monitory (typ <em>HW Request - kategorie</em>) </ol> <li>Standardní monitor (typ <em>HW Request - položka</em>)</li> </ol> </li>
	</ol>
	</li>
	</ol><p>Na formuláři se u katalogových položek (typu <em>HW požadavek - položka</em>) zobrazují uživatelům všechny vlastnosti objektů, které mají vyplněnou hodnotu, kromě systémových vlastností <em>Pořadí, Skupiny uživatelů a Skryté vlastnosti</em>. Do šablony objektu <em>HW požadavek - položka</em> můžete podle potřeby přidat další vlastnosti, které se uživatelům v katalogu zobrazí.<o:p></o:p></p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>Pokud chcete u objektů položek evidovat další vlastnosti pro účely správy katalogu, které se však nemají zobrazovat uživatelům ve formuláři, uveďte v objektu <em>HW požadavek - Katalog</em> ve vlastnosti <em>Skryté vlastnosti</em> seznam těchto vlastností oddělený čárkou, například "Poslední aktualizace (datum), Url v e-shopu dodavatele".</p>
    </div>

    <p>
        Kategorie a položky se ve formuláři zobrazují v abecedním pořadí podle názvu objektu. Pokud chcete zobrazit objekty v jiném pořadí, použijte vlastnost <em>Order (Pořadí)</em>. Objekty pak budou primárně seřazeny podle hodnoty vlastnosti <em>Order (Pořadí)</em> vzestupně, přičemž objekty, které nemají tuto vlastnost vyplněnou, budou zobrazeny jako poslední. Objekty se stejnou hodnotou v této vlastnosti budou seřazeny sekundárně abecedně podle názvu objektu<o:p></o:p></p>

    <p>Do vlastnosti <em>Cena</em> doporučujeme zapisovat hodnoty ve tvaru např. "10 152". Před odesláním požadavku se pak uživateli ve spodní části formuláře zobrazí celková cena objednaných položek.<o:p></o:p></p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>Pokud chcete některé kategorie nebo položky ve formuláři nabízet jen některým uživatelům, zadejte ve vlastnosti <em>User Groups</em> čárkou oddělený seznam skupin uživatelů, kterým má být daná kategorie nebo položka nabízena. Rozhodující je uživatel, kterému jsou zařízení určena. Zadavatelem požadavku může být někdo jiný. Pokud má vlastnost <em>User Groups</em> prázdnou hodnotu, objekt se zobrazí všem uživatelům.<o:p></o:p></p>
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <p>Pokud potřebujete uživatelům nabízet v katalogu položky s výrazně odlišnými vlastnostmi, můžete kromě systémového typu <em>HW požadavek - položka</em> definovat i další typy objektů. Ve formuláři se objekty libovolného typu zobrazují žadatelům jako položky.<o:p></o:p></p>
    </div>

    <h3 id="standard_hw_images">Obrázky zařízení</h3>
    <p>Vytvořte poznámku v protokolu objektů a vložte obrázek zařízení jako přílohu. Obrázky musí být ve formátu JPG nebo PNG. Doporučená velikost obrázku je 150x150 px.<o:p></o:p></p>
    <p>Pokud protokol objektu obsahuje více poznámek s přiloženými obrázky, formulář zobrazí obrázek z nejnovější poznámky. Pokud poznámka obsahuje více obrázků, zobrazí se nejnověji vložený obrázek. Pokud taková poznámka v deníku není, zobrazí se objekt ve formuláři bez obrázku.<o:p></o:p></p>

    <h3>Formulář pro úpravu požadavku na HW</h3>
    <p>V souboru .cs můžete před spuštěním funkce <strong>LoadPage(</strong> ) upravit hodnoty proměnných:<o:p></o:p></p>

   <ol>
       <li><strong>folderName</strong> - zadejte název složky včetně cesty ve stromu, která obsahuje jednotlivé kategorie nabízených zařízení</li>, např. <li> <strong>&quot;HW request</strong></li>&quot;. <li><strong>categoryObjectKind</strong> - zadejte typ objektů, které představují kategorie </li>, např. <li> <strong>&quot;HW Request - Category&quot;</strong> </li>. <li>Dílčí objekty těchto kategorií se ve formuláři zobrazí jako nabízená zařízení. </li> <li>Objekty, které nemají <strong>categoryObjectKind</strong> </li>, <li>nebudou ve formuláři zobrazeny jako objekty kategorie (a jejich podobjekty nebudou zobrazeny). </li> </ol> <div class="icon"></div><ol> <li> <div class="caution"> <div class="title">Upozornění:</div>Uživatel může požadovat libovolného potomka objektu určeného proměnnými <strong>folderName</strong> a <strong>categoryObjectKind</strong> (tj. i objekt, ke kterému by ve stromu správy majetku neměl přístup). </div> </li> <li><strong>categories</strong>- zadejte názvy kategorií (např. "Monitory, notebooky"), které se mají zobrazit ve formuláři. Pokud je proměnná prázdná, zobrazí se všechny kategorie </ol>   <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip: V případě, že je zadán název kategorie, je možné zadat i kategorie, které se nacházejí v seznamu kategorií:</div>
        <p>
            Zobrazení objektů a jejich vlastností lze upravit v souboru .cshtml. Další informace o úpravách formulářů naleznete v části <a href="../modules/alvao-sd-custom-apps/custom-form-template">Vlastní formulář pro odeslání nového požadavku</a>       </p>
    </div>

    <h2>Vytvoření vlastního formuláře SW požadavku</h2>
    <p>Postupujte stejně jako při vytváření vlastního formuláře HW požadavku, ale použijte soubory Custom/Templates/StandardHwSwRequestForm/Code/StandardHwSwRequestForm_Sw_NewTicket.cshtml a Custom/Templates/StandardHwSwRequestForm/Code/StandardHwSwRequestForm_Sw_NewTicket.cs.</p>
    <p>
        Formulář zobrazuje softwarové produkty, které jsou ve schváleném stavu, více viz <a href="../alvao-asset-management/software-management/product-state">stav produktu</a>   </p>
    <p>V tomto formuláři není možné nastavit zobrazení obrázků pro jednotlivé produkty.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>
            Další informace o úpravách formulářů naleznete v části <a href="../modules/alvao-sd-custom-apps/custom-form-template">Vlastní formulář pro odeslání nového požadavku</a>       </p>
    </div>

    <h2>Nastavení služby</h2>
    <p>
        V <b>aplikaci ALVAO WebApp - Administration - Service Desk - Services</b> vytvořte službu (například <b>IT/Request for New HW</b>), která bude formulář používat, nebo použijte již existující. Pro každý formulář použijte jednu službu. Nastavte formulář pro tuto službu    </p>
    <ol>
        <li>V <b>aplikaci ALVAO WebApp - Administration - Service Desk - Services</b>, ve stromu služeb vyberte službu (IT/Nárok na nový HW) a použijte příkaz <strong>Edit - New Request Form.</strong> </li>
        <li>Změňte sekci <strong>Návrh formuláře</strong> na <b>Vlastní formulář (URL</b> ) a nastavte hodnotu na adresu používanou formulářem požadavku, například <span class="console">~/Custom/&lt;název_funkce&gt;/&lt;název_formuláře&gt;.</span></li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud adresa začíná <span class="console">http</span> nebo <span class="console">https</span>, použije se tak, jak je. V opačném případě se na začátek automaticky přidá cesta ke kořenovému adresáři <b>webové aplikace ALVAO</b>   </div>
    <p>Nastavte proces služby. Můžete použít existující proces nebo vytvořit nový.</p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Stav zadaný vytvořením požadavku nesmí obsahovat žádné povinné položky    </div>

</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">


    <style type="text/css">
        pre { margin-bottom: .0001pt; font-size: 10.0pt; font-family: "Courier New"; margin-left: 0cm; margin-right: 0cm; margin-top: 0cm; } </style>


</asp:Content>


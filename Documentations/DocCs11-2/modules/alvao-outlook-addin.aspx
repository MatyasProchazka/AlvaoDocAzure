<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO for Outlook</h1>
    <p>ALVAO for Outlook je doplněk pro Microsoft Outlook, který umožňuje pracovat s požadavky v aplikaci <em>ALVAO Service Desk</em> přímo v aplikaci Outlook.</p>
    <p>K dispozici jsou následující dvě možnosti:</p>
    <ul>
        <li><strong>AppSource add-in</strong> - tento doplněk je přístupný jako <a href="https://appsource.microsoft.com/en-us/product/office/WA200002731">aplikace v AppSource</a>, kterou lze centrálně <a href="alvao-outlook-addin/installation">nasadit</a> v rámci celé organizace. Uživatelé mohou tento doplněk využívat jak ve webové, tak v desktopové verzi aplikace Outlook. Tato možnost je k dispozici pouze s předplatným <strong>ALVAO SaaS</strong>. </li>
        <li><strong>Doplněk pro stolní počítače</strong> - tento doplněk je distribuován jako instalační balíček systému Windows (.msi). Chcete-li doplněk používat, musí být balíček nainstalován lokálně v počítači uživatele se systémem Windows a desktopovou aplikací Outlook. Tato možnost je k dispozici jak pro nabídku SaaS, tak pro <strong>on-premise</strong> nabídku ALVAO.</li>
    </ul>


    <h2>Zobrazení požadavků</h2>
    <p>Vyberte e-mail v aplikaci Outlook.</p>
    <h3>Doplněk AppSource</h3>
    <ul>
        <li>V případě <strong>webové aplikace Outlook</strong> vyberte libovolný e-mail. V podokně e-mailu otevřete nabídku &quot;...&quot; a vyberte příkaz <strong>ALVAO</strong>.<div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o aplikaci ALVAO, můžete použít příkaz ALVAO:</div>
            Chcete-li příkaz připnout ke zprávě, otevřete nabídku &quot;...&quot;, vyberte příkaz <strong>Přizpůsobit akce</strong> a zaškrtněte příkaz <em>ALVAO</em>.</div>

        </li>
        <li>V případě <strong>desktopové aplikace Outlook</strong> otevřete nabídku &quot;...&quot; a vyberte příkaz <strong>Související požadavek</strong>.<div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se vám podařilo odeslat zprávu, můžete se obrátit na některou z následujících aplikací:</div>
            Chcete-li příkaz připnout na stuhu, otevřete nabídku &quot;...&quot;, klikněte pravým tlačítkem myši na příkaz <em>Související požadavek</em> a vyberte příkaz <strong>Připnout na stuhu</strong>.</div>

        </li>
    </ul>
    <p>Pokud vybraný e-mail obsahuje v předmětu příznak požadavku Alvao, např. příkaz T123ALVAO, zobrazí se příslušný požadavek na panelu doplňků.</p>
    <p>Kliknutím na ikonu <strong>Otevřít v novém okně</strong> v pravém horním rohu otevřete stránku požadavku ve webovém prohlížeči.</p>
    <h3>Doplněk pro stolní počítače</h3>
    <p>V <strong>desktopové aplikaci Outlook</strong> vyberte příkaz &quot;...&quot; - ALVAO - <strong>Zobrazit podokno úloh</strong>. Pokud vybraný e-mail obsahuje v předmětu značku požadavku Alvao, zobrazí se <a href="../list-of-windows/alvao-outlook-addin/task-pane">panel úkolů</a> s příslušným požadavkem v aplikaci Alvao. Pokud s požadavkem v podokně úloh provedete jakoukoli operaci, podokno se uzamkne a nepřepne se automaticky na požadavek podle nově vybraného e-mailu. Podokno odemknete příkazem <strong>Obnovit</strong> v horní části podokna úloh.</p>
    <p>Chcete-li zobrazit požadavek ve webovém prohlížeči, klikněte na ikonu <strong>Otevřít v novém okně</strong> v horní části podokna úloh nebo klikněte pravým tlačítkem myši na e-mail v seznamu a použijte příkaz <strong>Zobrazit požadavek</strong>.</p>

    <h2>Vytvoření nového požadavku z e-mailu</h2>
    <p>Chcete-li v systému Alvao vytvořit požadavek na základě e-mailu, který zatím nesouvisí s žádným požadavkem, použijte následující postup.</p>
    <ol>
        <li>V aplikaci Outlook vyberte e-mail, který nemá v předmětu uveden žádný příznak požadavku Alvao.</li>
        <li><strong>Doplněk AppSource</strong> - v podokně doplňku klikněte na tlačítko <strong>Vytvořit nový požadavek</strong>.<br />
           <strong>Doplněk pro pracovní plochu</strong> - klikněte pravým tlačítkem myši na e-mail v seznamu a vyberte příkaz <a href="../list-of-windows/alvao-outlook-addin/ticket-from-mail">Nový požadavek z e-mailu</a>.</li>
        <li>Volitelně upravte informace o novém požadavku a odešlete formulář.</li>
        <li>Nově vytvořený požadavek se zobrazí v podokně doplňku.</li>
    </ol>



    <h2>Uložení e-mailu do deníky požadavku</h2>
    <p>Chcete-li vybraný e-mail, který nemá v předmětu uveden příznak požadavku nebo není uložen v protokolu požadavku (např. proto, že nebyl odeslán v kopii do servisní schránky), uložit do protokolu existujícího požadavku, použijte následující postup.</p>

    <ol>
        <li>V aplikaci Outlook vyberte e-mail.</li>
        <li>Pokud předmět e-mailu neobsahuje žádnou značku požadavku Alvao, vyhledejte v podokně doplňku příslušný požadavek. V <strong>doplňku AppSource</strong> použijte tlačítko <strong>Najít existující požadavek</strong> nebo klikněte na požadavek v jedné z částí <em>Nedávná komunikace s odesílatelem</em> a <em>Nedávno zobrazené požadavky</em>. V <strong>doplňku Desktop</strong> použijte vyhledávací pole v horní části podokna úloh.</li>
        <li><strong>Doplněk AppSource</strong> - v podokně doplňku s žádostí vyberte příkaz <strong>&quot;...&quot; - Uložit e-mail do deníku požadavku</strong> nebo klikněte na příkaz <em>Uložit</em> v panelu zpráv zobrazeném v horní části požadavku.<br />
           <strong>Doplněk pro pracovní plochu</strong> - klikněte pravým tlačítkem myši na e-mail v seznamu a vyberte příkaz <strong>Uložit do protokolu požadavku</strong>.</li>
        <li>E-mail se zobrazí v komunikaci s žádostí v panelu doplňku. Získané zprávy se do protokolu žádostí ukládají s časem odeslání, a proto se při řazení podle sloupce <em>Datum</em> nemusí zobrazit hned na začátku protokolu, ale jsou umístěny chronologicky za případnými novějšími záznamy.</li>
    </ol>

    <h2>Vytvoření nové položky aplikace Outlook z požadavku</h2>
    <p>
        V <strong>doplňku pro pracovní plochu</strong> můžete z požadavku, který je aktuálně zobrazen v podokně úloh, vytvořit novou položku aplikace Outlook, tj. e-mailovou zprávu, schůzku, schůzku nebo úkol. Použijte příkaz <strong>Nová položka z požadavku</strong> v horní části podokna úloh.<br />
        Ve formuláři aplikace Outlook pro vytvoření položky se řádek předmětu automaticky vyplní značkou a názvem vybraného požadavku    </p>

    <h2>Nastavení doplňku</h2>

    <p>
        Chcete-li nastavit <strong>doplněk AppSource</strong>, klikněte na ikonu <em>Nastavení</em> v horní části podokna doplňku. Chcete-li nastavit <strong>doplněk pro pracovní plochu</strong>, použijte příkaz <strong>Soubor - </strong><a href="../list-of-windows/ALVAO-Outlook-Addin/options">Nastavení doplňku ALVAO</a>   </p>

</asp:Content>

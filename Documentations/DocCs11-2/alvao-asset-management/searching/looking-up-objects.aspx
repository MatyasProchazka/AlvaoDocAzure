<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vyhledávání objektů</h1>
    <ol>
        <li>V hlavní nabídce vyberte možnost <strong>Úpravy - Najít</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/edit/find">Hledat - Text</a>, do kterého zadáte hledaný text nebo jeho část a vyberete, zda chcete hledat v <strong>názvech objektů</strong>, <strong>hodnotách vlastností</strong>, <strong>poznámkách</strong> nebo v <strong>protokolu objektů</strong><em>(Typ záznamu</em>- Historie a informace o objektu). Chcete-li například najít počítač ve stromu podle jeho názvu, stačí vyhledávat v názvech objektů, protože objekt představující počítač je pojmenován podle počítače. Chceme-li najít počítač podle sériového čísla, musíme prohledávat hodnoty vlastností, protože sériové číslo je zapsáno jako vlastnost objektu počítače. Pro běžné vyhledávání objektů stačí prohledávat názvy objektů a hodnoty vlastností. Pokud zadáváte pouze část vyhledávacího textu, napište před a za text hvězdičku. Pokud nepoužijete možnost <strong>Pouze celý text</strong>, přidají se automaticky znaky &quot;*&quot;. Pokud například v názvech objektů hledáme text &quot;*desk*&quot;, program najde objekty &quot;DeskPorte&quot;, &quot;HelpDesk&quot;, &quot;desktop&quot; atd.</li>
        <li>Vyhledávání zastavíte tlačítkem <strong>Hledat</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">Nalezené objekty</a> se seznamem nalezených objektů, po poklepání na položku v seznamu se příslušný objekt vybere ve stromu.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je hledaný objekt nalezen, je možné jej vyhledat:</div>
        Okno <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">nalezených objektů</a> můžete mít na obrazovce otevřené a současně pracovat v hlavním okně konzoly AM. Můžete jej zavřít a znovu otevřít pomocí příkazu <strong>Zobrazit - Nalezené objekty</strong>   </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Vyhledávání zařízení podle inventárních nebo výrobních čísel vám také výrazně usnadní jednoduchý snímač čárových kódů, který funguje tak, že po připojení k počítači simuluje zadání příslušného číselného kódu z klávesnice počítače a načte čárový kód.<p>Chcete-li vyhledat zařízení pomocí čtečky čárových kódů, postupujte následovně:</p>
        <ol>
            <li>V hlavní nabídce vyberte možnost <strong>Úpravy - Najít</strong> nebo klikněte myší někam do stromu a stiskněte <span class="key">klávesovou zkratku</span><span class="key">Ctrl+F</span>. Tím se na obrazovce otevře vyhledávací okno - <a href="../../list-of-windows/alvao-asset-management-console/edit/find">Hledání - Text</a>.</li>
            <li>Pomocí skeneru přečtěte čárový kód inventárního nebo sériového čísla ze štítku na zařízení. Čtenář zadá číselný kód do vyhledávacího řádku a stisknutím klávesy <span class="key">Enter</span> zahájí vyhledávání objektů ve stromu.</li>
            <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">Nalezené objekty</a> se seznamem nalezených zařízení.</li>
        </ol>
    </div>
</asp:Content>

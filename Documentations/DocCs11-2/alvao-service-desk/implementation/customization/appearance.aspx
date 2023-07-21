<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní vzhled</h1>
    <p>Vzhled aplikace ALVAO WebApp můžete přizpůsobit potřebám své organizace v nabídce <i>WebApp - Administration - Settings - <a href="../../../list-of-windows/alvao-webapp/administration/settings/webapp">WebApp</a></i>.</p>
    <p>Pokročilejší změny vzhledu, jako je změna barev, řezů a velikostí písma, velikostí grafických prvků atd. můžete provést vytvořením vlastního souboru kaskádových stylů (CSS) následujícím způsobem:</p>
    <ol>
        <li>Ve složce s nainstalovanou aplikací WebApp v podsložce <strong>Custom</strong> vytvořte složku s názvem společnosti. V ní vytvořte podsložku <strong>Theme</strong>. Tato složka bude obsahovat všechna přizpůsobení, která ovlivňují vzhled. Měla by mít stejnou hierarchii jako složka <em>Content (Obsah)</em> v instalační složce aplikace WebApp: <ul>. <li>content/<ul> <li>img/ - složka s obrázky</li> <li>fonts/ - složka s písmy</li> <li>.scss - soubory kaskádových stylů</li> </ul> </li> </ul>     <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Složka <em>Custom/&lt;název společnosti&gt;</em> se používá pro vlastní formuláře           </div>
        </li>
        <li>V souboru <strong>Web.config</strong> v části <strong>appSettings</strong> nastavte položku <strong>CustomThemePath</strong> na cestu ke složce <em>Theme</em>. Pokud se například úpravy vzhledu nacházejí v <em> instalační složce &lt;ALVAO WebApp&gt;/Custom/Company1/Theme</em>, pak nastavte položku <strong>CustomThemePath</strong> na <em>&quot;~/Custom/Company1/Theme</em>&quot;. </li>
        <li>Povolte přístup do této složky nepřihlášeným uživatelům (styly se použijí i na přihlašovací stránce). V souboru <strong>Web.config</strong> najděte řádek <em>&quot;&lt;location path=&quot;Scripts&quot;&gt;&quot;</em>. Za něj přidejte následující text    <p>
               <span class="console">&lt;location path=&quot;Custom/&lt;název společnosti&gt;/Theme&quot;&gt;<br />&lt;system.web&gt;<br />&lt;authorization&gt;<br />&lt;allow users=&quot;*&quot; </span>/&gt; <span class="console"><br />&lt;/authorization&gt;<br />&lt;/system.web&gt;<br />&lt;/location&gt; </span>           </p>
        </li>
    </ol>
    <p>
        Všechny soubory SCSS v této složce budou načteny na každé stránce webové aplikace. Tyto soubory se načítají jako poslední, takže jejich pravidla mají větší váhu než pravidla systémových souborů SCSS ve složce <em>Content</em>. Všechny ostatní soubory v této složce mají přednost před soubory ve složce <em>Content</em>, včetně obrázku ve složce <em>img</em>  </p>

    <h2>Proměnné</h2>
    <p>V souborech SCSS můžete používat následující proměnné. Syntaxe nastavení hodnoty proměnné: : "&lt;název proměnné&gt;: &lt;hodnota&gt;;".</p>
    <table>
        <thead>
            <tr>
                <th>Proměnná</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$navbar-bg-color</td>
                <td>Barva horního navigačního panelu</td>
            </tr>
            <tr>
                <td>$navbar-hover-bg-color</td>
                <td>Barva prvků v horním navigačním panelu po najetí myší</td>
            </tr>
            <tr>
                <td>$search-bg-color</td>
                <td>Barva vyhledávacího pole v horním navigačním panelu, pokud není aktivní</td>
            </tr>
            <tr>
                <td>$navbar-search-focus-bg-color</td>
                <td>Barva horního navigačního panelu, pokud je aktivováno vyhledávací pole</td>
            </tr>
            <tr>
                <td>$navigation-sd-bg-color</td>
                <td>Barva levého navigačního panelu</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        ALVAO WebApp používá svou paletu 7 odstínů základní barvy, které se používají jako výchozí barvy pro jednotlivé grafické prvky. Jednotlivé odstíny jsou uloženy v proměnných <i>$primary-color-dark-3</i>, <i>$primary-color-dark-2</i>, <i>$primary-color-dark-1</i>, <i>$primary-color</i>, <i>$primary-color-light-1</i>, <i>$primary-color-light-2</i> a <i>$primary-color-light-3</i> (od nejtmavší po nejsvětlejší), přičemž základní barva je uložena v proměnné <i>$primary-color</i>. Tuto paletu můžete změnit, ale pro konzistentní vzhled webové aplikace budete muset provést další úpravy    </div>

    <h2>Příklad</h2>
    <p>
        Chcete-li změnit barvu horního navigačního panelu na červenou, vytvořte složku <em>Custom/&lt;název společnosti&gt;/Theme</em> a v ní prázdný soubor <strong>Custom.scss</strong>. Do souboru zapište pravidlo    </p>
    <p>
       <span class="console">$navbar-bg-color: red </span>  </p>
    <p>nebo</p>
    <p>
       <span class="console">.navbar-default<br />{<br />background-color: red;<br />} </span></p>
    <p>Soubor uložte.</p>
    <p>V souboru <strong>Web.config</strong> nastavte hodnotu <strong>CustomThemePath</strong> na <em>&quot;~/Custom/&lt;název společnosti&gt;/Theme</em>&quot;. </p>

    <h2>Vypnutí vlastního vzhledu</h2>
    <p>
        V případě, že chcete opět používat standardní vzhled aplikace ALVAO WebApp, nastavte v souboru <strong>Web.config</strong> hodnotu <strong>CustomThemePath</strong> na prázdnou hodnotu    </p>
    <h2>Zálohování vlastního vzhledu</h2>
    <p>Doporučujeme zálohovat nastavení vlastního vzhledu buď v rámci zálohování celého aplikačního serveru, nebo zálohováním složky <em>Custom/&lt;company&gt;/Theme</em>.</p>


    <h2>Upgrade systému Alvao</h2>
    <p>Při upgradu na novou verzi aplikace Alvao může dojít ke změnám kaskádových stylů webové aplikace ALVAO. Proto po upgradu doporučujeme zkontrolovat vzhled aplikace WebApp a v případě potřeby upravit vlastní vzhled.</p>


</asp:Content>

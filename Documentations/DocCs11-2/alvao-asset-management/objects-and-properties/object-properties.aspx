<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Úprava vlastností objektu</h1>
    <p>
        Vlastnosti objektu můžete upravovat na kartě <strong>Vlastnosti</strong> v <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a>   </p>
    <p>Přidávat a odebírat vlastnosti objektů v <a href="../implementation/object-templates">šablonách objektů</a> může pouze správce. </p>
    <h2>Upravit hodnotu vlastnosti</h2>
    <ol>
        <li>Vyberte vlastnost, jejíž hodnotu chcete změnit, a dvakrát na ni klikněte myší nebo stiskněte klávesu <span class="key">Enter</span> či <span class="key">F2</span><div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Některé hodnoty vlastností nelze upravovat. Například pokud je hodnota vlastnosti nastavena detekcí nebo z AD, nebo pokud nemáte právo hodnotu vlastnosti měnit      </div>
        </li>
        <li>Hodnota vlastnosti se přepne do režimu úprav. Zapište novou hodnotu nebo ji vyberte z rozevíracího seznamu (číselníku)            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Stisknutím kláves <span class="key">Alt+Down</span> nebo <span class="key">F4</span> otevřete rozevírací seznam      </div>
        </li>
        <li>Stisknutím klávesy <span class="key">Enter</span> nebo <span class="key">Tab</span>změnu uložte. <span class="key">Karta Tab</span> okamžitě spustí úpravu následující vlastnosti. Případně můžete použít klávesy <span class="key">Shift+Tab</span> pro uložení změny a zahájení úprav předchozí vlastnosti. Kliknutím myší mimo vstupní pole se změna rovněž uloží.<div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Pokud nechcete změnu uložit, stiskněte klávesu <span class="key">Esc</span>  </div>
        </li>
    </ol>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Po zadání adresy URL nebo cesty k disku do vlastnosti se hodnota zobrazí jako odkaz, na který můžete kliknout myší      <br />
        Podporované typy vazeb:<ul>. <li>Webové adresy URL (např.: http://, ftp://, file://)</li> <li>Cesta k místním diskům (např.: C:\.</li>..) <li>Cesta UNC (\\server\.</li> </ul>..) Pokud cesta k disku obsahuje mezery, nahraďte je řetězcem &quot;<i>%20</i>&quot; a zapište cestu jako adresu URL.<br />
        Například cesta     <br />
       <i>D:\soubor s mezerou.jpg</i><br />
        zapište takto:<br />
       <i>file:///D:/File%20with%20gap.jpg </i>   </div>

    <h2>Vložení čárového kódu do hodnoty</h2>
    <ol>
        <li>Vyberte vlastnost, do které chcete vložit hodnotu čárového kódu ze čtečky.</li>
        <li>Klepněte na vlastnost pravým tlačítkem myši a vyberte možnost <strong>Vložit čárový kód</strong>.</li>
        <li>Otevře se správce čtečky CS1504, kde vyberte jeden čárový kód a potvrďte tlačítkem <strong>Vybrat</strong>. Hodnota bude vložena do aktuálně vybrané vlastnosti v tabulce a položka ve správci čtečky bude označena jako použitá.<div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Kód nelze vložit do některých vlastností. Například pokud je hodnota vlastnosti nastavena detekcí nebo z AD, nebo pokud nemáte právo hodnotu vlastnosti měnit      </div>
        </li>
    </ol>

    <h2>Generování dodatečné hodnoty vlastnosti podle číselné řady</h2>
    <p>Vlastnost může mít nastavenou automatickou číselnou řadu pro automatické generování hodnot vlastnosti. Někdy je třeba hodnotu vygenerovat dodatečně.</p>
    <ol>
        <li>Klikněte na vlastnost pravým tlačítkem myši a z místní nabídky vyberte možnost <strong>Generovat hodnotu</strong>.</li>
        <li>Pokud je pro vlastnost po kontrolním dotazu definována číselná řada, vygeneruje se nová hodnota podle této číselné řady.</li>
    </ol>

</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1><span class="notranslate">Insider Preview</span></h1>

    <p>
        Insider Preview je část systému Alvao obsahující agilně vyvinuté experimentální funkce, které slouží pouze k testovacím účelům. Funkcionality uvolněné v režimu Insider Preview jsou průběžně aktualizovány v rámci verzí FIX a SP. Popis funkcí obsažených v konkrétní aktualizaci naleznete v části <a href="#changelog">Nevydané aktualizace</a> na této stránce    </p>

    <h2>Přepínač Insider Preview</h2>

    <p>
        Ve výchozím nastavení nejsou funkce Insider Preview v aplikacích dostupné. Pokud je chcete zpřístupnit určitým uživatelům, proveďte následující kroky    </p>
  <ol>
      <li>Přidejte uživatele do skupiny <i>Insider Preview Testers</i>, kterým chcete zpřístupnit funkce Insider Preview. Funkce zůstanou ostatním uživatelům skryté.</li>
      <li>Funkci Insider Preview povolte v <i>aplikaci ALVAO WebApp - Administrace - Nastavení - Insider Preview</i>.</li>
  </ol>
        <p>Po instalaci následných FIXů a SP zůstane Insider Preview povolen.</p>
        <p>
            Po upgradu na novou verzi Alvao se Insider Preview automaticky vypne, a pokud chcete vyzkoušet novou funkcionalitu Insider Preview obsaženou v nové verzi, opět ji zapněte. Členství uživatelů ve skupině <i>Insider Preview Testers</i> bude zachováno z předchozí verze. 
        </p>

        <h2>Vypnutí funkce Insider Preview</h2>
        <p>Funkci Insider Preview můžete kdykoli vypnout v <i>aplikaci ALVAO WebApp - Administrace - Nastavení - Insider Preview</i>.</p>
        <p>
            Pokud chcete zakázat funkci Insider Preview pouze některým uživatelům, odeberte je ze skupiny <i>Insider Preview Testers</i>      </p>

       <a name="changelog"></a>
        <h2>Vydané aktualizace</h2>
        <ul>
            <li>Webová aplikace SD - Požadavky - Příkazové formuláře pro vytvoření nové události v protokolu požadavků (Poznámka, Odeslat zprávu atd.) se otevírají na pravé straně obrazovky. Odesílání komentářů jako komentáře k nápadu <a href="https://app.alvao.com/Alvao/Custom/ALVAO/Ideas/Idea?id=114303">T114303ALVAO</a>.</li>
        </ul>
        <h3><span class="notranslate">FIX2</span></h3>
        <ul>
            <li>WA - Stránky požadavků/objektů/osob - přidán příkaz <b>Kopírovat odkaz</b> kopírující url adresu stránky do schránky. Příkaz použijte buď z panelu nabídek, nebo klikněte na ikonu objevující se za názvem záznamu. Odesílání komentářů jako komentáře k nápadu <a href="https://app.alvao.com/Alvao/Custom/ALVAO/Ideas/Idea?id=143484">T143484ALVAO</a>.</li>
        </ul>
</asp:Content>

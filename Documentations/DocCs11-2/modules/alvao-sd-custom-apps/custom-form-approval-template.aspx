<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní formulář pro schvalování požadavku</h1>
    <p class="MsoNormal">Formulář pro schvalování požadavku v ALVAO WebApp lze nahradit vlastním formulářem se specifickým obsahem a chováním. Vlastní formulář umožňuje schvalovateli nastavit některé položky požadavku a umožňuje tak podporu složitějších schémat schvalování.<o:p></o:p></p>
    <p class="MsoNormal">
        Šablony pro vytváření vlastních formulářů naleznete ve složce <strong>\Custom\Templates\Approval</strong> v instalační složce aplikace ALVAO WebApp    </p>


    <h2>Příprava nového formuláře</h2>
    <p>
        Zkopírujte vzorový formulář - složku <strong>Schvalování</strong> do složky <strong>Schvalování</strong> <strong>Vlastní\&lt;název funkce&gt;.</strong> Přejmenujte soubory .cshtml i .cs obsažené ve složce tak, aby jejich název odpovídal významu nebo funkčnosti formuláře    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Obecný popis nastavení vlastních formulářů je popsán v pokynech pro <a href="custom-form-template">Vlastní formulář pro podání nové požadavku</a>   </div>

    <h2>Definice chování formuláře</h2>

        Popis chování se nachází v souboru <strong>.cs</strong>. V kódu jsou komentáři označeny oblasti, které jsou určeny k úpravě. Nezasahujte do ostatních částí kódu! Nejdůležitější je zde požadavek o schválení. V souboru je již uveden příklad schválení a zamítnutí požadavku, podle kterého můžete provést vlastní úpravy.<br />
        Základní struktura příkazů pro schválení/zamítnutí požadavku je následující:<br />
        <p>
           <strong>TicketApprovalAccept(iHdTicketId, &quot;Request approved:&lt;br&gt;&quot;+ MessageBody);</strong><br />
           <strong>TicketApprovalReject(iHdTicketId, &quot;Request denied:&lt;br&gt;&quot;+ MessageBody)</strong>       </p>
        <p>Kde <strong>MessageBody</strong> je již připravený text schválení/odmítnutí požadavku, který byl vytvořen převodem obsahu formuláře na text. V případě potřeby lze ve všech položkách použít zřetězení textu, jak je uvedeno v příkladu. Chcete-li do vlastního textu vložit zalomení řádků, použijte značku &lt;br&gt;.</p>

        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            <br />
            Pokud ve formuláři není použit prvek "StringField", který lze použít k zadání textu ve formátu HTML, použijte pro zalomení řádků řetězec \n.<br />
            Pro přístup k hodnotám vlastních polí použijte následující strukturu (příklad pro položky &quot;NewName&quot; a &quot;NewNumber&quot;):<br />
            <br />
           <strong><span class="console">řetězec newName = ((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NewName&quot;).Value as string;<br />int newNumber = (int)((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NewNumber&quot;).Value<span class="console">
                </span></span></strong></div>

        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            <br />
            Pokud chcete schválit aktuální krok, předčasně jím ukončit schvalování a přeskočit všechny následující kroky v běžícím schématu schvalování, použijte následující strukturu:<br />
            <br />
           <strong>TicketApprovalAcceptAndFinish(iHdTicketId, &quot;Request Approved:&lt;br&gt;&quot;+ MessageBody);</strong><br />
        </div>

        <h2>Připojení formuláře k aplikaci</h2>
        <p class="MsoNormal">
            V ALVAO WebApp - Administration - Service Desk - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/approval-scheme">Approval Schemes</a> vyberte schéma, které chcete upravit. Pomocí příkazu <em>Upravit</em> v bloku <em>Schvalovací kroky</em> otevřete okno pro úpravu schvalovacího kroku. Do položky <strong>Vlastní formulář (URL)</strong> zadejte URL adresu vytvořeného formuláře (ve stejném formátu, jaký je použit v nabídce Servis - Úpravy - Formulář pro podání nového tiketu - Návrh formuláře - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">Vlastní formulář (URL</a>))      </p>
</asp:Content>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>




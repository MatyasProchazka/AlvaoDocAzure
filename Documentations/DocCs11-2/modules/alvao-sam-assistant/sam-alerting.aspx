<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Oznámení SAM</h1>

    <h2>Nastavení</h2>
    <ol>
        <li>V <strong>ALVAO WebApp - Správa - Skupiny</strong>do skupiny <strong>Správa softwaru na počítačích</strong> vložte osoby, které jsou ve firmě zodpovědné za software. Těmto osobám budou standardně zasílána oznámení.</li>
        <li>Přejděte do SAM - Upozorňování <strong>(Správa - Asset Management - Nastavení - </strong><a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/sam-alerting">SAM-upozorňování</a>) a v případě potřeby upravte pravidla upozorňování.</li>

    </ol>

    <h2>E-mailová upozornění na chybějící licence pro konkrétní produkty</h2>
    <ol>
        <li>V <strong>AM Console</strong> použijte <strong>Software - Products (software)....</strong>.</li>
        <li>Zobrazí se seznam všech produktů. Vyberte produkty, pro které chcete zapnout upozornění, a použijte <strong>Audit.....</strong></li>
        <li>V zobrazeném okně kontextové nabídky vyberte možnost <strong>Notify by email (Upozornit e-mailem)</strong> a změnu potvrďte tlačítkem <strong>OK</strong>.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Sloupec Audit se zobrazuje také v horním seznamu produktů v okně <strong>Přehled licencí a instalací</strong>, kde můžete také z místní nabídky spustit <strong>Audit.</strong>..    </div>

    <h2> Pravidelná kontrola licenční čistoty</h2>

    <p>Pokud při pravidelné kontrole licenční čistoty zjistíte, že v počítači chybí licence:</p>
    <ol>
       <li>... a produkt je nastaven</li>na <li> <strong>Audit</strong>na <strong>Ano</strong>, můžete u produktu upravit hodnotu (příkaz<strong>Audit.</strong>.. z místní nabídky) na <strong>Upozornění e-mailem</strong>, které bude automaticky rozesílat upozornění podle nastavených pravidel, viz <strong>ALVAO WebApp - Správa - Asset Management - Nastavení - SAM - Upozornění</strong>.</li> <li>... a produkt je nastaven na <strong>Audit</strong>na <strong>Upozornění e-mailem</strong>, můžete upozornění znovu odeslat pomocí příkazu <strong>Odeslat upozornění znovu</strong> z místní nabídky. Ve spodním seznamu ve sloupci <strong>Poslední upozornění</strong> najdete datum, kdy bylo poslední upozornění odesláno. Ve sloupci <strong>Další plánované upozornění</strong>najdete datum, kdy bude automaticky odesláno další upozornění    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Další informace o pravidelné kontrole čistoty licencí naleznete v části <a href="../../alvao-asset-management/software-management/software-regular-auditing"> Pravidelná kontrola licenční čistoty</a>   </div>


    <h2>Zobrazení historie odeslaných upozornění v počítači</h2>
    <ol>
        <li>V <strong>AM Console</strong> vyberte ve stromu objektů konkrétní počítač.</li>
        <li>Přejděte na kartu <strong>Deník</strong>.</li>
        <li>V deníku můžete zobrazit záznamy týkající se odeslaných upozornění. 
            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Informace se zobrazují v jednotlivých sloupcích          </div>
            <ul>
                <li><strong>Ikona</strong> - <img src="../../alvao-asset-management/software-management/sam_alert_icon.png" alt="" /></li>
                <li><strong>Datum</strong> - datum odeslání výstrahy.</li>
                <li><strong>Typ výstrahy</strong> - Zobrazuje text: <strong>. Výstraha na chybějící licenci</strong></li>
                <li><strong>Název</strong> - Zobrazí se text: <strong>Výstraha odeslána</strong></li>
                <li><strong>Message (Zpráva)</strong> - Zobrazuje text: <strong>Produkt:"&lt;název produktu&gt;"; Pořadí výstrahy: N; Příjemci:"&lt;seznam příjemců&gt;"</strong></li>
            </ul>
        </li>
    </ol>

</asp:Content>

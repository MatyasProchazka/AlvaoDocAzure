<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO Inventory Audits</h1>

    <p>Pomocí tohoto modulu můžete provádět inventarizaci majetku. K dispozici jsou následující metody inventarizace:</p>
    <ul>
        <li><a href="alvao-inventory-audits/web-asset-check">Webová inventura majetku</a>, která je svěřena uživatelům k použití, a to přímo těmito uživateli ve <i>webové aplikaci ALVAO</i>.</li>
        <li>Fyzická inventura pomocí čárových kódů a aplikace <a href="alvao-inventory-audits/physical-asset-check#orcascan">Orca Scan</a> pro mobilní telefony a některé skenery čárových kódů.</li>
        <li>(Zastaralé) Fyzická inventura pomocí čteček čárových kódů řady <a href="alvao-inventory-audits/barcode-reader">Zebra MC3xxx</a> se systémem Microsoft Windows CE.</li>
    </ul>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        U menšího počtu majetku můžete inventarizaci provádět také klasickým způsobem odškrtáváním položek na tištěných inventárních seznamech. Inventarizovaný majetek můžete filtrovat např. na kartě <a href="../list-of-windows/alvao-asset-management-console/tab-view/objects">Přiřazené objekty</a>, exportovat do MS Excel, seznam upravit a vytisknout na papír. Nakonec aktualizujte záznamy ve stromu objektů podle výsledku inventury    </div>

    <h2>Technické požadavky</h2>
    <ul>
        <li>Správa majetku ALVAO</li>
        <li>Uživatelé, kteří budou provádět webovou inventarizaci, musí mít v systému Alvao zaregistrované uživatelské účty (např. načtené z AD), prostřednictvím kterých se budou přihlašovat do webové aplikace ALVAO. Uživatelské jméno uvedené u jejich objektu ve stromu objektů v ALVAO Asset Management není dostačující.</li>
        <li>Mobilní terminál Zebra řady MC3000, MC3100, MC32N0 (s operačním systémem Windows Mobile/CE). (volitelné)</li>
    </ul>

    </asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nepřečtené události</h1>
    <p>Požadavky, které mají ve své komunikaci nové události, které jste ještě nepřečetli, se v <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">tabulce požadavků</a> zobrazí tučně.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Ve výchozím nastavení jsou v tabulce požadavků zvýrazněny pouze nepřečtené požadavky, které musíte vyřešit. Režim zvýraznění můžete změnit v nabídce <a href="../../list-of-windows/alvao-webapp/settings">Nastavení</a> - <em>Zobrazení - Požadavky</em>   </div>

    <p>
        Na stránce s požadavky na kartě <strong>Komunikace</strong> jsou jednotlivé nepřečtené události zobrazeny tučně a u jejich levého okraje je zobrazen modrý svislý pruh. Pokud chcete událost označit jako přečtenou nebo nepřečtenou, klikněte na tento modrý pruh myší nebo do oblasti, kde je pruh zobrazen. Pokud jsou v komunikaci požadavku starší nepřečtené události, které nejsou na stránce viditelné, zobrazí se v horní části karty <em>Komunikace</em> tlačítko <strong>Nepřečtené zprávy</strong>, po jehož kliknutí se nejstarší nepřečtená událost rozbalí a sroluje    </p>
    <p>
        Při zobrazení karty <em>Komunikace</em> na stránce požadavku se po 5 sekundách všechny nepřečtené události v požadavku automaticky označí jako přečtené. Dříve nepřečtené události však zůstanou na obrazovce zvýrazněné, dokud stránku nebo kartu znovu nezobrazíte    </p>
    <div class="tip">
        <div class="icon">
        </div>
        <div class="title">
            Tip   </div>
        <br />
        Pokud chcete, aby událost zůstala označena jako nepřečtená, označte ji myší nejprve jako přečtenou a poté jako nepřečtenou. Při příštím zobrazení komunikace se zobrazí jako nepřečtená    </div>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Obecné</h1>
    <p>
        Tato Záložka umožňuje přístup k obecným <a href="../../../../alvao-asset-management/console">nastavením AM Console</a>.   </p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Vytvářet záznamy historie s aktuálním datem a časem</strong>- Povolte, pokud si přejete automaticky přiřazovat časová razítka záznamům historie při <a href="../../../../alvao-asset-management/objects-and-properties">přesunu, vytváření nebo mazání objektů</a>. Pokud je tato možnost zakázána, je třeba při každé manipulaci s objektem potvrdit (nebo upravit) čas provedení akce.</li>
        <li><strong>Vždy potvrdit při přesunu objektů</strong> - zapněte, pokud chcete při každém <a href="../../../../alvao-asset-management/objects-and-properties/moving-object">přesunu objektu</a> zobrazit potvrzovací okno.</li>
        <li><strong>Potvrdit přesun počítačů/uživatelů do "Koše" nebo "Vyřazených prostředků</strong> " - vypněte, pokud nechcete být varováni při přesunu počítačů nebo uživatelů s přiřazenými licencemi, nainstalovaným softwarem nebo požadavky na detekci do <em>koše</em> nebo <em>vyřazených prostředků</em>.</li>
        <li><strong>Automaticky zjišťovat, zda je knihovna softwarových produktů aktuální</strong> - zapněte, pokud chcete být automaticky upozorňováni na nejnovější verzi <a href="../../../../alvao-asset-management/software-management/custom-swlib">při spuštění knihovny softwarových produktů konzoly AM</a>. (Podobnou funkci poskytuje nástroj <a href="../../../../alvao-asset-management/implementation/detection/collector">ALVAO Collector</a>, který v pravidelných intervalech sleduje stránky dodavatele, zda je k dispozici novější knihovna, a poté ji automaticky načte do databáze)</li>
    </ul>
</asp:Content>

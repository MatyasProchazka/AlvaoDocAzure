<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Černá listina HW</h1>
    <div>
        Pokud se stane, že jsou při detekci HW zjištěny nesmyslné hodnoty, je možné je během zpracování detekce odstranit. K tomuto účelu slouží tabulka v databázi <strong>tblWbemObjectProcess</strong>. Tabulka již standardně obsahuje některé systémové hodnoty.<h2>Popis tabulky</h2>
        Sloupce tabulky:<ul> <li><strong>txtCASS</strong> - zkrácená část názvu třídy WMI detekovaného objektu - obvyklé hodnoty:<ul> <li><strong>DesktopMonitor</strong> - monitor</li> <li><strong>BaseBoard</strong> - základní deska</li> <li><strong>PhysicalMedia</strong> - pevný disk (sériové číslo HDD</li>) <li><strong>NetworkAdapter</strong> - síťová karta</li> </ul> <li><strong>txtPropName</strong> - název vlastnosti ve WMI - např.serialNumber, Caption apod.</li> <li><strong>txtPropValue</strong> - Nesmyslná hodnota, která je detekována, např. 000000 apod.</li> <li><strong>bolSetObjectAsVirtual</strong> - Pokud je zde hodnota True, bude objekt označen jako "virtuální" - příslušný objekt se po detekci nevytvoří ve stromu objektů, ale bude viditelný v detailech detekce HW. To je užitečné např. pro označení virtuálních CDROM apod.</li> <li><strong>bolClearObjectProp</strong> - pokud je zde hodnota True, bude detekovaná (nesmyslná) hodnota při zpracování nahrazena prázdnou hodnotou</li> </ul>       <div class="note">
            <div class="icon"></div>
            <div class="title">Poznámka:</div>
            <p>Ve sloupcích <strong>bolSetObjectAsVirtual</strong> a <strong>bolClearObjectProp</strong> musí být vždy pouze jedna hodnota <strong>True</strong> a druhá <strong>False</strong>.</p>
        </div>


        <h2>Vedoucí: Koupili jsme počítač, kde sériové číslo základní desky má stejnou hodnotu</h2>
        Hodnota v sériovém čísle základní desky je u všech počítačů stejná: 00000000. Po detekci je hlášena HW kolize (detekované komponenty jsou v jiném PC)   <h3>Postup pro odstranění problému</h3>
        <ol>
            <li>Upravte tabulku <strong>tblWbemObjectProcess</strong>, např. pomocí aplikace Microsoft SQL Server Management Studio.</li>
            <li>Vložte nový řádek, kde:</li>
            <ul>
                <li><strong>txtCLASS</strong> - vložte hodnotu: BaseBoard</li>
                <li><strong>txtPropName</strong> - vložte hodnotu: Sériové číslo</li>
                <li><strong>txtPropValue</strong> - vložte hodnotu: 00000000</li>
                <li><strong>bolSetObjectAsVirtual</strong> - vložit hodnotu: False</li>
                <li><strong>bolClearObjectProp</strong> - vložit hodnotu: True</li>
            </ul>
            <li>Uložte změnu do tabulky.</li>
            <li>Znovu vyhodnoťte všechny HW detekce počítačů, u kterých došlo ke kolizi při detekci kvůli stejnému sériovému číslu základní desky (00000000).</li>
        </ol>

    </div>

</asp:Content>

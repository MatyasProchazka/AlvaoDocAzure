<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Povolit downgrade</h1>

    <p>Jedná se o scénář, kdy se licence může kromě hlavní licence produktu vztahovat i na starší verze produktů.</p>
    <ul>
        <li>Přejděte do <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry">registru licencí</a>, vyhledejte licenci, pro kterou chcete povolit starší verze produktu, a použijte příkaz <b>Povolit downgrade</b>       </li>
        <li>Zobrazí se okno, ve kterém vyberte konkrétní produkty, na které se má licence vztahovat také, a stiskněte tlačítko <b>OK</b></li>
    </ul>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Licence se vztahuje na hlavní produkt licence (+ součásti balíčku) a také na všechny produkty (a jejich součásti balíčku) uvedené na kartě <a href="../../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/substitute-products">Náhradní produkty</a> (změna licence)    </div>

</asp:Content>

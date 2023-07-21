<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní funkce pro výběr osoby</h1>
    <p>
        Vstupní pole <em>Osoba</em> se ve formulářích používá k zadání osoby, například žadatele, řešitele, autora poznámky atd. Pole umožňuje vyhledávání a výběr osoby z nabídky. Pole se používá v následujících příkazech formuláře    </p>
    <ul>
        <li>Nový požadavek</li>
        <li>Odeslat (také hromadně)</li>
        <li>Upravit požadavek (také hromadně)</li>
        <li>Přesunout do jiné služby (také hromadně)</li>
        <li>Nová poznámka (také hromadně)</li>
        <li>Nová událost</li>
        <li>Schválit</li>
        <li>Můj tým - Nový/Upravit</li>
    </ul>

    <h2>Chování systému</h2>
    <p>
        V aplikaci ALVAO WebApp se v poli <em>Osoba</em> zobrazují hodnoty ve dvou řádcích. V prvním řádku se zobrazuje <strong>jméno uživatele</strong>. Druhý řádek zobrazuje <strong>oddělení; kancelář; osobní číslo; organizace; pracovní telefon; mobilní číslo</strong>.<br />
    </p>
    <p>
        Text zadaný do pole se vyhledává ve všech zobrazených sloupcích. Je možné zadat část hodnot z několika položek. Hodnoty musí být odděleny mezerou a ve stejném pořadí, v jakém jsou uvedeny v našeptávači. Vyhledané položky jsou seřazeny podle jména uživatele    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
    Tato kapitola se vztahuje také na vlastní pole Uživatel    </div>

    <h2>Vlastní funkce</h2>
    <p>
        Pokud chcete změnit způsob vyhledávání, řazení a zobrazování hodnot v poli osoba, přidejte do databáze proceduru <strong translate="no">spPersonSearch_Custom2</strong>.<br />
        Pokud je v databázi definována procedura <em translate="no">spPersonSearch_Custom2</em>, bude pro nabídku osob vždy použita místo výchozí procedury <em translate="no">spPersonSearch</em>.<br />
        Procedura <em translate="no">spPersonSearch_Custom2</em> má stejné vstupy a výstupy jako stávající procedura <a href="../../alvao-asset-management/implementation/customization/database#P-dbo.spPersonSearch" translate="no">spPersonSearch</a> </p>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


    <h1>PBX</h1>
    <p>Service Desk můžete integrovat s pobočkovou ústřednou. Po zazvonění telefonu pak počítač hlavního řešitele automaticky otevře formulář Nový požadavek a na základě telefonního čísla volajícího automaticky vyplní jeho údaje, včetně například tabulky požadavků, které v poslední době zadal. Hlavní řešitel tak automaticky získá všechny potřebné informace k zahájení hovoru.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pro tuto funkci je třeba mít podporu aplikace pro ústřednu, která umožňuje spustit jakoukoli nakonfigurovanou aplikaci z příkazového řádku nebo otevřít adresu URL ve webovém prohlížeči, když přijde hovor    </div>

    <h2>Nastavení</h2>
    <p>
       <strong>ALVAO WebApp</strong> - pokud chcete zadávat nové požadavky prostřednictvím webové aplikace, nastavte aplikaci ústředny tak, aby při příchozím volání otevřela následující adresu URL na počítačích hlavního řešitele:<br />
       <span class="console">&lt;server&gt;/Alvao/Ticket/New?<em>phoneNumber=&lt;telefonní číslo volajícího&gt;</em></span>   </p>

    <p>Toto nastavení automaticky otevře formulář <em>Nový požadavek</em> ve vybrané aplikaci s předvyplněným žadatelem podle telefonního čísla, když přijde hovor. Pokud není u žádného uživatele uvedeno telefonní číslo, vyplní se ve formuláři pouze toto číslo a Hostitel žadatele.</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Způsob vyhledávání žadatele podle telefonního čísla poskytnutého ústřednou lze upravit pomocí vlastní uložené procedury v databázi. Vytvořte proceduru v databázi:<br />
       <span class="console">VYTVOŘIT PROCEDURU<em>[&lt;vlastní schéma&gt;]</em>.[spPersonByPhoneNumber_Custom] @caller nvarchar(255) AS<br />BEGIN<br />...<br />END<br />GO</span><br />
        Procedura musí vrátit id žadatele, které je uloženo v<a href="../../alvao-asset-management/implementation/customization/database">tPerson.iPersonId</a>   </div>

</asp:Content>

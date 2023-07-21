<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Aplikace</h1>

    <p>Prostřednictvím aplikací můžete do systému Alvao přidávat vlastní příkazy, přidávat vlastní karty na určité stránky, automaticky provádět další vlastní akce, když uživatelé spustí určité příkazy, atd. V <a href="../alvao-am-custom-apps/applications/templates">šablonách aplikací</a> najdete příklady hotových užitečných aplikací, které můžete ihned použít.</p>
    <p>Jste-li členem skupiny <em>Administrators</em> nebo <em>Application Administrators</em>, můžete aplikace spravovat v části <strong>Správa</strong> - <a href="../../list-of-windows/alvao-webapp/administration/applications">Aplikace</a>. Možná rozšíření dostupná v tomto modulu naleznete v seznamu <a href="../../list-of-windows/alvao-webapp/administration/applications/app/scripts/new">šablon skriptů</a>.</p>

    <h2>Programování aplikací</h2>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění: V případě, že se jedná o aplikaci, která je určena pro práci s aplikacemi, je nutné ji používat v režimu "programování":</div>
        Špatně definovaná aplikace může nevratně poškodit databázi Alvao. Aplikace vždy vytvářejte a testujte v testovacím prostředí s kopií produkční databáze    </div>

    <p>
        Předpokladem pro vytvoření aplikace je dobrá znalost programování v jazyce C#, <a href="../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> a <a href="../../alvao-asset-management/implementation/customization/database">databáze Alvao</a>   </p>

    <h3>Jazyková lokalizace</h3>
    <p>Aplikace mohou být vícejazyčné a komunikovat s uživatelem v jeho preferovaném jazyce, viz příklad <a href="../../modules/alvao-am-custom-apps/applications/templates" translate="no">MultilingualCommand</a>.</p>

    <h3>Odeslání zprávy v automatické akci</h3>
    <p>Pokud potřebujete odeslat nějakou zprávu v rámci automatické akce, použijte metodu <a href="../../../../en/alvao_10_4/alvao_api/html/M_Alvao_API_SD_Message_SendMessage.htm">SendMessage</a>. Pokud nechcete, aby se odeslaná zpráva zapsala do protokolu požadavků, použijte metodu <a href="../../../../en/alvao_10_4/alvao_api/html/M_Alvao_API_Common_Email_QueueMailMessage_1.htm" translate="no">QueueMailMessage</a>.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Metody lze použít pro libovolný typ rozšíření    </div>

    <h3>Databázové transakce</h3>
    <p>
        Pokud potřebujete ve své aplikaci provádět operace Alvao, doporučujeme k tomu přednostně používat připravené metody <a href="../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a>, díky nimž se nemusíte zabývat databázovými připojeními a transakcemi. 
    </p>
    <p>
        Pokud potřebujete ve své aplikaci přistupovat přímo k databázi Alvao, použijte pro připojení k databázi metodu <span class="console">ConnectionScope</span>, kterou získáte voláním metody <span class="console" translate="no">AlvaoContext.GetConnectionScope()</span>. Vlastnosti <span class="console" translate="no">LegacyConnection</span> a <span class="console" translate="no">LegacyTransaction</span> obsahují připojení a případně i otevřenou transakci, které můžete použít například v objektu třídy <span class="console" translate="no">SqlCommand</span>. Příklad použití najdete v šabloně aplikace <a href="applications/templates" translate="no">CostsCalculation</a> </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Většina aplikačních metod přijímá jako vstupní parametry také databázové připojení a otevřenou transakci, např. <a href="../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions#OnTicketChanged" translate="no">ITicketAutoAction.OnticketChanged</a>. V takovém případě můžete hodnoty těchto parametrů také použít. Doporučujeme však, abyste k nim raději přistupovali prostřednictvím třídy <span class="console" translate="no">ConnectionScope</span> </div>
    <p>
        Pokud metoda aplikace běží v externí otevřené transakci a metoda skončí výjimkou, transakce se automaticky zruší. 
    </p>
    <p>
        Vlastní transakci můžete v aplikaci spustit také voláním metody <span class="console" translate="no">ConnectionScope.BeginTransaction()</span>.</p>
    <h3>
        Získání kořenové adresy URL webové aplikace</h3>
    <p>
        Pokud má vlastní příkaz nebo vlastní záložka otevřít jinou stránku aplikace ALVAO WebApp, použijte vlastnost <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> z adresy <a href="../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> pro získání kořenové adresy URL aplikace WebApp.</p>
    
</asp:Content>

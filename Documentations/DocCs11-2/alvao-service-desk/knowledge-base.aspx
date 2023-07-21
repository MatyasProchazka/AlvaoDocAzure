<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Znalostní báze</h1>
    <p>Znalostní báze je soubor <strong>znalostí,</strong> tj. článků, ve kterých mohou žadatelé a řešitelé najít návody na běžné situace, problémy nebo jiné užitečné informace. Chcete-li zobrazit znalostní bázi, použijte příkaz v <strong>hlavní nabídce-</strong> <a href="../list-of-windows/alvao-webapp/knowledge-base">Znalostní báze</a>.</p>
    <p>Každou znalost lze přiřadit k jedné nebo i více <a href="implementation/services">službám</a> současně. Uživatelům v aplikaci se pak zobrazuje v kontextu těchto služeb, např. žadatelům v <a href="../list-of-windows/alvao-webapp/service-catalog">katalogu služeb</a>, ve formuláři <a href="../list-of-windows/alvao-webapp/requests/new-request">Nový požadavek</a> a také na kartě <a href="../list-of-windows/alvao-webapp/requests/request">Požadavek</a> - <em>Postup řešení</em>. Znalosti, které nejsou přiřazeny k žádné službě, se zobrazují pouze na stránce <a href="../list-of-windows/alvao-webapp/knowledge-base">Báze znalostí</a>, případně je uživatelé mohou vyhledávat.</p>

    <h2>Oprávnění ke znalostem</h2>
    <p>
        Žadatelé mohou vyhledávat a zobrazovat pouze vybrané znalosti (viz možnost <a href="../list-of-windows/alvao-webapp/knowledge-base/manage/new-knowledge">Zobrazit žadatelům</a> ), které jsou přiřazeny k jejich službám. Nemohou vytvářet ani upravovat žádné znalosti, ani nemohou vidět znalosti služeb, ve kterých nejsou žadateli    </p>
    <p>
       <a href="implementation/services/service-roles">Členové řešitelského týmu</a> a řešitelé výjimečných služeb mohou prohlížet, <a href="../list-of-windows/alvao-webapp/knowledge-base/manage">vytvářet a upravovat</a> všechny znalosti ve své službě. Pokud jsou navíc členy <a href="implementation/users/groups">kořenové skupiny znalostní báze</a>, mohou upravovat i znalosti, které nejsou přiřazeny k žádné službě    </p>
    <p><a href="implementation/services/service-roles">Čtenáři služby</a> nemohou upravovat znalosti, ale mohou si prohlížet všechny znalosti v dané službě, které jsou viditelné pro členy řešitelského týmu.</p>

    <h2>Statistiky využití znalostí</h2>

    <p>Viz <a href="../alvao-asset-management/implementation/statistics">Analýza návštěvnosti webové aplikace ALVAO</a>.</p>

</asp:Content>

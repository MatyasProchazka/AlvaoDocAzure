<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Opětovné otevření požadavku k dořešení</h1>
    <p>Pokud nejste spokojeni s vyřešením požadavku, můžete použít příkaz <a href="../../list-of-windows/alvao-webapp/requests">Znovu otevřít</a> požadavek k vyřešení. Tím se požadavek uvede do systémového stavu <em>Reopened (Znovu otevřen)</em> a znovu se spustí měření doby do vyřešení podle SLA. Doba potřebná k vyřešení požadavku se započítává jako <a href="wait-for-response">čekání na žadatele</a> a může, ale nemusí se započítávat do doby vyřešení podle SLA v závislosti na nastavení systému.</p>
    <p>Požadavek může znovu otevřít jak jeho žadatel (nebo účastník požadavku), tak kterýkoli člen týmu pro řešení služeb. Jako žadatel požadavku však můžete požadavek znovu otevřít pouze ve stanovené <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/extended">lhůtě</a> od vyřešení.</p>
    <p>Pokud je požadavek znovu otevřen členem řešitelského týmu, je o tom žadatel informován e-mailem.</p>

    <p>
        Pokud řešitel znovuotevřeného požadavku odstranil nebo <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">zablokoval</a> uživatelský účet nebo je <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">skrytý v nabídkách</a>, je požadavek při znovuotevření automaticky vrácen hlavním řešitelům služby    </p>

    <h2>Reakce žadatele na oznámení o vyřešení požadavku</h2>
    <p>Po vyřešení požadavku obdržíte od řešitele e-mailové oznámení. Pokud na toto oznámení odpovíte ve lhůtě stanovené pro opětovné otevření pažadavku, bude vaše požadavek automaticky znovu otevřena k řešení.</p>
    <p>Pokud odpovíte po uplynutí lhůty pro znovuotevření požadavku, bude v závislosti na nastavení systému buď automaticky vytvořen nový požadavek, nebo systém vaši odpověď odmítne. V obou případech budete informováni e-mailem.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Místo odpovědi na oznámení o vyřešení požadavku můžete také odeslat novou zprávu k požadavku. Je důležité, aby odesílatelem zprávy byl žadatel požadavku, předmět zprávy obsahoval značku požadavku a příjemci e-mailovou adresu služby    </div>

</asp:Content>


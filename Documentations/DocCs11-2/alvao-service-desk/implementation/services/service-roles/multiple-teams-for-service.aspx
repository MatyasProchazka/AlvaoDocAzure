<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Skupiny žadatelů</h1>

    <p>
        Platnost <a href="../../../../alvao-service-desk/implementation/services/service-roles">uživatelských rolí ve službě</a> může být omezena na požadavky od určité <strong>skupiny žadatelů</strong>. Tým služby tak můžete rozdělit do dílčích týmů, například na základě umístění žadatele. Požadavky od žadatelů z různých lokalit pak vyřizují různé řešitelské týmy     <br />
        <br />
        Role členů řešitelského týmu a jejich specifikace pro konkrétní skupiny žadatelů se nastavují v <strong>aplikaci ALVAO WebApp - Správa - Service Desk - Služby - Upravit - Oprávnění - </strong><a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/service-authorization">Přidat oprávnění</a><strong> - Pro žadatele ze skupiny</strong>      <br />

        Příklad:<br />
        <br />
        Řešitelé pro tuto službu jsou rozděleni do skupin<em>"</em><em>Resitele_tiskárny_Praha</em>" a "<em>Resitele_tiskárny_Brno</em>". Skupina<em>"Resitele_tiskarny_Brno</em>" má oprávnění Operátor a Řešitel pro žadatele ze skupiny<em>"Pracovnici_Brno</em>", skupina<em>"Resitele_tiskarny_Praha"</em> má oprávnění Operátor a Řešitel pro žadatele ze skupiny<em>"Pracovnici_Praha</em>". Pokud je v této službě vytvořena požadavek uživatelem ze skupiny<em>"Pracovnici_Brno</em>", jsou informováni pouze uživatelé ze skupiny<em>"Resitele_tiskarny_Brno"</em>, kteří mají oprávnění tento požadavek řešit. Pokud nejsou oprávnění nastavena jinak, uživatelé ze skupiny<em>"Resitele_tiskarny_Praha</em>" nemají k tomuto požadavku přístup    </p>

</asp:Content>

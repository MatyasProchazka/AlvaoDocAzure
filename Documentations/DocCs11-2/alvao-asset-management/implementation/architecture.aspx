<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Architektura systému</h1>
    <div class="wide">
        <img src="architecture/img/am-architecture.png" alt="System Architecture" /></div>
    <ol>
        <li><strong>Databáze</strong> - všechna zaznamenaná data jsou uložena v databázi. Pokud systém používá více uživatelů, pracují všichni se společnou sdílenou databází. Jako databázový systém lze použít MS SQL Server<em> </em>a jeho <em>edici Express</em>.</li>
        <li><strong>Asset Management Console (AM Console)</strong> - je základní aplikací pro práci se systémem. Uživatel se připojuje k <i>webové službě Asset Management WebService</i> nebo přímo k databázi prostřednictvím AM Console. Jedná se o aplikaci Win32.</li>
        <li><strong>ALVAO WebApp (WebApp, WA</strong> ) - systém obsahuje intranetové rozhraní, které umožňuje prohlížet a měnit data v databázi pomocí webového prohlížeče. Přístup k databázi prostřednictvím intranetu (nebo internetu) neumožňuje provádět všechny operace jako AM Console. Jeho hlavním účelem je poskytnout pracovníkům ICT přístup k databázi při řešení technických problémů mimo jejich pracoviště.</li>
        <li><strong>Asset Management Collector (AM Collector, Kolektor</strong>) - aplikace Win32, která provádí vzdálenou detekci hardware a software počítačů v síti. Data jsou zjišťována na základě požadavku, který pracovník IT zadá do AM Console. Požadavek je uložen v databázi. AM Collector zpracovává vydané požadavky a zapisuje výsledky detekce zpět do databáze, kde jsou přístupné uživateli AM Console. AM Collector lze spustit jako interaktivní aplikaci nebo jako systémovou službu, např. na serveru. Data lze detekovat čtyřmi způsoby, viz body (5) až (8).</li>
        <li><strong>Asset Management WebService (AM WebService</strong> ) - slouží ke komunikaci s autonomními agenty a také ke vzdálenému připojení AM Console. Agenti jsou prostřednictvím webové služby dotazováni na provedení detekce a po provedení detekce ji prostřednictvím webové služby odešlou na server.</li>
        <li><strong>Detekce autonomním agentem</strong> - na stanici je nainstalován agent, který autonomně provede detekci a odešle ji na server. Komunikace probíhá prostřednictvím protokolu HTTP/HTTPS a stanice může být kdekoli na internetu.</li>
        <li><strong>Detekce bez Agenta</strong> - AM Collector může detekovat data z počítačů se systémem Windows 11/10/8.1/8/2000/XP/Vista, aniž by na nich byl nainstalován Agent. Detekce se provádí prostřednictvím DCOM, WMI a vzdáleného registru.</li>
        <li><strong>Detekce pomocí Agenta přes TCP/IP</strong> - Na stanicích s operačními systémy Windows 95/98/Me a NT/2000/XP/Vista/7 lze detekci provádět pomocí <em>Agenta</em>. V operačních systémech Windows NT/2000/XP/Vista/ a 7 je Agent implementován jako systémová služba. V systému Windows 95/98/Me se jedná o skrytou aplikaci, která se spouští při startu systému Windows. AM Collector komunikuje s Agentem pomocí protokolu TCP/IP.</li>
        <li><strong>Zjištění Agenta prostřednictvím sdílené složky</strong> - Agent může s AM Collector komunikovat také prostřednictvím sdílené složky na serveru. Tato možnost je zachována kvůli kompatibilitě se staršími verzemi systému. Při použití <em>Agenta</em> doporučujeme zvolit komunikaci prostřednictvím protokolu TCP/IP.</li>
    </ol>
</asp:Content>

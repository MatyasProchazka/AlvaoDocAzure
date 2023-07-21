<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Načítání zpráv</h1>
    <p>
        Tato část formuláře <a href="create-service">Nová služba</a> slouží k nastavení načítání zpráv ze schránky.<br />
        Pokud zpráva obsahuje v řádku předmětu značku existujícího požadavku, bude automaticky načtena do jeho protokolu. Na základě zpráv bez tagu požadavku <a href="../../../../../alvao-service-desk/requests/new-request">se vytvoří nový požadavek</a>   </p>
    <p>Možnosti: V případě, že se jedná o požadavek, která byla odeslána na základě požadavku na vyžádání, je možné ji odeslat:</p>
    <ul>
        <li><strong>Server</strong>     <ul>
                <li><strong>Exchange Server</strong> - zadejte název serveru Exchange, například: <span class="console">outlook.office365.com</span>                   <ul>
                        <li><strong>Ověřování</strong>            <ul>
                                <li><strong>OAuth 2.0 (Exchange Online</strong> ) - nejprve <a href="https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/how-to-authenticate-an-ews-application-by-using-oauth#register-your-application">zaregistrujte aplikaci Alvao Service</a> v Azure Active Directory a <a href="https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/how-to-authenticate-an-ews-application-by-using-oauth#configure-for-app-only-authentication">nastavte oprávnění pro</a> <em>full_access_as_app</em>. Doporučujeme také <a href="https://docs.microsoft.com/en-us/graph/auth-limit-mailbox-access">omezit oprávnění</a> tak, aby bylo možné přistupovat pouze k uvedeným poštovním schránkám           <ul>                                        
                                        <li><strong>ID aplikace (klienta)</strong> - zadejte ID aplikace Alvao Service z AAD.</li>
                                        <li><strong>ID adresáře (tenanta</strong> ) - zadejte ID adresáře aplikace Alvao Service z AAD.</li>
                                        <li><strong>Client secret</strong> - zadejte tajný kód aplikace Alvao Service z AAD.</li>
                                        <li><strong>E-mail</strong> - zadejte e-mailovou adresu načtené schránky</li>
                                    </ul>
                                </li>
                                <li><strong>Základní</strong>         <ul>
                                        <li><strong>Uživatelské jméno</strong> - zadejte uživatelské jméno pro přihlášení ke schránce služby, viz <a href="../../../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Nová služba</a><em> - Obecné - E-mail</em>. Uživatelské jméno je obvykle shodné s e-mailovou adresou schránky.<br />
                                            Pokud chcete načítat zprávy z jiné schránky, například <a href="https://docs.microsoft.com/en-us/microsoft-365/admin/email/about-shared-mailboxes?view=o365-worldwide">sdílené schránky</a> v Microsoft 365, vložte na konec zpětné lomítko a za něj e-mailovou adresu této schránky. Například uživatelské jméno <em>service_account@contoso.com</em> načte zprávy ze schránky <em>servicedesk@contoso.com</em> a přihlásí se do této schránky jako uživatel <em>service_account@contoso.com</em>                          </li>
                                        <li><strong>Heslo</strong> - zadejte heslo pro přihlášení. 
                                            <div class="caution">
                                               <div class="icon"></div>
                                                <div class="title">Upozornění:</div>
                                                Heslo pro přístup do poštovní schránky je v databázi uloženo v nezašifrované podobě. 
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Rozhraní je podporováno Exchange Serverem 2016 (nebo novějším) a Office 365   </div>
                </li>
                <li><strong>Server IMAP</strong> - zadejte síťový název serveru IMAP <ul>
     <li><strong>IMAP Port</strong> - zadejte port TCP/IP pro komunikaci se serverem IMAP.</li>
     <li><strong>SSL</strong> - povolte, pokud chcete mít zabezpečenou komunikaci se serverem.</li>
     <li><strong>Přihlášení</strong>        <ul>
             <li><strong>Uživatelské jméno</strong> - zadejte uživatelské jméno uživatele, z jehož výchozí poštovní schránky se mají načítat zprávy.</li>
             <li><strong>Heslo</strong> - zadejte heslo pro přihlášení              <div class="caution">
                    <div class="icon"></div>
                     <div class="title">Upozornění:</div>
                     Heslo pro přístup k poštovní schránce je v databázi uloženo v nezašifrované podobě       </div>
             </li>
         </ul>
     </li>
 </ul>

                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Prostřednictvím rozhraní IMAP se můžete připojit k celé řadě poštovních serverů, jako je Exchange Server, HCL Domino atd   </div>

                </li>
            </ul>
        </li>
        <li><strong>Nastavení</strong>         <ul>
                <li><strong>Načíst pouze nepřečtené zprávy</strong> - zapněte, pokud chcete ze schránky načítat pouze zprávy, které nejsou označeny jako přečtené.</li>
                <li><strong>Označovat nahrané zprávy jako přečtené</strong>- zapněte, pokud chcete automaticky označovat zprávy, které Alvao zpracovalo, jako přečtené.</li>
                <li><strong>Přenést nahrané zprávy do</strong> - zadejte název složky, pokud chcete zprávu po zpracování přesunout do určité složky ve schránce.</li>
                <li><strong>Odstranit nahrané zprávy</strong> - zapněte, pokud chcete odstranit zpracované zprávy ze schránky. Pokud jinak nemáte možnost odstranit starý obsah schránky, doporučujeme ponechat tuto možnost zapnutou. </li>
            </ul>
        </li>
    </ul>

</asp:Content>

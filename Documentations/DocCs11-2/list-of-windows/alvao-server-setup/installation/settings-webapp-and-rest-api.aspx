<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nastavení instalace - WebApp a REST API</h1>
    <ul>
        <li><strong>ALVAO WebApp</strong>    <ul>
                <li><strong>Authenticate users using</strong> - vyberte metodu ověřování uživatelů, kteří budou aplikaci používat          <ul>
                        <li><strong>Integrované ověřování systému Windows</strong></li>
                        <li><strong>Formuláře</strong> - ověření pomocí jména a hesla.</li>
                    </ul>
                </li>
                <li><strong>URL</strong> - v případě potřeby upravte adresu aplikace, např. http://app.company.com/alvao                </li>
                <li><strong>Název virtuální složky</strong> - v případě potřeby upravte název virtuální složky v systému IIS. Výchozí název složky je <em>Alvao</em>    </li>
            </ul>
        </li>
        <li><strong>ROZHRANÍ API REST</strong>   <ul>
                <li><strong>URL</strong> - v případě potřeby upravte adresu služby, např. <span class="console">http://app.company.com/alvaorestapi </span>               </li>
                <li><strong>Další nastavení</strong>         <ul>
                        <li><strong>Název virtuální složky</strong> - v případě potřeby upravte název virtuální složky v systému IIS.  Výchozí název složky je <em>AlvaoRestApi</em>           </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</asp:Content>

<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Zabezpečení majetku</h1>
    <p>
       <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/security">Zabezpečení vlastností</a> slouží k nastavení přístupových práv k vlastnostem objektu. Zabezpečení vlastností se nastavuje pro jednotlivé <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail">definice vlastností</a> nezávisle na <a href="object-access-rights">zabezpečení objektu</a>   </p>

    <h2>Práva</h2>
    <p>Systém umožňuje nastavit následující oprávnění:</p>
    <table>
        <thead>
            <tr>
                <th>Oprávnění</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Číst</td>
                <td>Uživatel vidí vlastnost a její hodnoty. Vlastnosti se zobrazují například v AM Console na kartách Vlastnosti a Objekty, v okně Seznamy objektů, v aplikaci ALVAO WebApp na stránce objektu atd.</td>
            </tr>
            <tr>
                <td>Změnit</td>
                <td>Uživatel může měnit hodnoty vlastností. Poznámka: Pokud je povoleno <a href="object-access-rights">zabezpečení objektu</a>, musí mít uživatel u objektu povoleno také oprávnění Modify (Změnit).</td>
            </tr>
        </tbody>
    </table>

    <p>Toto oprávnění lze zadat neomezeně pro všechny typy objektů nebo jej lze nastavit pouze pro určitý typ objektu.</p>
    <p>Při vytváření nové definice vlastnosti systém automaticky nastaví oprávnění pro systémové skupiny správy aktiv následujícím způsobem:</p>
    <table>
        <thead>
            <tr>
                <th>Skupina</th>
                <th>Číst</th>
                <th>Změnit</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Čtenáři vlastností objektu</td>
                <td>Ano</td>
                <td></td>
            </tr>
            <tr>
                <td>Správci vlastností objektu</td>
                <td>Ano</td>
                <td>Ano</td>

            </tr>
        </tbody>
    </table>

    <p>Pokud nejsou u definice vlastnosti nastavena žádná oprávnění, mohou vlastnost vidět a měnit její hodnotu pouze členové skupiny <i>správců správy majetku</i>.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Správci správy aktiv mohou vždy číst a měnit všechny hodnoty vlastností, oprávnění pro ně nelze omezit    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud potřebujete zobrazit určitou vlastnost všem uživatelům aplikace ALVAO WebApp v sekci My Trust, nastavte v definici vlastnosti systémovou skupinu Everyone na Read. (V tomto případě jsou uživatelé, kteří jsou pouze zaregistrováni ve stromu objektů a nejsou uvedeni v ALVAO WebApp - Administration - Users, výjimečně považováni za členy skupiny Everyone)    </div>

</asp:Content>

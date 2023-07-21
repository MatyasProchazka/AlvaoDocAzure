<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Request Fulfilment</h1>
    <p>Plnění požadavků se zabývá často se opakujícími požadavky zasílanými na Service Desk, které jsou dostatečně rizikové, aby nemusely procházet formalizovanějším procesem řízení změn ITIL. Mezi typické požadavky, které oddělení Request Fulfilment řeší, patří požadavek o změnu hesla, požadavek o instalaci standardního softwaru na konkrétní pracovní stanici nebo požadavek o konzultaci.</p>

    <h2>Schvalování</h2>
    <p>Naléhavé požadavky, ať už je riziko pro chod organizace jakkoli minimální (požadavek na standardní HW, instalaci schváleného softwaru apod.), musí být schváleny, např. z finančních důvodů.</p>
    <p>
        Schvalování lze v systému Alvao Service Desk provádět dvěma způsoby: zasláním e-mailu schvalovateli a formálnější variantou - funkcí Nechat schválit. Pomocí schvalovací agendy můžeme předdefinovat různá <a href="../alvao-service-desk/implementation/services/processes/request-approval">schémata schvalování</a> pro různé služby. Schvalovací schéma se aktivuje na začátku procesu a dokud není požadavek schválen, není spuštěn a řešitelský tým jej nevidí v "Požadavcích k řešení". Samozřejmě kdykoli v průběhu řešení požadavku může být spuštěno schvalování na libovolném schvalovacím schématu, pokud se objeví nové okolnosti    </p>
    <h2>Výchozí procesní vzor</h2>
    <p>Jedná se o výchozí vzor procesu, který si zákazník může dále upravit podle svých potřeb.</p>
    <table>
        <thead>
            <tr>
                <th>Stav</th>
                <th>Popis</th>
                <th>Pokyny pro řešitele</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td valign="top">
                    <p>Schvalování</p>
                </td>
                <td valign="top">
                    <p>Probíhá schvalování požadavku.</p>
                </td>
                <td valign="top">
                    <p>
                        Zkontrolujte, zda se jedná o &quot;Servisní požadavek&quot;. Pokud tomu tak není, použijte příkaz &quot;Přesunout do jiné služby&quot; a přesuňte požadavek do správné služby       <br />
                        Zkontrolujte, zda byl požadavek schválen. Pokud byl zamítnut, uzavřete jej příkazem &quot;Zavřít&quot;                    <br />
                        Určete prioritu řešení         <br />
                        Poté příkazem &quot;Přiřadit&quot; přiřaďte požadavek konkrétnímu řešiteli          </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Realizace</p>
                </td>
                <td>
                    <p>Probíhá realizace požadavku.</p>
                </td>
                <td>
                    <p>
                        Proveďte požadavek          <br />
                        Zaznamenejte všechny změny do konfigurační databáze         <br />
                        Nakonec požadavek uzavřete příkazem &quot;Close&quot;                 </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Uzavřeno</p>
                </td>
                <td>
                    <p>Požadavek byl uzavřen. Požadavek je uzavřen.</p>
                </td>
                <td></td>
            </tr>
        </tbody>
    </table>

</asp:Content>

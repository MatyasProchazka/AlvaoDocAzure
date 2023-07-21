<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vazby mezi požadavky</h1>

    <p>
        Vazby na jiné požadavky se zobrazují na stránce <a href="../../list-of-windows/alvao-webapp/requests/request">Požadavek</a> - záložka <strong>Vazby </strong>. Vazby můžete zobrazit také přímo v <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">tabulce žádostí</a>   </p>

    <h2>Typy odkazů</h2>

    <table>
        <thead>
            <tr>
                <th>Typ odkazu</th>
                <th>Význam odkazu</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Vztahuje se k<br />

                    <img src="related.png" /></td>
                <td>
                    <p>Například dvě žádosti o změnu se týkají stejného zařízení (CI). Tyto požadavky <em>spolu souvisejí</em>.</p>
                    <p>Jedná se o obecný typ vazby. Na tento typ propojení není vázána žádná funkce.</p>
                </td>
            </tr>
            <tr>
                <td>Je nadřazený nad / Je podřazený pod<br />

                    <img src="superior_subordinated.png" /></td>
                <td>
                    <p>
                        Například <em>nadřízený</em> úkol se skládá z <em>podřízených</em> úkolů (dekompozice)             </p>
                    <p>
                        Nadřízený požadavek nelze uzavřít, pokud má otevřené podřízené požadavky          </p>
                    <p>
                        Po vyřešení každého podřízeného požadavku je řešiteli nadřazeného požadavku automaticky odesláno oznámení          </p>

                </td>
            </tr>
            <tr>
                <td>Předchází před / Následuje po<br />

                    <img src="previous_following.png" /></td>
                <td>
                    <p>Příklad: V případě, že je požadavek vyřízen v rámci jednoho požadavku, může být vyřízen v rámci jednoho požadavku:</p>
                    <ol>
                        <li><em>Předchozí</em> úlohy musí být vyřízeny chronologicky před <em>následujícími</em> úlohami.</li>
                        <li>Následující <em>požadavek</em> byl vytvořen na základě <em>předchozího</em> požadavku.</li>
                    </ol>
                    <p>
                        Používá se k doložení posloupnosti řešení nebo původu požadavku          </p>
                    </td>
            </tr>
            <tr>
                <td>Blokuje/je blokován<br />

                    <img src="duplicated_duplicate_complex.png" /></td>
                <td>
                    <p>
                        Například <em>blokovaný</em> požadavek lze spustit nebo dokončit až po dokončení <em>blokujícího</em> požadavku.<br />
                        Poznámka: Aplikace nijak neomezuje řešení nebo uzavření blokovaného požadavku          </p>
                    <p>Po vyřešení každého blokovaného požadavku je řešiteli blokovaného požadavku automaticky zasláno oznámení.</p>
                </td>
            </tr>
            <tr>
                <td>Je duplicitní / duplicitní<br />

                    <img src="duplicated_duplicate.png" /></td>
                <td>

                    <p>Například dva uživatelé nahlásili incidenty týkající se stejného problému. První incident bude Duplikovaný, druhý k němu bude Duplikovaný.</p>

                </td>
            </tr>
        </tbody>
    </table>

    <h2>ITIL</h2>

    <p>Pro vazby mezi záznamy jednotlivých procesů ITIL doporučujeme používat následující typy vazeb:</p>

   <img src="itil.png" /><p>Pro "jednoduchý" ITIL doporučujeme zaznamenávat všechny vazby  jako "související".</p>

    <p>Pokud chcete ITIL implementovat důsledněji, doporučujeme používat následující typy vazeb: - vazby  na procesy ITIL:</p>

    <table>
        <thead>
            <tr>
                <th>ITIL </th>
                <th>Typ odkazu</th>
                <th>Poznámka</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Incident - podobný incident (nadřízený - podřízený)</td>
                <td>Is Duplicated - Duplicates (je duplicitní)</td>
                <td>První incident je označen jako "Is Duplicated". Všechny ostatní incidenty související se stejnou závadou duplikují první incident.</td>
            </tr>
            <tr>
                <td>Incident - problém/známá chyba</td>
                <td>Souvisí s</td>
                <td>Incident se může vyskytnout k existujícímu problému. Problém může vzniknout k existujícímu incidentu. Proto není vhodné používat "Předchází před - následuje po".</td>
            </tr>
            <tr>
                <td>Incident - Požadavek na službu</td>
                <td>Předchází před - následuje po</td>
                <td>Servisní požadavek je vytvořen na základě incidentu (SR zpracovává incident).</td>
            </tr>
            <tr>
                <td>Incident - RFC (N:N) - RFC je vyvolán na základě incidentu</td>
                <td>Předchází před - Následuje po</td>
                <td>RFC řeší incident.</td>
            </tr>
            <tr>
                <td>RFC - Incident (vyvolaný)</td>
                <td>Předchází před - Následuje po</td>
                <td>Incident způsobený špatně implementovanou změnou.</td>
            </tr>
            <tr>
                <td>Problém - RFC</td>
                <td>Předchází před - Následuje po</td>
                <td>Problém je řešen prostřednictvím RFC.</td>
            </tr>
        </tbody>
    </table>

    <h2>Vlastní typy vazeb</h2>

    <p>Správce Alvao může v databázi v tabulce <a href="../../alvao-asset-management/implementation/customization/database#U_dbo.TicketRelationType">TicketRelationType</a> vytvořit vlastní typy vazeb. Změny systémových typů odkazů nejsou podporovány.</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Při vytváření nových typů odkazů zvolte začátek a konec odkazu tak, aby byl odkaz většinou vytvořen od počátečního požadavku. Při vytváření odkazu se nejprve nabízejí koncové názvy všech typů a poté počáteční název    </div>

</asp:Content>


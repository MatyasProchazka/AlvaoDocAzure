<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Incident Management</h1>
    <p>
        Účelem řízení incidentů je reagovat na neplánované situace, kdy služby nejsou poskytovány na dohodnuté úrovni (např. výpadek serveru Exchange nebo snížená dostupnost), a co nejrychleji obnovit normální provoz služeb. Důraz je kladen na minimalizaci dopadu výpadku služby na podnikání společnosti (Business Impact)    </p>
    <p>Z výše uvedeného vyplývá, že incidenty, které nelze vyřešit pomocí podpory 1. linie v interně dohodnutých lhůtách, např. pomocí databáze známých chyb a znalostní databáze, musí být neprodleně eskalovány technickým týmům.</p>
    <p>Pracovní postup záznamu incidentu může být definován službou, jejíž úroveň byla incidentem snížena pod dohodnutou prahovou hodnotu. Z praktického hlediska však doporučujeme z důvodu obecnosti neuvádět mnoho stavů a používat pouze stavy Nový - Vyřešený - Uzavřený požadavek. Rozdíly v typických postupech vedoucích k vyřešení incidentu v různých službách se mohou projevit v pokynech pro řešitele nebo i v samotném pracovním postupu. To je předmětem analýzy potřeb zákazníka. </p>

    <h2>Výchozí vzor procesu</h2>
    <p>Jedná se o výchozí vzor procesu, který si zákazník může dále upravit podle svých potřeb.</p>
    <table>
        <thead>
            <th>Stav</th>
            <th>Popis</th>
            <th>Pokyny pro řešitele</th>
        </thead>
        <tbody>
            <tr>
                <td>
                   <b>Nový</b></td>
                <td>Probíhá klasifikace incidentu. </td>
                <td>Zkontrolujte, zda se jedná o incident. Pokud ne, použijte příkaz &quot;Přesunout do jiné služby&quot; a přesuňte požadavek do správné služby       <br />
                    Určete prioritu řešení         <br />
                    Poté příkazem &quot;Přiřadit&quot; přiřaďte požadavek konkrétnímu řešiteli. </td>
            </tr>
            <tr>
                <td>
                   <b>Řešení</b> </td>
                <td>Probíhá řešení incidentu. </td>
                <td>Co nejrychleji obnovte běžný provoz služby       <br />
                    Nakonec incident uzavřete příkazem &quot;Close&quot;                 <br />
                    Pokud se jedná o známý problém, přiřaďte k němu Incident jako &quot;související&quot;                </td>
            </tr>
            <tr>
                <td>
                   <b>Uzavřeno</b> </td>
                <td>Požadavek byl uzavřen. Požadavek je uzavřen. </td>
                <td></td>
            </tr>
        </tbody>

    </table>


</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 { border-collapse: collapse; font-size: 10.0pt; font-family: Calibri, sans-serif; border: 1.calibri: 0pt solid #52A8FF; } </style>

</asp:Content>

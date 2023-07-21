<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">Problem Management</h1>
    <p>Řízení problémů se zabývá vyšetřováním a systémovou nápravou hlavních příčin incidentů. Správce problémů je obvykle vedoucím týmu infrastruktury (2. a 3. linie podpory).</p>
    <h2>Výchozí vzor procesu</h2>
    <p class="MsoNormal">Jedná se o výchozí vzor procesu, který si zákazník může dále přizpůsobit.</p>

    <table>
        <thead>
            <tr>
                <th>stav</th>
                <th>Popis</th>
                <th>Pokyny pro řešitele</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                   <b>Nový</b></td>
                <td>Probíhá klasifikace problému. </td>
                <td>Zkontrolujte, zda se jedná o problém. Pokud ne, použijte příkaz &quot;Přesunout do jiné služby&quot; a přesuňte požadavek do správné služby       <br />
                    Určete prioritu řešení         <br />
                    Poté příkazem &quot;Přiřadit&quot; přiřaďte požadavek konkrétnímu řešiteli k diagnostice problému.</td>
            </tr>
            <tr>
                
                   <td> <b>Diagnostika</b></td>Probíhá <td>diagnostika problému.</td>Zjistěte <td>příčinu problému. Analyzujte související incidenty. <br />Navrhněte potřebná opatření a alternativní řešení a zaznamenejte je. Případně založte související požadavek na změnu. <br />Nakonec změňte stav záznamu na &quot;Známá chyba</td>&quot; </tr>
            <tr>
                <td>
                   <b>Známá chyba</b></td>
                <td>Problém má popsanou příčinu a alternativní řešení.</td>
                <td>K problému připojte další vznikající incidenty         <br />
                    Po vyřešení problému uzavřete záznam příkazem &quot;Close&quot; (Zavřít).</td>
            </tr>
            <tr>
                <td>
                   <b>Uzavřeno</b></td>
                <td>Požadavek byl uzavřen. Požadavek je uzavřen. </td>
                <td></td>
            </tr>
        </tbody>

    </table>

</asp:Content>

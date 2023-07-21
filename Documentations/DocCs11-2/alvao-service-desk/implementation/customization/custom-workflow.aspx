<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní workflow</h1>

    <p>Tento typ úprav vyžaduje dobrou znalost databáze ALVAO Service Desk. Pracovní postup URL nastavíte v administraci služby<strong>(WebApp - Administration - Service Desk - Services - New Request Form</strong>). URL se vždy použije při zobrazení stránky s požadavkem. Adresa URL může obsahovat speciální symboly.</p>

    <table>
        <thead>
            <tr>
                <th>Symbol</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>~</td>
                <td>Představuje adresu webové aplikace</td>
            </tr>
            <tr>
                <td>{0}</td>
                <td>Představuje číslo požadavku (bez předpony a přípony)</td>
            </tr>
        </tbody>
    </table>
    <p>Například: &quot;<em>~/Custom/HdTicketNew_NewEmployee?iHdTicketId={0}</em>&quot;</p>

</asp:Content>

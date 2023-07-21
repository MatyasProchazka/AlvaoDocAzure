<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>GenerateProcessDiagram</h1>

    <h2>Popis funkce</h2>
    <p>Tato aplikace slouží k vygenerování stavového diagramu zadaného procesu v aplikaci Microsoft Visio. Tento nástroj funguje pouze v případě, že je v počítači nainstalována aplikace Microsoft Visio.</p>

    <h2>Syntaxe příkazových řádků</h2>

    <p>
       <strong>GenerateProcessDiagram.exe</strong> <strong>{/conn</strong><em> &quot;connection string&quot;</em> | <strong>/server</strong> <em>&quot;název databázového serveru&quot;</em> <strong>/db</strong>&quot; <em>název databáze&quot;</em>} { <strong>/process</strong> <em>&lt;číslo procesu&gt;</em> | <strong>/processName</strong> <em>&quot;název procesu&quot;</em>}    </p>

    <h2>Parametry</h2>

    <table>
        <thead>
            <tr>
                <th>Přepínač</th>
                <th>Popis</th>
                <th>Povinné</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/conn &quot;string&quot;<br />
                    /server &quot;název serveru&quot;<br />
                    /db &quot;název databáze&quot;</td>
                <td>Tyto parametry slouží k nastavení připojení k databázi Alvao. Můžete použít řetězec připojení (např. <strong>/conn</strong> <em>&quot;Zdroj dat=.\sqlexpress;Počáteční katalog=test;Integrované zabezpečení=True;TrustServerCertificate=True&quot;)</em> nebo jednoduše zadat konkrétní SQL server a DB (např. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test</em>&quot;)                </td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>/process &lt;process&gt;číslo&gt;<br />
                    /processName "název procesu"</td>
                <td>Tyto parametry identifikují příslušný proces. Je možné použít číslo procesu (např. <strong>/process</strong> 1) nebo zadat název procesu (např. <strong>/processName</strong> <em>&quot;General Request&quot;</em>)              </td>
                <td>Ano</td>
            </tr>
        </tbody>
    </table>

    <h2>Příklady použití</h2>
    <p>
        Zobrazení stavového diagramu procesu zadáním jednoduchého přihlašovacího jména k serveru SQL a čísla procesu:<br />
        GenerateProcessDiagram.exe /server &quot;.\sqlexpress&quot; /db &quot;test&quot; /process 1 </p>

</asp:Content>

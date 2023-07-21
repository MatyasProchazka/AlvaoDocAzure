<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>DatabaseDeploy</h1>

    <p>Nástroj DatabaseDeploy slouží k vytvoření nové databáze nebo k aktualizaci stávající databáze na nejnovější verzi.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Nástroj můžete spustit také v dávce příkazů. Pokud je vytvoření/aktualizace databáze úspěšná, vrací návratový kód 0, pokud se nepodaří, vrací 1 </div>

    <h2>Syntaxe příkazových řádků</h2>
    <p>DatabaseDeploy.exe <strong>/conn</strong> <i>&lt;řetězec připojení&gt;</i> <strong>/langid</strong> <i>&lt;identifikace jazyka&gt;</i></p>


    <h2>Podrobný popis parametrů</h2>
    <table>
        <tr>
            <th>Parametr</th>
            <th>Popis</th>
        </tr>
        <tr>
            <td>/conn &lt;řetězec&gt;</td>
            <td>Řetězec připojení k databázi.<br />
                Poznámka: v připojovacím řetězci se nastavuje také název databáze. </td>
        </tr>
        <tr>
            <td>/langid &lt;identifikátor jazyka&gt;</td>
            <td>ID jazyka databáze. Podporované hodnoty:<br />
                <ul>
                    <li>1029 - čeština</li>
                    <li>1051 - slovenština</li>
                    <li>1033 - angličtina</li>
                    <li>1031 - němčina</li>
                    <li>1045 - polština</li>
                </ul>
                Poznámka: tento parametr se použije pouze při vytváření nové databáze.  </td>
        </tr>

        <tr>
            <td>/collation</td>
            <td>Collation nové databáze, pokud není zadán, použije se výchozí collation databázového serveru </td>
        </tr>

    </table>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Pozn:</div>
        <ul>
            <li>Parametry příkazového řádku můžete nastavit také v souboru DatabaseDeploy.exe.config. Parametry příkazového řádku mají přednost před nastavením v konfiguračním souboru.</li>
            <li>Nástroj očekává, že soubor s definicí databáze Alvao <i>AlvaoDatabase.dacpac</i> existuje ve stejné složce.</li>
        </ul>
    </div>

    <h2>Příklad použití</h2>


    <ol>
        <li>Vytvořte novou českou databázi s názvem "ALVAO" na místním počítači s SQL Serverem s názvem instance "sqlexpress" pomocí integrovaného ověřování Windows:<br />
           <strong>DatabaseDeploy.exe /conn</strong> "Data Source=.\sqlexpress;Initial Catalog=ALVAO;Integrated Security=True;TrustServerCertificate=True" <strong>/langid</strong> 1029 </li>
        <li>Upgradujte databázi s názvem "ALVAO" na server SQL na serveru "SERVER1" pomocí uživatelského jména a hesla SQL:<br />
           <strong>DatabaseDeploy.exe /conn</strong> "Data Source=SERVER1,1433;Initial Catalog=ALVAO;User ID=user1234;Password=secret1234;TrustServerCertificate=True" </li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Další příklady připojovacích řetězců naleznete v části <a href="connection-string-samples">Příklady připojovacích řetězců</a>   </div>

</asp:Content>

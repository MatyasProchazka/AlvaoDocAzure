<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nové pravidelné upozornění</h1>
  <p>Tento formulář slouží k vytvoření nového <a href="detail">periodického upozornění</a>.</p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Špatně definovaný dotaz SQL může nenávratně poškodit databázi Alvao. SQL dotazy vždy vytvářejte a testujte na testovací kopii produkční databáze    </div>

  <p>Možnosti:</p>
	<ul>
  <li><strong>Název</strong> - zadejte název výstrahy.</li>
  <li><strong>Popis</strong> - zadejte popis výstrahy.</li>
  <li><strong>SQL skript</strong> - vložte skript pro vyhodnocení alertu.  Další informace o vytváření skriptů a příklady naleznete v části <a href="../../../../alvao-asset-management/implementation/periodic-alerts">Periodické výstrahy</a></li>
  <li><strong>Spustit nad analytickou databází</strong> - povolte, pokud chcete, aby se výstrahy vyhodnocovaly v <a href="../../../../alvao-asset-management/implementation/analytic-database">analytické databázi</a>. Použití analytické databáze má tu výhodu, že výpočetně náročnější dotazy nezpomalují produkční databázi, a proto mohou běžet až 10 minut, zatímco limit pro dotazy do produkční databáze je nastaven na 30 sekund.  Tato možnost je aktivní pouze v případě, že je povoleno používání analytické databáze.</li>
  <li><strong>Datová tabulka, která má být připojena jako soubor CSV</strong> - povolte, pokud chcete datovou tabulku připojit k e-mailu také jako soubor CSV.</li>
 <li><strong>Plánování</strong><ul>
     <li><strong>Spustit</strong> - zadejte datum a čas, kdy se upozornění začne odesílat. Pokud se opakuje, bude upozornění odesláno vždy v zadaný čas.</li>
     <li><strong>Období odesílání</strong> - vyberte období, ve kterém budou výstrahy vyhodnocovány a odesílány.</li>
     </ul>
        </li>
</ul>

</asp:Content>

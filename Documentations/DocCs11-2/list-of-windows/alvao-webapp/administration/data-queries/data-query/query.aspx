<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Dotaz</h1> 
<p>Na této stránce zadejte dotaz SQL.</p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Špatně zadaný dotaz SQL může nenávratně poškodit databázi Alvao. SQL dotazy vždy vytvářejte a testujte na testovací kopii produkční databáze.</div>


<p>Možnosti:</p>
	<ul>
  <li><strong>Příkazový panel</strong><ul>
      <li><strong>Uložit</strong> - uloží změny.</li>
      <li><strong>Spustit</strong> - spustí dotaz SQL a zobrazí náhled výsledků.</li>
      </ul>
        </li>
  <li><strong>Editor dotazů</strong> - zadání dotazu SQL.</li>

	</ul>

    <p>
        V dotazu SQL můžete použít následující proměnné:</p>
    <ul>
        <li>@personId - ID uživatele<a href="../../../../../alvao-asset-management/implementation/customization/database#U_dbo.tPerson">(tPerson</a>.iPersonId), který provádí dotaz na data.</li>
        <li>@localeId - LCID<a href="../../../../../alvao-asset-management/implementation/customization/database#U_dbo.tLocale">(tLocale</a>.iLocaleId) preferovaného jazyka uživatele, který spouští datový dotaz.</li>
        <li>@customId - hodnota řetězcového parametru dotazu <em>customId</em>. Tuto proměnnou můžete použít v uživatelských úpravách, např. v <a href="../../../../../modules/alvao-am-custom-apps/applications/i-entity-tab">IEntityTab</a>. Adresa URL datového dotazu může vypadat například takto: <em>https://contoso.onalvao.com/Alvao/DataQuery/Result?id=1&amp;customId=1.</em></li>
    </ul>
    <p>
        Na stránce <a href="../../../data-queries">Datové dotazy</a> mohou uživatelé zobrazit všechny sloupce vrácené dotazem SQL. Pokud název sloupce končí na &quot;TicketId&quot;, &quot;NodeId&quot; nebo &quot;PersonId&quot; (např. &quot;MentorPersonId&quot;), zobrazí se hodnoty jako vazby  na odpovídající stránku entity. Je-li vybrán celý řádek, zobrazí se vpravo stránka entity pro první takový sloupec.</p>
    <p>
        Jako příklad použijte dotazy SQL v <a href="../../../../../alvao-asset-management/searching/database-sql/samples">příkladech dotazů SQL</a>.</p>

</asp:Content>

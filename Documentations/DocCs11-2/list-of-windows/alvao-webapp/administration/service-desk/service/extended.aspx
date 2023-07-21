<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Rozšířené</h1>
<p>Tato část formuláře <a href="create-service">Nová služba</a> obsahuje další nastavení služby.</p>
<p>Možnosti:</p>

	<ul>
 <li><p><strong>Zobrazit volitelné položky žadateli</strong>- určete volitelné položky požadavku, které se zobrazí na stránce požadavku žadateli bez jiné uživatelské role.</p>
 <p>Můžete zadat jednu nebo více hodnot oddělených čárkou, přičemž každá hodnota odpovídá jedné položce požadavku:</p>
  <table>
 <thead>
 <tr>
 <th>Hodnota</th>
 <th>Položka požadavku</th>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>tHdTicket.RelatedAccountId</td>
 <td>Související organizace</td>
 </tr>
 <tr>
 <td>tHdTicket.Impact</td>
 <td>Podzim</td>
 </tr>
 <tr>
 <td>tHdTicket.Urgency</td>
 <td>Urgency</td>
 </tr>
 <tr>
 <td>tHdTicket.Priorita</td>
 <td>Priorita</td>
 </tr>
 <tr>
 <td>tHdTicket.sHdTicketDeviceCode</td>
 <td>Číslo zařízení</td>
 </tr>
 <tr>
 <td>tHdTicket.Objects</td>
 <td>Objects - žadatelé uvidí záložku Objects na stránce Požadavky.</td>
 </tr>
 <tr>
 <td>tHdTicket.liHdTicketSlaId</td>
 <td>SLA a její popis</td>
 </tr>
 <tr>
 <td>tHdTicketCust.&lt;název sloupce vlastního pole v databázi&gt;</td>
 <td><a href="../../../../../alvao-service-desk/implementation/custom-items">Vlastní položka</a></td>
 </tr>

 </tbody>
  </table>

  <p>Na stránce požadavku žadatelé vidí pouze položky povolené v <a href="../../../../../alvao-service-desk/implementation/services/processes">procesu</a> služby.</p>

 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Na <a href="detail/new-ticket-items">formuláři new-ticket-request</a> lze položky žadateli zobrazit nezávisle na tomto nastavení </div>


 </li>
 <li><strong>Lhůta pro znovuotevření požadavku žadatelem (dny)</strong>- Zadejte počet dní od vyřešení, po které může žadatel <a href="../../../../../alvao-service-desk/requests/reopen-for-further-resolution">požadavek znovu otevřít</a>. Hodnota 0 znamená, že žadatel nemůže vyřešený požadavek znovu otevřít.</li>
 <li><strong>V případě pokusu o znovuotevření po uplynutí lhůty vytvořte nový požadavek</strong> - pokud je tato možnost vypnuta a po uplynutí lhůty pro znovuotevření vyřešeného požadavku žadatel odešle zprávu k požadavku (např. reaguje na oznámení o vyřešení), systém reaguje oznámením žadateli, že zpráva byla odmítnuta (zpráva je uložena v komunikaci s požadavkem a řešitel(é) nebo provozovatelé služby jsou informováni oznámením, ale požadavek zůstává vyřešen). Pokud tuto možnost povolíte, systém poté vytvoří nový požadavek na základě zprávy žadatele a informuje žadatele obvyklým oznámením o vytvoření požadavku. Mezi novým požadavkem a požadavkem, na který byla zpráva původně směrována, se automaticky vytvoří odkaz.</li>
 <li><strong>Ve službě</strong> - vyberte službu, ve které má být nový požadavek vytvořen. Volba <em>&lt;Tato služba&gt;</em> představuje službu, která je upravována. Službu můžete také vybrat ze stromu kliknutím na tlačítko [...] za vstupním polem. Žadatel musí mít SLA přiřazenou k vybrané službě, jinak se nový požadavek v této službě nevytvoří.</li>
 </ul>
 <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip: V případě, že se vám nepodařilo zjistit, zda je služba v pořádku, můžete si vybrat, zda ji chcete použít:</div>
 Po zapnutí této možnosti doporučujeme nastavit výše uvedenou lhůtu pro opětovné otevření požadavku na více než 0 dní, jinak bude nový požadavek vytvořen pokaždé, když bude žadatel reagovat po vyřešení požadavku.</div>



<ul>
<li><strong>Žadatelé vidí požadavky jiných žadatelů</strong>- Povolte, pokud chcete žadatelům v této službě umožnit zobrazit také požadavky jiných žadatelů ze stejné organizace.</li>
 <li><strong>Nadřízení vidí požadavky svých podřízených</strong> - Povolte, pokud chcete nadřízeným povolit zobrazování požadavků jejich podřízených v této službě.</li>
 <li><strong>Vlastní pracovní postup (URL)</strong>- zadejte URL vlastní stránky požadavku, která se má v případě potřeby použít místo výchozí systémové stránky požadavku.</li>
 <li><strong>Použít dotazník spokojenosti</strong> - povolte, pokud chcete použít dotazník spokojenosti. Ke každému standardnímu oznámení o vyřešení požadavku přidejte krátkou zprávu s odkazem na <a href="../../../../../modules/alvao-satisfaction-feedback">tento dotazník</a>.</li>
 <li><strong>Vlastní dotazník (URL</strong> ) - zadejte adresu URL <a href="../../../../../modules/alvao-satisfaction-feedback#special">vlastního dotazníku spokojenosti, který</a> se má použít místo systémového dotazníku. <br />Například <span class="console">Vlastní/&lt;název společnosti&gt;/&lt;název dotazníku&gt;.</span></li>
	</ul>


</asp:Content>

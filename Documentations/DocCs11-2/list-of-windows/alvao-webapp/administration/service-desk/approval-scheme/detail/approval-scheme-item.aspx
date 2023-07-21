<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Schvalovací krok</h1>
<p>Toto okno slouží k vytvoření a úpravě kroku upravovaného <a href="../../../../../../alvao-service-desk/implementation/services/processes/request-approval">schvalovacího schématu</a>.</p>
<p>Možnosti:</p>
<ul>
	<li><strong>Schvalovatel</strong> - vyberte schvalovatele pro tento krok schvalování.<ul>
 <li><strong>Requester (Žadatel)</strong> - schvalovatelem bude aktuální žadatel požadavku.<div class="note">
  <div class="icon">
  </div>
  <div class="title">
  Poznámka:</div>
 Pokud je zadavatelem požadavku neregistrovaný uživatel (Guest), bude schvalovací krok schválen automaticky. To platí i pro schvalovatele <em>The requester's direct manager (Přímý manažer žadatele</em> ) a <em>The requester's top manager (Vrchní manažer žadatele</em> ).</div>
  <div class="note">
  <div class="icon">
  </div>
  <div class="title">
  Poznámka:</div>
 Pokud se v průběhu schvalovacího procesu změní žadatel požadavku, nový žadatel bude moci požadavek schválit, ale neobdrží dodatečné e-mailové oznámení o zahájení schvalování.  To platí i pro schvalovatele <em>The requester's direct manager (Přímý nadřízený žadatele</em> ) a <em>The requester's top manager (Vrchní nadřízený žadatele</em> ).</div>
  </li>
  <li><strong>Přímý manažer žadatele</strong> - schvalovatelem bude přímý nadřízený uživatele, pro kterého byl požadavek vytvořen, viz <a href="../../../../../../list-of-windows/alvao-webapp/requests/table-of-requests">Požadováno pro</a>. Požadavek se obvykle vytváří pro žadatele požadavku. Pokud je nadřízený zároveň zadavatelem požadavku, je krok automaticky schválen.</li>
  <li><strong>Nejvyšší nadřízený žadatele</strong> - Schvalovatelem bude nejvyšší nadřízený uživatele, pro kterého byl požadavek vytvořen, tj. uživatel, který je v organizační hierarchii nad uživatelem vybraným v poli <em>Požadováno pro </em>a nemá žádného nadřízeného. Požadavek se obvykle vytváří pro žadatele požadavku. Pokud je nejvyšší nadřízený zároveň Zadavatelem požadavku, je krok automaticky schválen.</li>
  <li><strong>Skupina</strong> - schvalovateli budou všichni členové zadané <a href="../../../../../../alvao-asset-management/implementation/users/groups">skupiny uživatelů</a>. Stačí, když krok schválí nebo zamítne kterýkoli z nich. <ul>
  <li><strong>Pouze žadatel nebo vedoucí</strong> - zapněte, pokud chcete ze členů zadané skupiny vybrat jako schvalovatele pouze vedoucího uživatele, pro kterého byl požadavek vytvořen, nebo přímo tohoto uživatele. Pokud například vyberete skupinu <em>Ředitelé divizí</em> a zapnete tuto možnost, bude požadavek schvalovat pouze ředitel divize, kterému je uživatel, pro nějž byl požadavek vytvořen, podřízen. Pokud skupina obsahuje více ředitelů, bude jako schvalovatel vybrán nejbližší z nich (tj. ten, který je v organizační hierarchii nejníže).</li>
  </ul>
  </li>
  <li><strong>Vlastní</strong> - schvalovatelé jsou definováni vlastním rozšířením Alvao pro zákazníky.</li>
  <li><strong>Automaticky schvaluje žadatel</strong> - pokud je tato možnost povolena a schvalovatelem kroku je aktuální žadatel požadavku, bude krok automaticky schválen. Tato možnost je k dispozici pouze pro typy <em>Group</em> a <em>Custom</em>.</li>
  
	</ul></li>
  <li><strong>Vyprší v (hodinách</strong> ) - v případě potřeby zadejte dobu v hodinách (bez ohledu na provozní dobu, víkendy a svátky), kterou mají schvalovatelé na schválení nebo zamítnutí požadavku. Pokud schvalovatel v této době nerozhodne, schválení se automaticky ukončí (vyprší) a žádné další kroky ve schvalovacím schématu se neprovedou.</li>
	<li><strong>Vlastní formulář (URL</strong> ) - v případě potřeby zadejte cestu k<a href="../../../../../../modules/alvao-sd-custom-apps/custom-form-template">vlastnímu formuláři pro schválení/zamítnutí</a> žádosti, pokud jej chcete v tomto kroku použít.</li>
</ul>

<div class="note">
<div class="icon"></div>
<div class="title">Poznámka:</div>
Pokud nastane situace, kdy pro schvalovací krok neexistuje žádný schvalovatel, např. žadatel nemá nadřízeného nebo vybraná skupina schvalovatelů nemá žádné členy, schvalovací krok se přeskočí. Pokud je to jediný krok ve schvalovacím schématu, pak se schvalování nezahájí a je třeba ručně postoupit do dalšího stavu. V případě posledního kroku schématu je schvalování ukončeno s výsledkem předchozího kroku. </div>


</asp:Content>

<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">
</asp:Content>


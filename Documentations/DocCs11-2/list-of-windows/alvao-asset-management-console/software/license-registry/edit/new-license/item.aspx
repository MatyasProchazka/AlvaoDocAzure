<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Položka licence</h1>
<p> V tomto okně můžete upravit položku licence, tj. počítač nebo uživatele, kterému je licence přiřazena, a další podrobnosti o tomto přiřazení.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Počítač/uživatel</strong> - vyberte ze seznamu počítač nebo uživatele, kterému chcete licenci přiřadit. Případně použijte <strong>.</strong>.. vybrat v novém okně <a href="../../../license-and-install-overview/actions/computers">Počítače</a> nebo <a href="../../../license-and-install-overview/actions/users">Uživatelé</a>.<br/><div class="note">
 <div class="icon"></div>
 <div class="title">Poznámky: V případě, že se jedná o licenci, která je součástí licence, je možné ji zadat:</div>
 <ul>
 <li>Pokud přidáváte nové položky, můžete také vybrat více počítačů/uživatelů najednou. Upravovat lze pouze jednu položku.</li>
 <li>Nabízejí se pouze počítače/uživatelé, kterým ještě nebyla přiřazena licence.</li>
 <li>Pokud změníte počítač existující licenční položky, tato změna se promítne do celé historie aktualizací, tj. i do položek, ke kterým je tato licence přiřazena.</li>
 </ul></div></li>
 <li><strong>Počet přiřazených licencí -</strong> zadejte počet licencí, které chcete přiřadit vybranému počítači. Toto pole se zobrazuje pouze pro licence jádra  <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Počet fyzických jader vybraného počítače je uveden v poli Počítač. </div>
 </li>

 <li><strong>Aktivační klíč</strong> - Zadejte aktivační klíč licence. <br/>Pokud uživateli přiřazujete licenci MSDN, zadejte zde identifikační číslo MSDN. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Tato hodnota bude v databázi uložena v nezašifrované podobě! </div></li>
 <li><strong>Nákladové středisko</strong> - případně vyberte nebo zadejte <a href="../../../license-and-install-overview/view">nákladové středisko</a>, pro které je položka licence určena. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámky:</div>
 <ul>
 <li>Pokud nezadáte žádnou hodnotu, bude licence dostupná pro všechna nákladová střediska.</li>
 <li>Pokud změníte nákladové středisko pro existující licenční položku, změna se promítne do celé historie aktualizací, včetně položek, s nimiž je licence spojena.</li>
 </ul></div></li>
 <li><strong>Inventární číslo</strong> - zadejte inventární číslo, pod kterým bude tato licenční položka evidována v účetním systému.</li>
 <li><strong>Požadavek</strong> - lze zadat číslo nebo jiný odkaz na požadavek související s položkou licenčního požadavku, např. požadavek na nákup apod.</li>
 <li><strong>Poznámka</strong> - zapište poznámku k licenční položce.</li>
 <li><strong>Zadat další položku</strong> - zapněte, pokud chcete zadat další licenční položku. (Tato volba je k dispozici pouze v případě, že zapisujete novou licenční položku)</li>
	</ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Pokud nezadáte <em>&quot;sériové číslo</em>&quot;, <em>&quot;středisko&quot;</em> nebo <em>&quot;inventární číslo</em>&quot;, automaticky se použije odpovídající hodnota uvedená v licenci. </div>

</asp:Content>

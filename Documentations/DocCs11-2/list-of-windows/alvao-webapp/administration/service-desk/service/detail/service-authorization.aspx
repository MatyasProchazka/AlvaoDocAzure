<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přidání oprávnění</h1>
<p>Toto okno umožňuje přidat nebo odebrat oprávnění uživateli nebo skupině uživatelů ve službě, kterou upravujete.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Vyberte osobu nebo skupinu</strong> - zadejte alespoň část jména uživatele nebo názvu skupiny a vyberte uživatele nebo skupinu z rozevírací nabídky. Tím se vybraný uživatel nebo skupina přidá do seznamu pod vstupní pole. Můžete vybrat několik uživatelů a skupin najednou nebo pomocí tlačítka [...] vybrat několik položek z tabulky najednou ( <a href="../../../../../../alvao-asset-management/working-with-tables">obsah tabulky</a> můžete <a href="../../../../../../alvao-asset-management/working-with-tables">přizpůsobit</a>) </li>
 <li><strong>Oprávnění</strong> - v každém řádku povolte nebo zakažte příslušná <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">oprávnění</a>. <ul>
  <li>Hlavní řešitel</li>
  <li>Manažer</li>
  <li>Řešitel</li>
  <li>Řešitelská skupina</li>
  <li>Mimořádný řešitel</li>
  <li>Zapisovatel požadavků</li>
  <li>Čtenář</li>
 </ul>
 </li>
 <li><strong>Pro žadatele ze skupiny</strong> - pokud chcete nastavit <a href="../../../../../../alvao-service-desk/implementation/services/service-roles/multiple-teams-for-service">více řešitelských skupin</a>, zadejte do pole část názvu skupiny a poté z nabídky vyberte skupinu žadatelů, na kterou se oprávnění vztahuje. Skupinu žadatelů nelze vybrat pro odmítnutí oprávnění. Oprávnění lze odepřít pouze žadatelům ve skupině <em>All (Všichni)</em>.</li>
	</ul>
  


</asp:Content>

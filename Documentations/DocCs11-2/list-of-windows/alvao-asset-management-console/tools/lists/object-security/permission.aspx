<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Oprávnění</h1>
<p>V tomto okně definujete přístupová práva uživatele (nebo skupiny) ke konkrétnímu objektu ve stromu nebo k celému podstromu. Oprávnění jsou implementována pomocí <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">zabezpečení objektů</a>. Oprávnění lze povolit, zakázat nebo různě kombinovat. Lze je nastavit buď pro skupinu uživatelů, nebo pro konkrétního uživatele.</p>
	<ul>
 <li><strong>Skupina</strong> - z nabídky vyberte skupinu uživatelů, pro kterou chcete oprávnění nastavit.</li>
 <li><strong>User (Uživatel)</strong> - z nabídky vyberte uživatele, pro kterého chcete nastavit oprávnění.</li>
 <li>
<a href="../../../../alvao-webapp/administration/users/detail/securityobject-authorization/select-object">Objekt</a> - vyberte objekt ve stromu, pro který chcete oprávnění definovat. Strom otevřete pomocí tlačítka <strong>.</strong>...</li>
 <li><strong>Včetně podřízených objektů</strong> - zapněte, pokud se má oprávnění vztahovat na vybraný objekt a také na všechny jeho podřazené objekty (tj. podstromy). (Pokud je vypnuto, oprávnění se vztahuje pouze na vybraný objekt.)</li>
 
 <li><strong>Objekty daného druhu</strong> - vyberte typ objektu z nabídky (např. <em>Tiskárna</em>). Oprávnění se bude vztahovat pouze na objekty tohoto typu. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Tato položka má praktický smysl pouze při <strong>zapnuté volbě. Včetně podřízených objektů</strong></div></li>
 
 <li><strong>Oprávnění</strong> - viz <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">Zabezpečení objektu</a>.</li>
	</ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 <ul><li>Aby bylo možné nastavená přístupová oprávnění aplikovat na objekty ve stromu, je nutné v nastavení Správy majetku v Administraci povolit volbu <strong>Použít oprávnění ve stromu objektů</strong> (více informací naleznete v příručce k tomuto programu).</li>
	
 <li>Oprávnění lze definovat buď pro uživatele, nebo pro skupinu uživatelů - nikoli pro oba najednou.</li></ul>
	</div>

</asp:Content>

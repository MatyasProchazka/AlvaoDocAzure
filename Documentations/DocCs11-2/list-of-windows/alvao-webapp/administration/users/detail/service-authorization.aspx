<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přidání oprávnění</h1>

<p>Formulář slouží k nastavení <a href="../../../../../alvao-service-desk/implementation/services/service-roles">uživatelských oprávnění ve službách</a>. Jeden uživatel (nebo skupina) může mít více oprávnění.<br/>V horní části vyberte, na které služby se oprávnění vztahují, a v dolní části vyberte uživatelskou roli, jejíž oprávnění chcete povolit.</p>


<p>Volby: V nabídce jsou uvedeny možnosti, jak nastavit oprávnění:</p>
	<ul>
 <li><strong>Vyberte služby, pro které chcete nastavit oprávnění</strong> - vyberte službu nebo více služeb, na které se budou oprávnění vztahovat </li>
 <li><strong>Oprávnění</strong><ul>
		<li><strong>Hlavní řešitel</strong> - povolte nebo zakažte oprávnění hlavního řešitele ve vybraných službách.</li>
		<li><strong>Manažer</strong> - povolte nebo zakažte oprávnění manažera ve vybraných službách.</li>
		<li><strong>Solver</strong> - povolte nebo zakažte oprávnění solveru ve vybraných službách.</li>
		<li><strong>Skupina řešitelů</strong> - povolte nebo zakažte oprávnění skupiny řešitelů ve vybraných službách.</li>
		<li><strong>Výjimečný řešitel</strong> - povolení nebo zakázání oprávnění ve vybrané službě.</li>
		<li><strong>Reportér požadavků</strong> - povolte nebo zakažte oprávnění reportéra ve vybraných službách.</li>
		<li><strong>Čtenář</strong> - povolte nebo zakažte oprávnění čtenáře ve vybraných službách.</li>
	</ul>
 </li>
 <li><strong>Pro žadatele ze skupiny</strong> - pokud chcete používat <a href="../../../../../alvao-service-desk/implementation/services/service-roles/multiple-teams-for-service">více týmů služeb</a>, <a href="../../../../alvao-webapp/administration/users/detail/select-group">vyberte skupinu</a> žadatelů, na kterou se oprávnění vztahuje. Při zamítnutí oprávnění nelze vybrat skupinu žadatelů. Oprávnění lze zamítnout pouze pro žadatele ze skupiny <em>Všichni</em>.</li>
	</ul>
	

</asp:Content>

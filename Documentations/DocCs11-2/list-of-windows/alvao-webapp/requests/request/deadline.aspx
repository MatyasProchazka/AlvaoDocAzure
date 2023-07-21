<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Termín</h1>
<p>Pomocí tohoto formuláře můžete změnit <a href="../../../../alvao-service-desk/requests/deadline">termín</a> vybraných žádostí.</p>
<p>Možnosti:</p>

	<ul>
 <li><strong>Termín</strong> - zadejte datum a čas, do kterého bude požadavek vyřízena.</li>
 <li><strong>Zpráva pro žadatele</strong> - zadejte zprávu pro žadatele, která mu bude zaslána v e-mailovém oznámení. Ve zprávě pro žadatele vysvětlete důvody změny lhůty pro vyřešení žádosti.</li>
	<li><strong>Zpráva o nákladech</strong> - v případě potřeby <a href="../../../../alvao-service-desk/requests/work-time">vysvětlete pracovní čas stráv</a> ený řešením požadavku.</li>

 <li><strong>Nezasílat oznámení žadateli</strong> - zapněte, pokud nechcete žadatele informovat o změně lhůty.</li>
	</ul>

</asp:Content>

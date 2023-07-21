<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Audit</h1>
<p>V tomto okně můžete vybrat, jak chcete produkt auditovat.</p>
<p>Možnosti:</p>
<ul>
	<li>Zvolte si z nabídky: <strong>Audit</strong> - vyberte:<ul>
 <li><strong>Ano</strong> - provedete audit produktu.</li>
 <li><strong>Ne</strong> - produkt nikdy neauditujte.</li>
 <li><strong>E-mailové upozornění</strong> - pokud používáte modul <a href="../../../../modules/alvao-sam-assistant">SAM Assistant</a>, bude v případě instalace produktu, na který se nevztahuje licence, odeslán e-mail osobám odpovědným za software na počítačích.</li>
	</ul></li>
</ul>
</asp:Content>

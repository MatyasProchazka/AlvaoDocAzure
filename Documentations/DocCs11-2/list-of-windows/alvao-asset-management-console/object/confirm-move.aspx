<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přesun objektu</h1>
<p>Toto okno slouží k potvrzení přesunu objektu. Zobrazuje přesunutý objekt, zdrojový objekt a cílový objekt.</p>

	<ul>
 <li><strong>Přesunout</strong> - dokončení popsaného přesunu.</li>
 <li><strong>Přesunout vše</strong> - dokončí přesun všech vybraných objektů. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Je k dispozici pouze v případě, že jste vybrali více objektů k přesunu (např. na kartě Podřazené objekty nelze vybrat více objektů ve stromu).</div></li>
 <li><strong>Storno</strong> - zruší připravený přesun.</li>
 <li><strong>Potvrdit přesun objektů</strong> - vypněte, pokud chcete přesouvat objekty přímo a nepotvrzovat tento dialog. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Potvrzení přesunu můžete opět zapnout pomocí <strong>Nástroje</strong> - <strong>Nastavení</strong> - záložka <a href="../tools/settings/general">Obecné</a> - <strong>Potvrzení přesunutých objektů</strong></div> možnost</li>
	</ul>
</asp:Content>

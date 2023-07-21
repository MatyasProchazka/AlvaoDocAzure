<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Druh objektu</h1>
<p>V tomto okně můžete upravit nebo vytvořit nový <a href="../../../../alvao-asset-management/implementation/node-class">Typ objektu</a>.</p>
	<ul>
 <li><strong>Object kind</strong> - zadejte název nového typu objektu.</li>
 <li><strong>Počítač</strong> - povolte, pokud se jedná o typ počítače. Objekty tohoto typu budou mít rozšířenou funkčnost: <a href="../../../../alvao-asset-management/implementation/detection">detekce HW a SW</a>, přidělování licencí SW atd. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Tuto volbu lze nastavit pouze při vytváření typu objektu a nelze ji později změnit.</div>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Objekty typu Computer čerpají licenci k produktu ALVAO Asset Management.</div></li>
	</ul>
</asp:Content>

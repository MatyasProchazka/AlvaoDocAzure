<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Další</h1>
<p>Na této kartě lze vyplnit podrobnější informace o organizaci.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Podrobnosti o organizaci načtené z <a href="../../../../../alvao-asset-management/software-management/custom-swlib">knihoven softwarových produktů</a>nelze upravovat</div>
<p>Možnosti: V této položce je možné zadat organizaci, která je v organizaci:</p>
	<ul>
 <li><strong>Valid record (Platný záznam</strong> ) - vypněte, pokud chcete firmu/organizaci vyloučit ze seznamu firem/organizací. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Tento krok nelze vrátit zpět. </div></li>
 <li><strong>UID</strong> - zobrazí identifikační číslo záznamu společnosti. Číslo je automaticky přiřazeno novým záznamům.</li>
 <li><strong>Datum</strong> - zobrazí datum poslední změny.</li>
 <li><strong>Certifikováno</strong> - zobrazte certifikační autoritu, která záznam vytvořila.</li>
 <li><strong>Popis</strong> - zadejte případný komentář k tomuto záznamu.</li>
	</ul>

	

</asp:Content>

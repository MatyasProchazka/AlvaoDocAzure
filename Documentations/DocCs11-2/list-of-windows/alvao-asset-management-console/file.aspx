<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Soubor</h1>
<p>Nabídka Soubor slouží k práci s databází, analytickým excelem a <a href="../../alvao-asset-management">správou majetku ALVAO</a>.</p>
<p>Funkce:</p>
	<ul>
 <li>
<a href="file/db-manager">Databáze</a> - otevření nebo vytvoření nové databáze.</li>
 <li><strong>Uložit jako</strong> - uložení informací o objektech vybraných v tabulce (k dispozici jsou formáty csv a html).</li>
 <li><strong>Analyzovat v MS Excel</strong> - zobrazení informací o objektech vybraných v tabulce v analytickém Excelu.</li>
 <li><strong>Tisk</strong> - zobrazení informací o vybraném objektu v náhledu tisku. Z nabízených <a href="../alvao-webapp/administration/asset-management/print-report-templates">šablon</a> vyberte tu, která vám nejvíce vyhovuje. U některých budete muset <a href="file/query-parameters">Zadat parametry dotazu</a>.<br/>Pokud vyberete sestavu pro <strong>Předávací protokol</strong>, otevře se příslušné okno pro vyplnění potřebných informací o předání:<ul>
 <li><a href="../alvao-webapp/objects/object/print">Předávací protokol Externí</a></li>
 <li><a href="../alvao-webapp/objects/object/print">Interní předávací protokol</a></li>
 </ul></li>
 <li><strong>Exit</strong> - ukončení aplikace ALVAO Asset Management.</li>


	</ul>


</asp:Content>

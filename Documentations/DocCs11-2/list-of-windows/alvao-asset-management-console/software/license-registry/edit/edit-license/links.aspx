<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Vazby</h1>
<p>V tomto okně můžete spravovat <a href="../../../../../../alvao-asset-management/software-management/licenses-links">vazby mezi licencemi</a>. V tabulce jsou zobrazeny existující vazby  (aktuálně upravované licence).<br/>Vazby mezi licencemi mohou být následujících typů:</p>


 <table>
	<thead>
 <th>Typ propojení</th>
 <th>Popis</th>
	</thead>
	<tbody>
 <tr>
  <td>Related to - Související s</td>
  <td>Licence A souvisí s licencí B.</td>
 </tr>
 <tr>
  <td>Předchází před - Následuje po</td>
  <td style="mso-bidi-font-size: 11.0pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: CS; mso-fareast-language: EN-US; mso-bidi-language: AR-SA" class="style2">
  Licence A předchází licenci B. Například: Licence MS Office 20003 předchází licenci MS Office 2010.</td>
 </tr>
	</tbody>
</table>
<p>Možnosti:</p>
	<ul>

 <li><strong>Přidat</strong>- přidá nový odkaz.</li>
 <li><strong>Upravit</strong>- upraví vybraný odkaz.</li>
 <li><strong>Odebrat</strong> - odebere vybraný odkaz.</li>
	</ul>

	
</asp:Content>

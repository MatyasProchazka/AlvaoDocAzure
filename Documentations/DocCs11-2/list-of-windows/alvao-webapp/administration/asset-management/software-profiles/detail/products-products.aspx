<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přidat produkty</h1>
<p>Toto okno slouží k přidání sw produktů do upravovaného <a href="products">softwarového profilu</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Zadejte alespoň 3 znaky .</strong>.. - zadejte část názvu hledaného produktu a stiskněte tlačítko lupy na konci řádku.</li>
 <li><strong>Vyberte možnost Produkty, ...</strong> - vyberte produkty, které chcete přidat do svého profilu. V tabulce se zobrazí nalezené výrobky v závislosti na hledaném textu.</li>
 <li><strong>Přítomnost</strong> - z nabídky vyberte režim přítomnosti vybraných výrobků <table>
  <thead>
 <tr>
 <th>Režim přítomnosti</th>
 <th>Popis</th>
 </tr>
  </thead>
  <tbody>
 <tr>
 <td>Volitelné</td>
 <td>Produkt <strong>může</strong> být nainstalován v počítači.</td>
 </tr>
 <tr>
 <td>Povinné</td>
 <td>Produkt <strong>musí být</strong> v počítači nainstalován.</td>
 </tr>
 <tr>
 <td>Zakázáno</td>
 <td>Produkt <strong>nesmí být</strong> v počítači nainstalován.</td>
 </tr>
  </tbody>
 </table>
 Pokud je produkt definován opakovaně v profilu s různými režimy přítomnosti (např. v různých podprofilech), platí vždy režim uvedený na spodním řádku tabulky.  Produkty, které nejsou v profilu uvedeny, jsou implicitně považovány za zakázané, další informace naleznete v části <a href="../../../../../../alvao-asset-management/software-management/software-profiles">Softwarové profily</a>.</li>
	</ul>

</asp:Content>
